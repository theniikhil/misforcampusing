package Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("login")!=null)
		{
			String uid=request.getParameter("uid");
			String pwd=request.getParameter("pwd");
			if(uid.equals("nsec")&& pwd.equals("jee"))
			{
				HttpSession session=request.getSession();
				session.setAttribute("uid",uid);
				RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
				rd.forward(request,response);
			}
			else
			{
				request.setAttribute("msg","User ID OR PWD INVALID");
				
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request,response);
				
				
				
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
