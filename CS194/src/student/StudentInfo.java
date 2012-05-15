package student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentInfo {
	String studentname;
	String advisorname;
	int studentID;
	String email;
	int gradyear;
	String gradmonth;
	String concentration;
    int mathunits;
    int scienceunits;
    int engifundunits;
    int engidepthunits;
    int eedegreeunits;
    
    private static final String url = "jdbc:mysql://localhost:3306/"; 
	private static final String dbName = "test";
	//private static final String driver = "com.mysql.jdbc.Driver";
	private static final String userName = "root";
	private static final String password = "";	
	private Connection con;
	
	public StudentInfo() {
		try {
			Class.forName("com.mysql.jdbc.Driver");			
			con = DriverManager.getConnection(url+dbName,userName,password);
		}
		catch (SQLException e) {
			e.printStackTrace();
		} 
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} 
	}
	
	public void saveStudentname (String value)
	{
		try {
			Statement stmt = con.createStatement();
			stmt.executeQuery("USE " + dbName ); 
			ResultSet rs = stmt.executeQuery("SELECT * FROM student_info WHERE name = admin");
			//rs.first();
			System.out.print(rs.getString("advisor"));
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Was not able to get profile");
		}
	}

    public void setStudentname( String value )
    {
        studentname = value;
    }
    
    public void setAdvisorname( String value )
    {
        advisorname = value;
    }

    public void setStudentID( int value )
    {
        studentID = value;
    }

    public void setEmail( String value )
    {
        email = value;
    }
    
    public void setGradyear( int value )
    {
        gradyear = value;
    }   
    
    public void setGradmonth( String value )
    {
        gradmonth = value;
    }
    
    public void setConcentration( String value)
    {
    	concentration = value;
    }
    
    public void setMathunits( int value )
    {
        gradyear = value;
    }   
    
    public void setScienceunits( int value )
    {
        gradyear = value;
    }   
    
    public void setEngifundunits( int value )
    {
        engifundunits = value;
    }   
    
    public void setEngidepthunits( int value )
    {
        engidepthunits = value;
    }   
    
    public void setEEdegreeunits( int value )
    {
        eedegreeunits = value;
    }   


    public String getStudentname() { return studentname; }

    public int getGradyear() { return gradyear; }

	public String getGradmonth() { return gradmonth; }

	public String getConcentration() { return concentration; }

	public int getEedegreeunits() { return eedegreeunits; }

	public String getAdvisorname() { return advisorname; }

	public int getStudentID() { return studentID; }

	public int getMathunits() { return mathunits; }
	
	public int getScienceunits() { return scienceunits; }

	public int getEngifundunits() { return engifundunits; }

	public int getEngidepthunits() { return engidepthunits; }

	public String getEmail() { return email; }

}
