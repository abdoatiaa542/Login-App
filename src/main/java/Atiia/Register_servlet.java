package Atiia;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/Register_servlet")
public class Register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String a = request.getParameter("username");
		String b = request.getParameter("password");

		try {
			Connection conc = DbConnection.connectToDb();
			PreparedStatement ps = conc.prepareStatement("insert into login values (? , ?)");

			ps.setString(1, a);
			ps.setString(2, b);
			boolean res = ps.execute(); // return false always

			request.setAttribute("catogery", "Registered");
			RequestDispatcher rd = request.getRequestDispatcher("Welcom.jsp");
			rd.forward(request, response);

		} catch (ClassNotFoundException e) {
			whenExceptionHappend(request, response);
		} catch (SQLException e) {
			whenExceptionHappend(request, response);
		}

	}

	void whenExceptionHappend(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("type", "Register");
		request.setAttribute("message", "This username is already exists");
		RequestDispatcher rd = request.getRequestDispatcher("Error_View.jsp");
		rd.forward(request, response);

	}

}
