<%-- 
    Document   : index
    Created on : 2/05/2019, 02:37:00 PM
    Author     : E201
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.4/css/bulma.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <nav class="navbar is-info">
                <div class="container">
                    <div class="navbar-menu">
                        <div class="navbar-start">
                            <a class="navbar-item" href="/">PARCIAL</a>
                        </div>
                    </div>
                </div>
            </nav>
            <br />
            <div class="container">
                <div class="columns">
                    <div class="column is-two-fifths">
                        <div class="card">
                            <div class="card-content">
                                <form action="registro" method="post">
                                    <div class="columns">
                                        <div class="column is full">
                                            <div class="field "> 
                                                <div class="control">
                                                    <label>Nombre</label>
                                                    <input name="nombre" required 
                                                           type="text" class="input is-rounded" placeholder="Title Task...">
                                                </div>
                                            </div>
                                            <div class="field "> 
                                                <div class="control">
                                                    <label>Apellido</label>
                                                    <input name="apellido" required 
                                                           type="text" class="input is-rounded" placeholder="Title Task...">
                                                </div>
                                            </div>
                                            <div class="field "> 
                                                <div class="control">
                                                    <label>Email</label>
                                                    <input name="email" required 
                                                           type="email" class="input is-rounded" placeholder="Title Task...">
                                                </div>
                                            </div>
                                            <div class="field">
                                                <div class="select">
                                                    <label>Lenguaje</label>
                                                    <select name="lenguaje">
                                                        <option value="node.js">node.js</option>
                                                        <option value="java">java</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <br>
                                            <div class="field">
                                                <label>Hobby</label>
                                                <br>
                                                <label class="checkbox">
                                                    <input type="checkbox" name="hobby" value="leer">
                                                    Leer
                                                </label>
                                                <label class="checkbox">
                                                    <input type="checkbox" name="hobby" value="programar">
                                                    Programar
                                                </label>
                                                <label class="checkbox">
                                                    <input type="checkbox" name="hobby" value="comer">
                                                    Comer
                                                </label>
                                                <label class="checkbox">
                                                    <input type="checkbox" name="hobby" value="jugar">
                                                    Jugar
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="columns is-mobile">
                                        <div class="column is-4 is-offset-8">
                                            <button type="submit" name="enviar" class="button is-info">sucess</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="column is-two-thirds">
                        <table class="table table is-fullwidth table is-hoverable table is-striped">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Email</th>
                                    <th>Lenguaje</th>
                                    <th>Hobby</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>FD</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
