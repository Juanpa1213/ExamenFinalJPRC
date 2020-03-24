package fifa;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Conector {
	/** 
	 * Atributos de clase 
	 */
	private static Connection con;
	private static Conector INSTANCE = null;
	
	/**
	 * Constructor
	 */
	private Conector(){ 
		
	}
	
	/**
	 * Crear instancia 
	 */
	
	private synchronized static void crearInstancia() {
		if(INSTANCE == null) {
			INSTANCE = new Conector();
			crearConexion();
		}
	}
	
	/**
	 * Obtener instancia
	 */
	
	public static Conector getInstancia() {
		if (INSTANCE == null ) {
			crearInstancia(); 
		}
		return INSTANCE;	
	}

	/** 
	 * Crear Conexion 
	 */
	private static void crearConexion() {
		String host = "127.0.0.1";
		String user = "JP";
		String password = "Password123";//Poner su password
		String dataBase = "fifa";
		try {
			// Importando la libreria de conexion de mysql
			Class.forName("com.mysql.jdbc.Driver");
			// Url de conexion
			String urlConexion = "jdbc:mysql://"+host+"/"+dataBase+"?user="+user+"&password="+password;
			con = DriverManager.getConnection(urlConexion);
			System.out.println("Conexión Completada");
			
		}catch (Exception e) {
			System.out.println("Error al conectar a la base de datos");
		}
	}
	
	public ArrayList<String> getPenalties() throws SQLException{
		ArrayList<String> listaPenalties=new ArrayList<String>();
		PreparedStatement ps =con.prepareStatement(
				"select player_name, penalties\r\n" + 
				"from personal_details \r\n" + 
				"inner join player_stats on personal_details.player_id = player_stats.player_id and penalties > 10 ;");
		ResultSet rs= ps.executeQuery();
		while(rs.next()){
			listaPenalties.add(rs.getString("player_name")+ " = " + rs.getString("penalties"));
		}
		rs.close();
		return listaPenalties;
	}
	
	
	public ArrayList<String> getNombreFuerza() throws SQLException{
		ArrayList<String> listaNombreFuerza = new ArrayList<String>();
		PreparedStatement ps =con.prepareStatement(
				"select player_name, strength\r\n" + 
				"from personal_details \r\n" + 
				"inner join player_stats on personal_details.player_id = player_stats.player_id \r\n" + 
				"where player_name like '%l%' ;");
		ResultSet rs= ps.executeQuery();
		while(rs.next()){
			listaNombreFuerza.add(rs.getString("player_name")+ " =  " +  rs.getString("strength"));
			
		}
		rs.close();
		return listaNombreFuerza;
	}
	
	
	
	
	public ArrayList<String> getMediaPasesCortos() throws SQLException {
		ArrayList<String> listaMedia = new ArrayList<String>();
		PreparedStatement ps = (PreparedStatement) 
				con.prepareStatement("select avg(short_pass) as PaseCortoPromedio\r\n" + 
						"from player_stats  \r\n" + 
						"inner join personal_details on personal_details.player_id = player_stats.player_id \r\n" + 
						"where age > 25 ; ");
		ResultSet rs = ps.executeQuery();
	
		while(rs.next()) {
			listaMedia.add(rs.getString("PaseCortoPromedio"));
			
		}
		rs.close();
		return listaMedia;
	}
	
	

	 
}

