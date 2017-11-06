package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DB;

//import com.book.dao.DB;
//import com.book.util.MD5;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public login() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*System.out.println("这是登录方法"+request.getParameter("username")+"------"+request.getParameter("password")+"------"+request.getParameter("sex"));
		response.getWriter().append("Served at: ").append(request.getContextPath()).append("这是登录方法"+request.getParameter("username")+"------"+request.getParameter("password")+"------"+request.getParameter("sex"));
		if(request.getParameter("username").equals("admin")  && request.getParameter("password").equals("admin"))
		{
			response.getWriter().append("Served at: ").append("true");
		}
		else
		{
			response.getWriter().append("Served at: ").append("false");
		}
		*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		DB dbq =new DB();
		DB db =new DB();
		try {
			response.setHeader("Content-type","text/html;charset=UTF-8");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			System.out.println("这是登录方法"+username+"------"+password+"------"+request.getParameter("sex"));
			
			String sql = "select * from user where userName = ?";
			
			ResultSet rs = db.executeQuery(sql, username);
			if(rs.next()==false){
				response.getWriter().append("沒有该用戶，請註冊！");
				return ;
			}else{
				String sql1 = "select * from user where userName = ? and password = ?";
				
				ResultSet rs1 = db.executeQuery(sql1,username,password);
				if(rs1.next()==false){
					response.getWriter().append("密码输入错误，请重新输入！");
					return ;
				}				
				HttpSession sess=request.getSession();
				sess.setAttribute("LoginUser", rs1.getString("id"));
				//System.out.println("this is database id:"+rs1.getString("id"));
//				response.getWriter().append("恭喜你登录成功！");
				request.getRequestDispatcher("/index.jsp").forward(request, response);   //跳转到index页面
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("msg", "登录失败"+e.getMessage());
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}finally {
			dbq.close();
			db.close();
		}
	}
	
}
