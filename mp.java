import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/Mypackage")
public class Mypackage extends HttpServlet {
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        System.out.println("username: " + username);
        System.out.println("password: " + password);
        PrintWriter writer = response.getWriter();
        String htmlRespone = "<html>";
        htmlRespone += "<style> h1{text-align:center; margin:180px auto 0px auto; widhth:15en; color:blue; font-family: \"Lucida Console\", Courier, monospace;} ";
        htmlRespone +="h2{font-family: Arial, Helvetica, sans-serif; text-align:center; margin:80px auto 0px auto; widhth:15en;} </style>";
        htmlRespone += "<h1>EASY FLIGHT Servlet Response </h1>";
        htmlRespone += "<h2>Your username is: &nbsp;&nbsp;&nbsp;" + username + "<br/><br/>";
        htmlRespone += "Your password is: &nbsp;&nbsp;&nbsp;" + password + "</h2>";
        htmlRespone += "</html>";
        writer.println(htmlRespone);

    }  }