package com.ladyshoes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.ladyshoes.model.Empleado;

public class EmpleadoDao {
private String connectionString = "jdbc:mysql://localhost:3306/ladyshoes_db?useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	
	public int registerEmpleado(Empleado empleado) throws ClassNotFoundException {
		String INSERT_EMPLEADO_SQL = "INSERT INTO empleado" + 
				" (nombres, apellidos, sexo, direccion, email, edad, horas, sueldo) VALUES " +
				" (?, ?, ?, ?, ?, ?, ?, ?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection = DriverManager
			.getConnection(connectionString, "root", "123456");
				
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EMPLEADO_SQL)) {			
			preparedStatement.setString(1, empleado.getNombres());
			preparedStatement.setString(2, empleado.getApellidos());
			preparedStatement.setString(3, empleado.getSexo());
			preparedStatement.setString(4, empleado.getDireccion());
			preparedStatement.setString(5, empleado.getEmail());
			preparedStatement.setInt(6, empleado.getEdad());
			preparedStatement.setInt(7, empleado.getHoras());
			preparedStatement.setDouble(8, empleado.getSueldo());			
			
			
			System.out.println(preparedStatement);
			
			result = preparedStatement.executeUpdate();
							
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	
	public List<Empleado> getListEmpleado() throws ClassNotFoundException {
		List<Empleado> empleados = new ArrayList<>();
		String LISTA_EMPLEADO_SQL = "SELECT * FROM empleado;"; 
						
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection = DriverManager
			.getConnection(connectionString, "root", "123456");
				
			PreparedStatement preparedStatement = connection.prepareStatement(LISTA_EMPLEADO_SQL)) {
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String nombres = rs.getString("nombres");
				String apellidos = rs.getString("apellidos");
				String sexo = rs.getString("sexo");
				String direccion = rs.getString("direccion");
				String email = rs.getString("email");
				int edad = rs.getInt("edad");
				int horas = rs.getInt("horas");
				double sueldo = rs.getDouble("sueldo");
				
				empleados.add(new Empleado(id, nombres, apellidos, sexo, direccion, email, edad, horas, sueldo));
			}					
		
							
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return empleados;
	}

}
