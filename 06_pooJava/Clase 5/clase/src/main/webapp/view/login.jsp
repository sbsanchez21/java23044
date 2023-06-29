<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  </head>
  <body class="bg-light">
    <div class="container">
    	<div class="bg-white rounded ">
			<div class="text-center fs-3 my-4">Login</div>
			
			<div class="d-flex justify-content-center">
				<form action="../controller/checkLogin.jsp" method="post">
					<input type="email" name="user" class="form-control mb-3" placeholder="usuario" required>
					<input type="password" name="pass" class="form-control mb-3" placeholder="contraseña" required>
					<input type="submit" value="Enviar" class="btn btn-primary mb-3">
				</form>
			
			</div>
			
		    	<% 
		    		String mensaje=request.getParameter("mensaje");
		    		if(mensaje!=null){
		    			out.println("<div class='bg-danger text-center my-1 p-2'>");
		    			out.println(mensaje);	
		    			out.println("</div>");
		    		}
		    		
		    	%>	
		    </div>
    	</div>
		
	</div>
	
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>
	