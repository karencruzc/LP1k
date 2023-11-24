package com.ladyshoes.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ladyshoes.dao.EmpleadoDao;
import com.ladyshoes.model.Empleado;

/**
 * Servlet implementation class EmpleadoServlet
 */
@WebServlet("/registerEmpleado")
public class EmpleadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EmpleadoDao empleadoDao = new EmpleadoDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmpleadoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String nombres = request.getParameter("nombres");
		String apellidos = request.getParameter("apellidos");
		String sexo = request.getParameter("sexo");
		String direccion = request.getParameter("direccion");
		String email = request.getParameter("email");
		int edad = Integer.parseInt(request.getParameter("edad"));
		int horas = Integer.parseInt(request.getParameter("horas"));
		double sueldo = Double.parseDouble(request.getParameter("sueldo"));
		
		
		Empleado empleado = new Empleado();
		empleado.setNombres(nombres);
		empleado.setApellidos(apellidos);
		empleado.setSexo(sexo);
		empleado.setDireccion(direccion);
		empleado.setEmail(email);
		empleado.setEdad(edad);
		empleado.setHoras(horas);
		empleado.setSueldo(sueldo);
		
		try {
			empleadoDao.registerEmpleado(empleado);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("ListadoEmpleados.jsp");
	}
	

}
