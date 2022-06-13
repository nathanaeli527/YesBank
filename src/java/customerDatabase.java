import java.sql.Connection;
import java.sql.PreparedStatement;

public class customerDatabase {
 
	Connection con;
	public customerDatabase(Connection con)
	{
	  this.con = con;
	}
	public boolean Saveuser(user u)
	{   
		boolean set = false;
		
	    try
		{
	    	String query  = "insert into customer(id,cardnumber,email,password) values (NULL,?,?,?)";
	    	PreparedStatement pst = con.prepareStatement(query);
	    	pst.setString(1, u.getCardnumber());
	        pst.setString(2, u.getEmail());
	        pst.setString(3, u.getPassword());
	        pst.executeUpdate();
	        set = true;
		}
	    
	    catch(Exception e)
	    {
	    	e.getStackTrace();
	    }
	    return set;
	}	
}
