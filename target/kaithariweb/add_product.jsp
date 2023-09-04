<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }
  form {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background: #fff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
  }
  label {
    font-weight: bold;
    display: block;
    margin-bottom: 10px;
  }
  input[type="text"],
  input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }
  button[type="submit"]:hover {
    background-color: #0056b3;
  }
</style>

</head>
<body>
<h1>Add Products</h1>
	<form action = "product/create" method = "POST">
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
 