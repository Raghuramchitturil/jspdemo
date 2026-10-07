<!DOCTYPE html>
<html>

<head>
    <title>JSP Calculator</title>
</head>

<body>

<h2>JSP Calculator</h2>

<form method="post">

    <label>First Number:</label>

    <input type="number" name="num1">

    <br><br>

    <label>Second Number:</label>

    <input type="number" name="num2">

    <br><br>

    <button type="submit">Calculate</button>

</form>

<%

    String value1 = request.getParameter("num1");
    String value2 = request.getParameter("num2");

    String method = request.getMethod();

    if (method.equals("POST")) {

        if (value1 == null || value1.trim().isEmpty()
                || value2 == null || value2.trim().isEmpty()) {

%>

            <h3>Fields must not be empty!</h3>

<%

        } else {

            int num1 = Integer.parseInt(value1);
            int num2 = Integer.parseInt(value2);

            int sum = num1 + num2;
            int difference = num1 - num2;
            int product = num1 * num2;

%>

            <h3>Results</h3>

            <p>
                First Number:
                <%= num1 %>
            </p>

            <p>
                Second Number:
                <%= num2 %>
            </p>

            <p>
                Sum:
                <%= sum %>
            </p>

            <p>
                Difference:
                <%= difference %>
            </p>

            <p>
                Product:
                <%= product %>
            </p>

<%

        }

    }

%>

</body>

</html>