package mypack;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class AccountDao {
	static Properties prop=new Properties();
	public static Connection getConnection() {
		Connection con=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","tiger");
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	public static int save(Account ac) {
		
		int status=0;
		try {
			File src=new File("./Config/Config.properties");
			FileInputStream fis=new FileInputStream(src);
			prop.load(fis);
			String var=prop.getProperty("State");
			String var1=prop.getProperty("Name");
			String var2=prop.getProperty("EmailAddress");
			String var3=prop.getProperty("Mobile");
			String var4=prop.getProperty("Password");
			String var5=prop.getProperty("RePassword");
			String var6=prop.getProperty("Question");
			String var7=prop.getProperty("Answer");
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("insert into demo(Customer_Id,State,Name,EmailAddress,Mobile,Password,RePassword,Question,Answer) values (Customer_Id.nextval,'"+var+"','"+var1+"','"+var2+"','"+var3+"','"+var4+"','"+var5+"','"+var6+"','"+var7+"') ");
			ps.setInt(1, ac.getCustomerId());
			ps.setString(2, ac.getState());
			ps.setString(3, ac.getName());
			ps.setString(4, ac.getEmailAddress());
			ps.setString(5, ac.getMobile());
			ps.setString(6, ac.getPassword());
			ps.setString(7, ac.getRePassword());
			ps.setString(8, ac.getQuestion());
			ps.setString(9, ac.getAnswer());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int update(Account ac) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update demo set State=?,Name=?,EmailAddress=?,Mobile=?,Password=?,RePassword=?,Question=?,Answer=? where Customer_Id=?");
			ps.setInt(1, ac.getCustomerId());
			ps.setString(2, ac.getState());
			ps.setString(3, ac.getName());
			ps.setString(4, ac.getEmailAddress());
			ps.setString(5, ac.getMobile());
			ps.setString(6, ac.getPassword());
			ps.setString(7, ac.getRePassword());
			ps.setString(8, ac.getQuestion());
			ps.setString(9, ac.getAnswer());
			status=ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int delete(Account ac) {
		int status=0;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from demo where Customer_Id=?");
			ps.setInt(1, ac.getCustomerId());
			status=ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static List<Account> getAllRecords(){
		List<Account> lst=new ArrayList<Account>();
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from demo");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Account ac=new Account();
				ac.setCustomerId(rs.getInt("Customer_Id"));
				ac.setState(rs.getString("State"));
				ac.setName(rs.getString("Name"));
				ac.setEmailAddress(rs.getString("EmailAddress"));
				ac.setMobile(rs.getString("Mobile"));
				ac.setPassword(rs.getString("Password"));
				ac.setRePassword(rs.getString("RePassword"));
				ac.setQuestion(rs.getString("Question"));
				ac.setAnswer(rs.getString("Answer"));
				lst.add(ac);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return lst;
	}
	public static Account getRecordByCustomerID(int CustomerId) {
		Account ac=null;
		try {
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from demo where CustomerId=?");
			ps.setInt(1, CustomerId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ac=new Account();
				ac.setCustomerId(rs.getInt("Customer_Id"));
				ac.setState(rs.getString("State"));
				ac.setName(rs.getString("Name"));
				ac.setEmailAddress(rs.getString("EmailAddress"));
				ac.setMobile(rs.getString("Mobile"));
				ac.setPassword(rs.getString("Password"));
				ac.setRePassword(rs.getString("RePassword"));
				ac.setQuestion(rs.getString("Question"));
				ac.setAnswer(rs.getString("Answer"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return ac;
		
	}
}
