package controller;
import java.util.ArrayList;
import java.util.Scanner;
import entity.*;

/**
 * Controls functions for the general user 
 * @author Will Haanen
 * @version March 19, 2018
 */

public class UserFuncController
{
  private DBController db = new DBController();
  private SearchController sc = new SearchController();;
  private GeneralUser gu;
  
  public UserFuncController(String username) {
	  gu = (GeneralUser) db.getUser(username);
  }
  /**
   * Creates a UserFuncController for the given user 
   * 
   * @param newUser The user that the userFuncController will control
   */
  public UserFuncController(GeneralUser newUser)
  {
    gu = newUser;
    db = new DBController();
    sc = new SearchController();
  }
  /**
   * Gets the list of saved schools for a specific general user
   * 
   * @return The list of saved schools
   */
  public ArrayList<String> getSavedSchools()
  {
    return gu.getSavedSchools();
  }
  
  public University getUniversity(String univ) throws NullPointerException {
		return db.getUniversity(univ);
  }
  
  public GeneralUser getCurrentGeneralUser() {
	  return (GeneralUser)db.getUser(gu.getUsername());
  }
  
  /**GeneralUser
   * Adds a school to the users saved school list
   * 
   * @param university the school to be added to the list
   */
  public void saveToSavedSchoolList(University university)
  {
    db.addSchoolToUserList(gu, university);
    gu = (GeneralUser)db.getUser(gu.getUsername());
  }
  
  /**
   * Removes a specific university from the users saved schools list
   *  j
   * @param university the school to be removed from the list
   */
  public void removeSavedSchool(University university)
  {
    db.removeSchoolFromSavedSchoolList(gu, university);
  }
  
  /**
   * Saves changes made to a profile by a user
   * 
   * @param password users password
   * @param firstName users first name
   * @param lastName users last name
   */
//  public void submitProfileChanges( String firstName, String lastName,String password)
//  {
//    gu.setPassword(password);
//    gu.setFirstName(firstName);
//    gu.setLastName(lastName);
//    db.updateAccount(gu); 
//  }
  
  /**
   * Update the controlled user if changes were made to the account
   * 
   * @param newUser The updated user object
   */
  public void updateUser(GeneralUser newUser)
  {
   gu = newUser;
  }
  
  /**
   * Takes a string and prints it, and prompts user to enter another String
   * @param ss       a string that will be printed 
   * @return String  a new string the User entered
   */
  public String strIn(String ss){
	  Scanner scan = new Scanner(System.in);  
	  System.out.print(ss);
	    String re= scan.next();
	  
	    return re;
	  }
  
  public int intIn(String ss){
	  Scanner scan = new Scanner(System.in);  
	    System.out.print(ss);
	    int re= scan.nextInt();
	   
	    return re;
	  }
  
  /**
   * Takes the edit file command and redirect the user to the edit page
   */

  public int editProfile(GeneralUser account, String firstName, String lastName, String password)
  {
		if (firstName == "") {
			return -1;
		}
		account.setFirstName(firstName);

		if (lastName == "") {
			return -2;
		}
		account.setLastName(lastName);

		if (password == "" || password.contains(" ")) {
			return -3;
		}
		account.setPassword(password);


		db.updateAccount(account);
		return 0;
	}
}