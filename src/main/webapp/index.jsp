<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Tarea 4: cambiar el color de los textos</title>
</head>
<body>
<h3 style="color: ${cookie.color.getValue()}">Tarea 4: cambiar el color de los textos</h3>
<p style="color:${cookie.color.getValue()}">Este texto ha sido modificado gracias a una Cookie</p>
<form action="/webapp-cookie-tarea4/cambiar-color" method="get">
    <div>
        <label for="color">Color</label>
        <div>
            <select name="color" id="color">
                <option value="black">Seleccionar</option>
                <option value="blue">Azul</option>
                <option value="red">Rojo</option>
                <option value="green">Verde</option>
                <option value="aqua">Aqua</option>
                <option value="BlueViolet">Violeta</option>
                <option value="Gray">Gris</option>
                <option value="Cyan">Cyan</option>
            </select>
        </div>
    </div>

    <div>
        <input type="submit" value="Cambiar">
    </div>
</form>

</body>
</html>
