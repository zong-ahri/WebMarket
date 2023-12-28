package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		if (command.equals("/BoardListAction.do")) { 
			//등록된 글 목록 페이지 출력하기
			requestBoardList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
			rd.forward(request, response);
		} else if (command.equals("/BoardWriterForm.do")) { 
			//글 등록 페이지 출력
			requestLoginName(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/writeForm.jsp");
			rd.forward(request, response);
		} else if (command.equals("/BoardWriteAction.do")) {
			requestBoardWrite(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} else if (command.equals("/BoardViewAction.do")) {
			//선택된 글 상자 페이지 가져오기
			requestBoardView(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardView.do");
			rd.forward(request, response);
		} else if (command.equals("BoardView.do")) {
			//글 상세 페이지 출력하기
			RequestDispatcher rd = request.getRequestDispatcher("./board/view.jsp");
			rd.forward(request, response);
		} else if (command.equals("/BoardUpdateAction.do")) {
			//선택된 글 수정하기
			requestBoardUpdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} else if (command.equals("/BoardDeleteAction.do")) {
			//선택된 글 삭제하기
			requestBoardDelete(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}
	}


	public void requestBoardList(HttpServletRequest request) { 
		//등록된 글 목록 가져오기
        // 여기에 실제 데이터베이스에서 글 목록을 조회하는 로직을 추가합니다.
        // 이 예제에서는 더미 데이터를 사용합니다.

        List<String> boardList = new ArrayList<>();
        boardList.add("글 1");
        boardList.add("글 2");
        boardList.add("글 3");
        // ... 더 많은 글 목록 추가

        // 조회된 글 목록을 request 속성에 저장
        request.setAttribute("boardList", boardList);
		
	}
	
	public void requestLoginName(HttpServletRequest request) {
		// 인증된 사용자명 가져오기
		
	}

	public void requestBoardWrite(HttpServletRequest request) {
		// 새로운 글 등록하기
		
	}

	public void requestBoardView(HttpServletRequest request) {
		// 선택된 글 상세 페이지 가져오기
		
	}
	
	public void requestBoardUpdate(HttpServletRequest request) {
		// 선택된 글 내용 수정하기
		
	}
	
	public void requestBoardDelete(HttpServletRequest request) {
		// 선택된 글 삭제하기
		
	}
}