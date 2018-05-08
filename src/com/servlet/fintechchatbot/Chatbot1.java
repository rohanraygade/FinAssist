package com.servlet.fintechchatbot;

import java.io.File;
import java.io.IOException;

import org.alicebot.ab.Bot;
import org.alicebot.ab.Chat;
import org.alicebot.ab.History;
import org.alicebot.ab.MagicBooleans;
import org.alicebot.ab.MagicStrings;
import org.alicebot.ab.utils.IOUtils;

public class Chatbot1 {
	private static final boolean TRACE_MODE = false;
	static String botName = "super";
	Chat chatSession;Bot bot;
public Chatbot1() throws IOException {
	String resourcesPath = getResourcesPath();
	System.out.println(resourcesPath);
	MagicBooleans.trace_mode = TRACE_MODE;
	bot = new Bot("super", resourcesPath);
    chatSession = new Chat(bot);
	bot.brain.nodeStats();
}
	public void chat() {
		try {
			
		
			

			while (true) {
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String chatresponse(String question) {
		String responseanswer = null;
		String textLine = question;
		System.out.print("Human : "+textLine);
		
		if ((textLine == null) || (textLine.length() < 1))
			textLine = MagicStrings.null_input;
		if (textLine.equals("q")) {
			System.exit(0);
		} else if (textLine.equals("wq")) {
			bot.writeQuit();
			System.exit(0);
		} else {
			String request = textLine;
			if (MagicBooleans.trace_mode)
				System.out.println(
						"STATE=" + request + ":THAT=" + ((History) chatSession.thatHistory.get(0)).get(0)
								+ ":TOPIC=" + chatSession.predicates.get("topic"));
			
			
			String response = chatSession.multisentenceRespond(request);
			while (response.contains("&lt;"))
				response = response.replace("&lt;", "<");
			while (response.contains("&gt;"))
				response = response.replace("&gt;", ">");
			System.out.println("Robot : " + response);
			responseanswer = response;
			//Text2Speechhi obj=new Text2Speech(); 
	        //obj.dospeak(response,"kevin16");
		}
		return responseanswer;
	}

	private static String getResourcesPath(){

		File currDir = new File(".");
		String path = currDir.getAbsolutePath();
		//path = path.substring(0, path.length() - 2);
		//System.out.println(path+"==================================asdasdasd=======");
		 path = path.substring(0, path.length()-1);
		  //  System.out.println("yyyyyyyyyyyyyyyy"+Chatbot1.class.getClass().getProtectionDomain().getCodeSource().getLocation());
		String resourcesPath ="src" + File.separator + "main" + File.separator + "resources";
		System.out.println(resourcesPath);
//		return "/Users/shivani/Downloads/fintechchatbot/src/main/resources";
		return "a";
	}
}