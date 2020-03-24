package fifa;

import java.sql.SQLException;
import java.util.ArrayList;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Conector instancia = Conector.getInstancia();

		// Mostrar los jugadores con mas de 10 penalties.
		try {
			ArrayList<String> listNombres = instancia.getPenalties();
			System.out.println("\n---------------------------");
			System.out.println("--Nombre Jugador/Penalties-- ");
			for (String nombres : listNombres)
				System.out.println(nombres);
			System.out.println("-----------------------------");
		} catch (SQLException e) {
			e.printStackTrace();
		}

		// -- Mostrar el nombre y fuerza de los jugadores que tenga al menos una L en su nombre

		try {
			ArrayList<String> listaNombreFuerza = instancia.getNombreFuerza();
			System.out.println("\n-------------------------------");
			System.out.println("\nNombre/Fuerza");
			for (String nombres : listaNombreFuerza)
				System.out.println(nombres);
			System.out.println("\n------------------------------");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//-- Obtener el promedio de short pass de los jugadores mayores a 25 años
				try {
					ArrayList<String> listaMedia = instancia.getMediaPasesCortos();
					System.out.println("\n-------------------------------");
					System.out.println("\nMedia de Pases Cortos");
					for (String nombres : listaMedia)
						System.out.println(nombres);
					System.out.println("\n------------------------------");
				} catch (SQLException e) {
					e.printStackTrace();
				}
	}

}