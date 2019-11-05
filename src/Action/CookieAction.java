package Action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieAction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookieAction() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1 获得用户名
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");

        // 判断remeber是否勾选
        if (remember != null && remember.equals("yes")) {
            //新建cookie
            Cookie cookie1 = new Cookie("username", name);
            Cookie cookie2 = new Cookie("password",password);
            // "yes" 勾选了 ==>  设置有效时间为 一周
            cookie1.setMaxAge(60*60*24*7);
            cookie2.setMaxAge(60*60*24*7);
            response.addCookie(cookie1);
            response.addCookie(cookie2);
        }
        response.sendRedirect("index.jsp");
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
