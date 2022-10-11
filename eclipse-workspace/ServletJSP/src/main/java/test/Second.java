package test;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Second
 */
public class Second extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Second() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); //html문서 형식으로 응답 처리하겠습니다.
		PrintWriter out = response.getWriter(); // html문서 형식을 PrintWriter 객체로 출력하겠다.
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		//여러개의 값을 받겠다
		String hobby[] = request.getParameterValues("hobby");
		String gender = request.getParameter("gender");
		String religion = request.getParameter("religion");
		String intro = request.getParameter("introduction");
		//응답부분
		//html head body 안 쓰고 그냥 쓰면 body에 자동을 들어감
		out.print("<html><head><title>Query 문자열 테스트</title></head>");
		out.print("<body>");
		out.print("<h1>GET 방식으로 요청되었습니다</h1><br/><hr/>");
		out.print("아 이 디 : " + id + "<br>");
		out.print("비밀번호 : " + pwd + "<br>");
		out.print("이   름 : " + name + "<br>");
		for(String h:hobby){
			out.print("취  미 : " + h + "<br>");
		}
		
		out.println("</body></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
