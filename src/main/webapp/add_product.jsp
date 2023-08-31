<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>


</head>
<body>
	<form action = "create" method = "POST">
		<label for="name">Name</label> 
		<input type="text" name="product_name" required><br>
		
		
		<label for="description">Description</label>
		 <input type="text" name="description" required> <br>
		 
		 <label for="categoryId">CategoryId</label>
		 <input type="number" name="categoryId" required> <br>
		 	 
		 <label for="Price">Price</label> 
		 <input type="number" name="Price" required><br>
		 
		 <button type="submit">ADD</button>
	</form>
</body>
</html>
