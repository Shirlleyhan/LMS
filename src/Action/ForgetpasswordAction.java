package Action;
import Util.MailUtil;
import Dao.UserDao;
import Entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class ForgetpasswordAction  extends HttpServlet {
    UserDao dao = new UserDao();
    MailUtil mailutil = new MailUtil();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username");
        String mail = req.getParameter("mail");

        User user = new User();
        user.setUsername(username);
        user.setMail(mail);
        String pwd = dao.sendmail(user);
        user.setPassword(pwd);

        if(pwd!=null)
        {
            try {
                mailutil.send(user);
            } catch (Exception e) {
                e.printStackTrace();
            }
            resp.addHeader("status", "true");
            req.getRequestDispatcher("/forgetpassword.jsp").forward(req, resp);
        }else{
            resp.addHeader("status", "false");
            req.getRequestDispatcher("/forgetpassword.jsp").forward(req, resp);
        }
    }
}
