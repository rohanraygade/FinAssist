<!DOCTYPE html>
<head>
	<title>Full Screen Landing Page</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<link href="css/animate.css" rel="stylesheet"/>
	<link href="css/waypoints.css" rel="stylesheet"/>
	<script src="js/jquery.waypoints.min.js" type="text/javascript"></script>
	<script src="js/waypoints.js" type="text/javascript"></script>
	<script src="js/script.js" type="text/javascript"></script>
	<link href="https://fonts.googleapis.com/css?family=Crimson+Text:600" rel="stylesheet">
</head>
<body>

<div class="intro" id="displayIntro" >
	<div class="inner">
		<div class="content">
			<section class="os-animation" data-os-animation="bounceInUp" data-os-animation-delay="0s">
				<h1><b>FinAssist</b></h1>
			</section>

			<section id="landingBtn" class="os-animation" data-os-animation="bounceInUp" data-os-animation-delay=".1s">
				<a class="btn" href="#">Get Started</a>
			</section>
		</div>

		</div>
	</div>
</div>


<div class="chatTitle">
	<center><h2><b>FinAssist</b></h2></center>
</div>

	<div id="chatbotDisp"class="chatbox">
		<div class="chatlogs">
			<div class="chat friend">
				<div class="user-photo" ></div>
				<p class="chat-message" id="chatbot" name="chatbot">Hey, this is FinAssist!</p>
			</div>

		</div>

		<div class="chat-form" method="POST" action="chatServlet">
			<textarea class="textArea" name="textArea" id="innerHTML" value="Enter here"></textarea>
			<button class="submit" onclick="sendFunction()">Send</button>

		</div>

	</div>





<script type="text/javascript">

	function sendFunction() {
		
		var xmlhttp = new XMLHttpRequest();
		 
	 
	        xmlhttp.onreadystatechange=useResponse;
	        xmlhttp.open("POST", "chatServlet", true);
	        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded")
	        var chatinput = document.getElementById("innerHTML").value;
	        console.log("Chatinput value"+chatinput);
	        var sendingText="textArea="+chatinput;
	        console.log(sendingText);
	        //alert(xmlhttp.responseText);
	   xmlhttp.send(sendingText);
	   var result = document.getElementById("result"); 
	    result.innerHTML = xmlHttp.responseText;
	     function useResponse()
	     {
	    	 
	    	 if (xmlhttp.readyState == 4) {
	    		 //alert(xmlhttp.responseText);
	    	        
	    	        
	    	        
	    	        
	    	        var newDiv = document.createElement('div');
	    		    newDiv.className = 'chat self';
	    		    document.getElementsByClassName('chatlogs')[0].appendChild(newDiv);

	    		    var newChatMessage = document.createElement('P');
	    		    newChatMessage.className = 'chat-message';
	                newChatMessage.innerHTML = document.getElementById('innerHTML').value;
	    		    newDiv.appendChild(newChatMessage);
	    		    
	    		    var newUserPhoto = document.createElement('div');
	    		    newUserPhoto.className = 'user-photo';
	    		    newDiv.appendChild(newUserPhoto);
	    		    
	    		    //resp
	    		    var newDiv1 = document.createElement('div');
	    		    newDiv1.className = 'chat friend';
	    		    document.getElementsByClassName('chatlogs')[0].appendChild(newDiv1);

	    		    var newChatMessage1 = document.createElement('P');
	    		    newChatMessage1.className = 'chat-message';
	    	        //document.getElementById("chatbot").innerHTML = xmlhttp.responseText;

	    		    newChatMessage1.innerHTML = xmlhttp.responseText;
	    		    newDiv1.appendChild(newChatMessage1);
	    		    
	    		    var newUserPhoto1 = document.createElement('div');
	    		    newUserPhoto1.className = 'user-photo';
	    		    newDiv1.appendChild(newUserPhoto1);
	    		  
	    	                //or what you want to do
	    	    }
	     }
	       
		
	   
	  
	   

    }

	 //    var newDiv = document.createElement('div');
	 //    var newUserPhoto = document.createElement('div');
	 //    var newChatMessage = document.createElement('P');
	 //    newDiv.className = 'chat self';
	 //    newUserPhoto.className = 'user-photo';
    //     newChatMessage.className = 'chat-message';
    //
    //
    //     newChatMessage.innerHTML = document.getElementsByClassName('chat-message').innerHTML;
    //     newChatMessage.innerHTML = document.getElementById('innerHTML').value;
    //
    //
	 //    //newDiv.innerHTML = document.getElementsByClassName('chat-message').innerHTML;
	 //    //newDiv.innerHTML = document.getElementById('innerHTML').value;
	 //    // document.body.appendChild(newDiv);
		// //document.getElementsBy(newDiv)[0].appendChild(newChatMessage);
	 //    document.getElementsByClassName('chatlogs')[0].appendChild(newDiv);
    // }

    $('#landingBtn').click(function () {
		$('#displayIntro').hide('fade');
        $('.chatTitle').show();
		$('#chatbotDisp').show();
    } );


</script>
</body>
</html>