package com.nttdata.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * NTTDATA CENTERS - JDBC
 * 
 * @author PABLO ALVAREZ
 *
 */
public class App {

	/**
	 * Main metodo
	 * 
	 * @param args
	 */
	public static void main(String[] args) {

		// Método para establecer conexión a la base de datos MySQL.
		conexionSQL();
	}

	private static void conexionSQL() {

		try {

			// Conexión a BBDD con driver MYSQL.
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Activando conexión con URL / Usuario / Contraseña.
			Connection conexionSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/nttdata_jdbc_ex", "root", "rootroot");

			// Proceso de consulta
			Statement consulta = conexionSQL.createStatement();
			String query = "SELECT sp.name AS playerName, st.name AS teamName, sp.first_rol AS rol1, sp.second_rol AS rol2, sp.birth_date AS birthD FROM nttdata_mysql_soccer_player sp JOIN nttdata_mysql_soccer_team st ON sp.id_soccer_team = st.id_soccer_team";
			ResultSet resultadoQuery = consulta.executeQuery(query);

			// Resultados.
			StringBuilder infoJugador = new StringBuilder();
			while (resultadoQuery.next()) {

				infoJugador.append("Nombre: ");
				infoJugador.append(resultadoQuery.getString("playerName"));

				infoJugador.append(" | Equipo: ");
				infoJugador.append(resultadoQuery.getString("teamName"));

				infoJugador.append(" | Demarcación: ");
				infoJugador.append(resultadoQuery.getString("rol1"));

				infoJugador.append(" | Demarcación alternativa: ");
				infoJugador.append(resultadoQuery.getString("rol2"));

				infoJugador.append(" | Fecha nacimiento: ");
				infoJugador.append(resultadoQuery.getDate("birthD"));

				infoJugador.append("\n");
			}

			System.out.println(infoJugador.toString());

			// Desactivada la conexión con BBDD.
			conexionSQL.close();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

	}
}
