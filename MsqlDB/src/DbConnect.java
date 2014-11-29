import java.sql.*;				//Lets us do java+Sql


public class DbConnect {

	private Connection con;		//Reserves place for connection with the database.
	private Statement st;		//Reserves place for statements to the database.
	private ResultSet rs;		//Reserves place for results from the database.
	private String DB_ADDRESS = "jdbc:mysql://localhost:3306/natures_creatures";
	
	public DbConnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver"); //Driver loaded
			
			con = DriverManager.getConnection(DB_ADDRESS, "root", ""); //OMG YAY A NAME
			st = con.createStatement();														//Also port 3306 is where server runs.
			
			
			
		}catch(Exception ex){
			System.out.println("Error: " +ex);
		}
	}

	public void getData(){
		try{
			String query = "select * from bioclass";
			rs = st.executeQuery(query);
			System.out.println("Records from Database");
			while(rs.next()){ // while set has records
				String species = rs.getString("Species"); // name of column in database
				String genus = rs.getString("Genus");	//Because the whole record is in rs, need specifics.
				System.out.println("Name: \t"+genus+" "+species);
			
			}
			
		}catch(Exception ex){ 
			System.out.println(ex);
		}
		}
}
