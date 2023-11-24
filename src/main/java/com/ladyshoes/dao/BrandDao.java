package com.ladyshoes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.ladyshoes.model.Brand;

public class BrandDao {
	
	private String connectionString = "jdbc:mysql://localhost:3306/ladyshoes_db?useSSL=false&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	
	public int registerBrand(Brand brand) throws ClassNotFoundException {
		String INSERT_MARCA_SQL = "INSERT INTO marca" + 
				" (nombre, descripcion, estado) VALUES " +
				" (?, ?, ?);";
		
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection = DriverManager
			.getConnection(connectionString, "root", "123456");
				
			PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MARCA_SQL)) {			
			preparedStatement.setString(1, brand.getName());
			preparedStatement.setString(2, brand.getDescription());
			preparedStatement.setString(3, brand.getState());
			
			System.out.println(preparedStatement);
			
			result = preparedStatement.executeUpdate();
							
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return result;
	}
	
	public List<Brand> getListBrand() throws ClassNotFoundException {
		List<Brand> brands = new ArrayList<>();
		String LISTA_MARCAS_SQL = "SELECT * FROM marca;"; 
						
		int result = 0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try (Connection connection = DriverManager
			.getConnection(connectionString, "root", "123456");
				
			PreparedStatement preparedStatement = connection.prepareStatement(LISTA_MARCAS_SQL)) {
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("nombre");
				String description = rs.getString("descripcion");
				String state = rs.getString("estado");
				brands.add(new Brand(id, name, description, state));
			}					
		
							
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return brands;
	}

}
