package com.servlet.fintechchatbot;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.alicebot.ab.Bot;
import org.alicebot.ab.Chat;
import org.alicebot.ab.History;
import org.alicebot.ab.MagicBooleans;
import org.alicebot.ab.MagicStrings;
import org.alicebot.ab.utils.IOUtils;
import com.servlet.fintechchatbot.Chatbot1;

/**
 * Servlet implementation class chatServlet
 */
@WebServlet("/chatServlet")
public class chatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     Chatbot1 chat;
    /**
     * @throws IOException 
     * @see HttpServlet#HttpServlet()
     */
    public chatServlet() throws IOException {
        super();
         chat=new Chatbot1();
     
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("in");
		response.setContentType("text/javascript");
        PrintWriter out = response.getWriter();
        String chatinput1 =  request.getParameter("textArea");
        System.out.println("chatinput in servelet"+chatinput1);
        out.write(chat.chatresponse( request.getParameter("textArea")));
      out.close();
     
////        
// String input = (String) request.getAttribute("textArea");
//System.out.println(input);
//Chatbot1 chat=new Chatbot1();
//chat.chat();
	}
}


