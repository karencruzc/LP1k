package com.ladyshoes.model;

public class Empleado {
	private int id;
	private String nombres;
	private String apellidos;	
	private String sexo;
	private String direccion;
	private String email;
	private int edad;	
	private int horas;
	private double sueldo;
	
	public Empleado() {
		super();
	}

	public Empleado(int idEmpleado, String nombres, String apellidos, String sexo, String direccion, String email,
			int edad, int horas, double sueldo) {
		super();
		this.id= idEmpleado;
		this.nombres = nombres;
		this.apellidos = apellidos;
		this.sexo = sexo;
		this.direccion = direccion;
		this.email = email;
		this.edad = edad;
		this.horas = horas;
		this.sueldo = sueldo;
	}

	public int getIdEmpleado() {
		return id;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.id = idEmpleado;
	}

	public String getNombres() {
		return nombres;
	}

	public void setNombres(String nombres) {
		this.nombres = nombres;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getDireccion() {
		return direccion;
	}
	
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getEdad() {
		return edad;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}

	public int getHoras() {
		return horas;
	}

	public void setHoras(int horas) {
		this.horas = horas;
	}

	public double getSueldo() {
		return sueldo;
	}

	public void setSueldo(double sueldo) {
		this.sueldo = sueldo;
	}
	
		
}
