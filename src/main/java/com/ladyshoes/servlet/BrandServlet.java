package com.ladyshoes.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ladyshoes.dao.BrandDao;
import com.ladyshoes.model.Brand;

/**
 * Servlet implementation class BrandServlet
 */
@WebServlet("/registerBrand")
public class BrandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BrandDao brandDao = new BrandDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BrandServlet() {
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
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String state = request.getParameter("state");
		
		Brand brand = new Brand();
		brand.setName(name);
		brand.setDescription(description);
		brand.setState(state);
		
		try {
			brandDao.registerBrand(brand);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("ListadoMarcas.jsp");
	}

}
