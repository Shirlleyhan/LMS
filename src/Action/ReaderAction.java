package Action;

import Dao.IODao;
import Dao.ReaderDao;
import Entity.Log;
import Entity.Reader;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


public class ReaderAction extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=utf-8");
        if (action.equals("QueryReaderById")) {
            this.QueryReaderById(request, response);
        } else if (action.equals("GetBorrowListById")) {
            this.GetBorrowListById(request, response);
        } else if (action.equals("GetAllReader")) {
            this.GetAllReader(request, response);
        } else if (action.equals("SetBlackList")) {
            this.SetBlackList(request, response);
        } else if ("AddReader".equals(action)) {
            this.addReader(request, response);
        } else if ("AddLoss".equals(action)) {
            this.addLoss(request, response);
        } else if ("DeleteReader".equals(action)) {
            this.deleteReader(request, response);
        } else if ("updateInfo".equals(action)) {
            this.updateInfo(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    public void QueryReaderById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String readerid = request.getParameter("readerid");
        ReaderDao readerDao = new ReaderDao();
        Reader reader = readerDao.QueryReaderById(readerid);
        String stauts = (reader.getStatus() == 1) ? "正常" : "异常";
        String callback = reader.getName() + "||" + reader.getGrade() + "年级" + reader.getClassnum() + "班||" + stauts + "||" + reader.getBorrow();
        PrintWriter out = response.getWriter();
        out.write(callback);
    }

    public void GetBorrowListById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("readerid");
        IODao ioDao = new IODao();
        ArrayList<Log> loglist = ioDao.QueryBorrowNumByReaderid(id);
        HttpSession session = request.getSession();
        session.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/borrowlist.jsp").forward(request, response);
    }

    public void GetAllReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ReaderDao readerDao = new ReaderDao();
        ArrayList<Reader> readerlist = readerDao.GetAllReader();
        HttpSession session = request.getSession();
        session.setAttribute("readerlist", readerlist);
        request.getRequestDispatcher("/ReaderList.jsp").forward(request, response);
    }

    public void SetBlackList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("id");
        String edit = request.getParameter("edit");
        ReaderDao readerDao = new ReaderDao();
        if (edit.equals("设置为正常")) {
            readerDao.SetBlackList(username, true);
        } else {
            readerDao.SetBlackList(username, false);
        }
        this.GetAllReader(request, response);
    }

    public void addReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String str2 = request.getCharacterEncoding();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
        String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"UTF-8");
        int status = 0;
        String mail = request.getParameter("mail");
        int grade = Integer.parseInt(request.getParameter("grade"));
        String tel = request.getParameter("tel");
        int classnum = Integer.parseInt(request.getParameter("classnum"));

        Reader reader = new Reader(username, password, name, sex, status, mail, grade, tel, classnum);

        ReaderDao readerDao = new ReaderDao();
        readerDao.insertReader(reader);

        HttpSession session = request.getSession();
        session.setAttribute("msg", 1);
        response.sendRedirect("/library/AddReader.jsp");
    }

    public void addLoss(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        ReaderDao readerDao = new ReaderDao();
        readerDao.updataLoss(username);

        HttpSession session = request.getSession();
        session.setAttribute("msg", "1");

        ArrayList<Reader> readerlist = readerDao.GetAllReader();
        session = request.getSession();
        session.setAttribute("readerlist", readerlist);
        response.sendRedirect("/library/ReaderList.jsp");
    }

    public void deleteReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        ReaderDao readerDao = new ReaderDao();
        readerDao.deleteReader(username);

        HttpSession session = request.getSession();
        session.setAttribute("msg", "2");

        ArrayList<Reader> readerlist = readerDao.GetAllReader();
        session = request.getSession();
        session.setAttribute("readerlist", readerlist);
        response.sendRedirect("/library/ReaderList.jsp");
    }

    public void updateInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String mail = request.getParameter("mail");
        int grade = Integer.parseInt(request.getParameter("grade"));
        String tel = request.getParameter("tel");
        int classnum = Integer.parseInt(request.getParameter("classnum"));

        Reader reader = new Reader(username, null, name, sex, -2, mail, grade, tel, classnum);

        ReaderDao readerDao = new ReaderDao();
        readerDao.updateInfo(reader);

        HttpSession session = request.getSession();
        session.setAttribute("msg", "3");

        ArrayList<Reader> readerlist = readerDao.GetAllReader();
        session = request.getSession();
        session.setAttribute("readerlist", readerlist);
        response.sendRedirect("/library/ReaderList.jsp");
    }
}
