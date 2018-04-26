
/*
 * File:DBController.java
 */

package controller;
import dblibrary.project.csci230.*;
import java.util.ArrayList;
import entity.*;

/**
 * Performs all the messy work needed for accessing and modifying the database
 * @author Ian Bush
 * @version April 8, 2018
 */
public class DBController
{
  /** Accessing the database library */
  private UniversityDBLibrary ud;
  
  /**
   * Constructor to create a UniversityDBLibrary object
   */
  public DBController()
  {
    this.ud = new UniversityDBLibrary("cloud9", "csci230");
  }
  
  /**
   * Returns the list of all universities in the database
   * @return ArrayList<University> all of the universities in the system
   */
  public ArrayList<University> getUniversities()
  {
    ArrayList<University> univList = new ArrayList<University>();
    String[][] univEmph = ud.university_getNamesWithEmphases();
    String[][] univ = ud.university_getUniversities();
    University u;
    for(int i = 0; i < univ.length; i++)
    {
       ArrayList<String> uEmph = new ArrayList<String>();
      String uName = univ[i][0];
      for (int x = 0; x < univEmph.length; x++)
      {
        if (uName.equals(univEmph[x][0]))
        {
            uEmph.add(univEmph[x][1]);
        }
      }
      u = new University(uName, univ[i][1], univ[i][2], univ[i][3], new Integer(univ[i][4]).intValue(), 
                         new Integer(univ[i][5]).intValue(), new Integer(univ[i][6]).intValue(), new Integer(univ[i][7]).intValue(), 
                         new Integer(univ[i][8]).intValue(), new Integer(univ[i][9]).intValue(), new Integer(univ[i][10]).intValue(), 
                         new Integer(univ[i][11]).intValue(), new Integer(univ[i][12]).intValue(), new Integer(univ[i][13]).intValue(),
                         new Integer(univ[i][14]).intValue(), new Integer(univ[i][15]).intValue(), uEmph);
     
      univList.add(u);
      
    }
    return univList;
  }
  
  /**
   * Returns a specific university based on the name provided
   * @param univName    the name of the university
   * @return University the university with the matching name
   */
  public University getUniversity(String univName)
  {
    ArrayList<University> list = this.getUniversities();
    for (University u: list)
    {
      if (u.getName().equals(univName))
        return u;
    }
    return null;
  }
  
  /**
   * Returns a list of all users in the database
   * @return ArrayList<Account> all of the users in the system
   */
  public ArrayList<Account> getAccounts()
  {
    ArrayList<Account> accList = new ArrayList<Account>();
    String[][] users = ud.user_getUsers();
    String[][] userSchools = ud.user_getUsernamesWithSavedSchools();
    String[] userInfo;
    
    for  (int i =0; i <users.length; i++)
    {
      userInfo = users[i];
      
      if (userInfo[4].charAt(0) == 'a')
      {
        accList.add(new Admin(userInfo[2], userInfo[3], userInfo[5].charAt(0), userInfo[0], userInfo[1]));
      }
      else if (userInfo[4].charAt(0) == 'u')
      {
        ArrayList<String> userUniv = new ArrayList<String>();
        for (int j = 0; j < userSchools.length; j++)
        {
          if(userSchools[j][0].equals(userInfo[2]))
          {
        	 
              userUniv.add(userSchools[j][1]);
           
          }
        }
        accList.add(new GeneralUser(userInfo[0], userInfo[1], userInfo[5].charAt(0), userInfo[2], userInfo[3], userUniv));
        userUniv = new ArrayList<String>();
      }
      else
      {
        //System.out.println("Error: Invalid user type within the system");
      }
    }
    return accList;
  }
  
  /**
   * Finds the user in the database with the matching username
   * return: the account with the matching username
   * 
   * @param usr the username of the specific user
   * 
   * @return The requested account, or the DummyAccount if the user is not found
   */
  public Account getUser(String usr)
  {
    ArrayList<Account> users = this.getAccounts();
    for (Account u: users)
    {
      if(u.getUsername().equals(usr))
      {
        return u;
      }
    }   
    return getUser("DummyUser");
  }
  
  /**
   * Adds the specified university to the school list of the specified user
   * post: the University will be added to the user's school list
   * @param usr the User whose list will now include the selected university
   * @param univ the University which will be added to the User's school list
   */
  public int addSchoolToUserList(GeneralUser usr, University univ)
  {
    int i = ud.user_saveSchool(usr.getUsername(), univ.getName());
    return i;
  }
  
  /** 
   * Adds a new university to the database
   * post: a new University will be added to the database 
   * 
   * @param univ the University to add to the database
   * @return an int value determining whether the university is unique or not
   */
  public int addNewUniversity(University univ)
  {
    int i = ud.university_addUniversity(univ.getName(), univ.getState(), univ.getLocation(), univ.getControl(), 
                                univ.getStudents(), new Integer(univ.getFemPerc()).doubleValue(), new Integer(univ.getSatV()).doubleValue(), 
                                new Integer(univ.getSatM()).doubleValue(), new Integer(univ.getCost()).doubleValue(), new Integer(univ.getFinAidPerc()).doubleValue(),
                                univ.getApplicants(), new Integer(univ.getAdmitted()).doubleValue(), new Integer(univ.getEnrolled()).doubleValue(), 
                                univ.getAcadScale(), univ.getSocScale(), univ.getQualScale());
    return i;
  }
  /**
   * Adds a new account to the database
   * post: a new Account will add to the database
   * @param acc the account to add to the database
   */
  public int addAccount(Account acc)
  {
    int i = this.ud.user_addUser(acc.getFirstName(), acc.getLastName(), acc.getUsername(), acc.getPassword(), acc.getType());
    return i;
  }
  
  /**
   * Modifies an account
   * @param acc the account to modify
   */
  public int updateAccount(Account acc)
  {
    int i = this.ud.user_editUser(acc.getUsername(), acc.getFirstName(), acc.getLastName(), acc.getPassword(), acc.getType(), acc.getActive());
    return i;
  }
  
  /**
   * Modifies a university
   * @param univ the University to modify
   */
  public int updateUniversity(University univ)
  {
    int i = ud.university_editUniversity(univ.getName(), univ.getState(), univ.getLocation(), univ.getControl(), 
                                 univ.getStudents(), new Integer(univ.getFemPerc()).doubleValue(), new Integer(univ.getSatV()).doubleValue(), 
                                 new Integer(univ.getSatM()).doubleValue(), new Integer(univ.getCost()).doubleValue(), new Integer(univ.getFinAidPerc()).doubleValue(),
                                 univ.getApplicants(), new Integer(univ.getAdmitted()).doubleValue(), new Integer(univ.getEnrolled()).doubleValue(), 
                                 univ.getAcadScale(), univ.getSocScale(), univ.getQualScale());
    return i;
  }
  
  /**
   * removes a school from a user's saved school list
   * @param gu the GeneralUser who wishes to remove a saved school 
   * @param univ University to be removed
   * @return an int value indicating where the removal was successful
   */
  public int removeSchoolFromSavedSchoolList(GeneralUser gu, University univ)
  {
	  
    return ud.user_removeSchool(gu.getUsername(), univ.getName());
  }
  
  /**
   * deletes a university from the database
   * 
   * @param univ the university to delete from the database
   */
  public int deleteUniversity(University univ)
  {
    return ud.university_deleteUniversity(univ.getName());
  }
  
  /**
   * deletes an account from the database
   * @param acc the account to deleted from the databases
   */
  public int deleteAccount(Account acc)
  {
    return ud.user_deleteUser(acc.getUsername());
  }
  
  /**
   * Adds an emphasis to the corresponding university in the database
   * @param univ the university to add the emphasis
   * @param emphasis the emphasis to add
   */
  public int addEmphasis(University univ, String emphasis) 
  {
	return ud.university_addUniversityEmphasis(univ.getName(), emphasis);
  }
  
  /**
   * Deletes an emphasis to the corresponding university in the database
   * @param univ the university to delete the emphasis
   * @param emphasis the emphasis to delete
   * @return an int value indicating whether the emphasis was removed from the specified university
   */
  public int deleteEmphasis(University univ, String emphasis) 
  {
    return ud.university_removeUniversityEmphasis(univ.getName(), emphasis);
  }
}