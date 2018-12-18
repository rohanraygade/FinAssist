<!DOCTYPE html>
 <html>

<head>
    <title> Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.8.2.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script type='text/javascript'>
        $(function () {
            var overlay = $('<div id="overlay"></div>');
            overlay.show();
            overlay.appendTo(document.body);
            $('.popup').show();
            $('.close').click(function () {
                $('.popup').hide();
                overlay.appendTo(document.body).remove();
                return false;
            });




            $('.x').click(function () {
                $('.popup').hide();
                overlay.appendTo(document.body).remove();
                return false;
            });
        });
    </script>

</head>

<body id="body-id">

    <div class='popup'>
        <div class='cnt223'>
            <h1>User Guide </h1>
            <p>
                Some text: User guide.
                <br />
                <br />
                <a href='' class='close'>Close</a>
            </p>
        </div>
    </div>

    <nav>
        <div class="toggle">

        </div>

        <ul>
            <li><a href="#">FinAssist</a></li>
            <li><a href="#">Login or Sign Up</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>

        </ul>
    </nav>

<!--
    <div class="loginbox">
        <img src="avatar.png" class="avatar">
        <h1> Login Here </h1>
        <form id="sign-in" action="home.html">
            <p>Username</p>
            <input type="text" name="" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="" placeholder="Enter Password">
            <input type="submit" onclick="goToHome()" name="" value="Login">
            <a href="#"> Lost your Password?</a><br />
            <a href="sign-up.html"> Don't have an account?</a>
        </form>
    </div> -->


    <div class="chat-box">
        <div class="chat-head">
            <h2 class="chathead-font">FinAssist</h2>
            <img src="https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_down-16.png" title="Expand Arrow" width="16">
        </div>
        <div class="chat-body">

<div class="msg-insert">

</div>
            <div class="chat-text">
                <textarea placeholder="Send" id="innerHTML"></textarea>
            </div>
        </div>
    </div>

    <script>

        function goToHome() {
            document.getElementById("sign-in").submit();
        }



        $(function(){
	var arrow = $('.chat-head img');
	var textarea = $('.chat-text textarea');

	arrow.on('click', function(){
		var src = arrow.attr('src');

		$('.chat-body').slideToggle('fast');
		if(src == 'https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_down-16.png'){
			arrow.attr('src', 'https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_up-16.png');
		}
		else{
			arrow.attr('src', 'https://maxcdn.icons8.com/windows10/PNG/16/Arrows/angle_down-16.png');
		}
	});

	textarea.keypress(function(event) {
		var $this = $(this);

		if(event.keyCode == 13){
			//alert("in");
			var msg = $this.val();
			$this.val('');


			$.ajax({
				url : "chatServlet",
				method : "POST",
				data : {
					//data : document.getElementById('innerHTML').value,
					data : msg,
				},
				success : function(response) {

					var newChatMessage1 = document.createElement('div');
                    document.getElementsByClassName('msg-insert')[0].appendChild(newChatMessage1);
                    newChatMessage1.className = 'msg-send';
                    newChatMessage1.innerHTML = msg;



                    var newChatMessage1 = document.createElement('div');
                    document.getElementsByClassName('msg-insert')[0].appendChild(newChatMessage1);
                    newChatMessage1.className = 'msg-receive';
                    newChatMessage1.innerHTML = response;

                    $('#innerHTML').val('');
				},
				error : function() {
					alert("error");
				}
			});
			//alert("out");
			}
	});

});

    </script>

</body>

</html>
