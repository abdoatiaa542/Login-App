package Atiia;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * upload >> git isa
 */

@WebServlet("/My_Servlet")
public class My_Servlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String a = request.getParameter("username");
		String b = request.getParameter("password");

		try {
			Connection conc = DbConnection.connectToDb();
			PreparedStatement ps = conc.prepareStatement("select username from login  where username=? and password=?");
			ps.setString(1, a);
			ps.setString(2, b);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				request.setAttribute("catogery", "Login");
				RequestDispatcher rd = request.getRequestDispatcher("Welcom.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("type", "Login");
				request.setAttribute("message", " username or password isn't correct ! ");
				RequestDispatcher rd = request.getRequestDispatcher("Error_View.jsp");
				rd.forward(request, response);
			}

		} catch (ClassNotFoundException e) {
			e.getMessage();
		} catch (SQLException e) {
			e.getMessage();
		}

	}

}
