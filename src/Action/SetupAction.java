package Action;

import Dao.UserDao;
import Entity.User;
import Util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SetupAction extends HttpServlet {
    UserDao udao = new UserDao();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String passwd = req.getParameter("passwd");
        passwd = Md5Util.getMD5String(passwd);
        User u= new User();
        u.setUsername(username);
        u.setMail(email);
        u.setPassword(passwd);
        int f = udao.regist(u);
        if(f!=0)
        {
            resp.addHeader("status", "true");
            req.getRequestDispatcher("/index.jsp").forward(req, resp);
        }else {
            resp.addHeader("status", "false");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }
    }
}
