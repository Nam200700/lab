<%@page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>LAB 2 - Bài 3 & 4</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 40px;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #007bff;
            margin-bottom: 30px;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .gender-group {
            margin-bottom: 20px;
        }

        .gender-group input {
            margin-right: 8px;
        }

        button {
            padding: 10px 20px;
            margin-right: 10px;
            border: none;
            border-radius: 6px;
            background-color: #007bff;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover:not(:disabled) {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>-- BÀI 3 & 4 --</h2>
    <form action="/form/update" method="post"> 
        <label>Fullname:</label>
        <input type="text" name="fullname" 
               value="${user.fullname}" 
               ${editabled ? 'readonly' : ''}> 

        <label>Gender:</label>
        <div class="gender-group">
            <input type="radio" name="gender" value="true" 
                   ${user.gender == true ? 'checked' : ''}> Male
            <input type="radio" name="gender" value="false" 
                   ${user.gender == false ? 'checked' : ''}> Female
        </div>

        <label>Country:</label>
        <select name="country"> 
            <option value="VN" ${user.country == 'VN' ? 'selected' : ''}>Việt Nam</option>
            <option value="US" ${user.country == 'US' ? 'selected' : ''}>United States</option>
            <option value="CN" ${user.country == 'CN' ? 'selected' : ''}>China</option>
        </select>

        <hr>

        <button ${editabled ? 'disabled' : ''}>Create</button> 
        <button>Update</button> 
    </form>
</body>
</html>
