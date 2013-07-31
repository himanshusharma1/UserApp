
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Application Home</title>
    <script type="text/javascript" src="./resources/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="./resources/jquery/jquery.easyui.min.js"></script>
     <link rel="stylesheet" type="text/css" href="./resources/css/easyui.css">
    <link rel="stylesheet" type="text/css" href="./resources/css/icon.css">
    <script>
    function register() {
    	$.ajax({
				url: 'register.html',
				type: 'PUT',
				success: function(response){
					$('#container').html(response);
				},
				error: function(response){
					//alert("Error in updating the disposition for CallSid: " + callSid);
				}
			});
    }
    
    function view() {
    	$.ajax({
			url: 'userList.html',
			type: 'PUT',
			success: function(response){
				$('#container').html(response);
			},
			error: function(response){
			}
		});
    }
    
 	function save() {
 		var data = $("#registerForm").serialize();;
 		$.ajax({
			url: 'saveUser.html?'+data,
			type: 'PUT',
			success: function(response){
				if(response == 'SUCCESS') {
					$('#message').html("User Saved Successfully");
					$('#registerForm').find('input[type=text]').val('');
				} else {
					$('#message').html("Failed to save user");
				}
			},
			error: function(response){
			}
		});
	 }
   </script>
</head>
<body>
  
    <div class="easyui-layout" style="width:100%;height:100%;">
        <div data-options="region:'north'" style="height:50px">
        	<div style="float:right;">
        		<span>Hello ${model.username} !!</span>
        		<span><a href="loginPage.html">Logout</a></span>
        	</div>
          <a href="#" onclick="register();">Register User</a>|
          <a href="#" onclick="view();">View Users</a>|
          <a href="#" onclick="alert('Comming soon');">Search User</a>
        </div>
      
        <div id="container" data-options="region:'center',iconCls:'icon-ok'">
          
        </div>
    </div>
 
</body>
</html>