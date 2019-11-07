package Action;

import Dao.UserDao;
import Entity.User;
import Util.Md5Util;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
public class LoginAction extends HttpServlet {
    UserDao udao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals("login")) {
            this.login(request, response);
        }
        else if(action.equals("logout")){
            this.logout(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String username = null;
            String password = null;
            String remember = null;
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            username = request.getParameter("username");
            password = request.getParameter("password");
            remember = request.getParameter("remember");

            String tempPwd = password;
            password = Md5Util.getMD5String(password);

            if (remember == null) {
                System.out.println("T");
            }
            System.out.println("A" + remember);
        System.out.println("b" + username);
        System.out.println("c" + password);

        User user = new User();
            user.setUsername(username);
            user.setPassword(password);

            if (remember != null && remember.equals("yes")) {
                //新建cookie
                Cookie cookie1 = new Cookie("username",username);
                Cookie cookie2 = new Cookie("password",tempPwd);
                // "yes" 勾选了 ==>  设置有效时间为 一周
                cookie1.setMaxAge(60*60*24*7);
                cookie2.setMaxAge(60*60*24*7);
                response.addCookie(cookie1);
                response.addCookie(cookie2);
            }

            String result = udao.login(user);
            if(result.equals("true")){
                session.setAttribute("adminname", user.getUsername());
                response.sendRedirect("/library/main.jsp");
            }
            else{
                out.write(result);
            }
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(1);
        session.setAttribute("logout", "1");
        response.sendRedirect("/library/index.jsp");
    }

}