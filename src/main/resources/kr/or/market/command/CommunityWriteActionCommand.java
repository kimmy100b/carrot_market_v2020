package kr.or.market.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.market.dto.CommunityDTO;
import kr.or.market.dao.CommunityDAO;

@WebServlet("/CommunityWrite")
public class CommunityWriteActionCommand extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		req.setCharacterEncoding("UTF-8");

		String user = req.getParameter("user");
		String title = req.getParameter("title");
		String content = req.getParameter("content");

		CommunityDTO comDto = new CommunityDTO(user, title, content);

		CommunityDAO comDao = new CommunityDAO();
		int result = comDao.write(user, title, content);

		if (result == 1) {
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			writer.println("<script>alert('등록되었습니다.'); location.href='./community';</script>");
			writer.close();
		}
	}

}
