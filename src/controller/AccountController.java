/** 
 * File: AccountController.java
 */
package controller;

import entity.*;
//import interfaces.*;

/**
 * AccountController is a class that is controlled by AccountInterface The
 * purpose of this class is to validate the login information when a GeneralUser
 * or Admin logs in.
 * 
 *
 * @author Nimco Hussein
 * @version April 10th 2018
 */
public class AccountController {
	/** an Account object that stores account information */
	private Account account;

	/** an Account object that stores account information */
	public boolean loginStatus;

	
	public AccountController() {
		loginStatus = false;
	}
	/**
	 * Log in method takes username and password and return true or false, if the
	 * information belongs to an account If the credentials that are added are
	 * verified, then based on the type a GeneralUser or Admin object will be
	 * created
	 * 
	 * @param username    the entered username of user attempting to login
	 *           
	 * @param password    the entered password of user attempting to login
	 *            
	 * 
	 * @throws IllegalArgumentException    if input is empty
	 *             
	 * 
	 * @return boolean          true if user was logged in, false if they were not
	 */
	public int login(String username, String password) {
		// find a user in the database
		DBController db = new DBController();
		Account matchedUser = db.getUser(username);
		
		// fields are empty
		if (username.equals("") || password.equals("")) {
			return 3;
		}
		// both filled, user does not exist
		else if (matchedUser.getUsername().equals("DummyUser")) {
			return 4;
		}
		// both filled, password incorrect
		else if (!matchedUser.getPassword().equals(password) && matchedUser.getUsername().equals(username)) {
			return 5;
		}
		// user is deactivated
		else if (matchedUser.getActive() == 'N') {
			return 6;
		}
		
		// user's username is incorrect
		else if (!matchedUser.getUsername().equals(username) && matchedUser.getPassword().equals(password)) {
			return 7;
		}
		// works; both match and user is active
		else{
			this.account = matchedUser;
			char actualtype = account.getType();
			this.loginStatus = true;
			if (actualtype == 'a') {
				return 1;
			}
			else if (actualtype == 'u') {
				return 2;
			}
			else {
				throw new IllegalArgumentException();
			}
		}
	}

	/**
	 * The logout method will set their account login status to false.
	 * 
	 * @return boolean true if the user was logged out, false if not
	 */
	public boolean logout() {
		if (this.loginStatus == true) {

			this.loginStatus = false;
			return true;
		}
		return false;

	}

}