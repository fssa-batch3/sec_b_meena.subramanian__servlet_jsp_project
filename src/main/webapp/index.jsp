<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form role="form" action="user/login" method="post" id="signIn">
        <label for="email">Email:</label>
        <input type="text" id="email" name=email required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

	<a href="list_all_products"> <button type="submit">submit</button> </a>
        
    </form>
    
    <a href="user/new">
    <button>create account</button>
    </a>
</body>
</html>
