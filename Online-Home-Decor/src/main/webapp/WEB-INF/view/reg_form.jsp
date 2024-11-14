<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration - Contact Application</title>
    <s:url var="url_jqlib" value="/static/js/jquery-3.2.1.min.js" />
    <script src="${url_jqlib}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: white;
            width: 100%;
            max-width: 1000px;
            border-radius: 10px;
            box-shadow: 0 8px 24px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .header {
            background-color: #c6afc9;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .menu {
            background: #34495e;
            padding: 10px 20px;
        }

        .menu a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-size: 14px;
        }

        .content {
            padding: 40px;
        }

        .registration-form {
            max-width: 500px;
            margin: 0 auto;
        }

        h3 {
            color: #2c3e50;
            margin-bottom: 30px;
            text-align: center;
            font-size: 24px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #2c3e50;
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 14px;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 0 3px rgba(52,152,219,0.1);
        }

        select.form-control {
            appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 12px center;
            background-size: 16px;
        }

        .btn {
            background: #3498db;
            color: white;
            padding: 12px 24px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background 0.3s;
        }

        .btn:hover {
            background: #2980b9;
        }

        .error {
            color: #e74c3c;
            padding: 10px;
            background: #fdf0ef;
            border-radius: 6px;
            margin-bottom: 20px;
            font-size: 14px;
        }

        .footer {
            background: #2c3e50;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 12px;
        }

        @media (max-width: 768px) {
            .content {
                padding: 20px;
            }

            .container {
                margin: 10px;
            }
        }
    </style>
    <script>
        $(document).ready(function (){
            $("#id_check_avail").click(function(){
                $.ajax({
                    url : 'check_avail',
                    data : { username: $("#id_username").val()} ,
                    success : function(data){
                        $("#id_res_div").html(data);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <div class="container">
        <div class="header">
            <jsp:include page="include/header.jsp"/>
        </div>

        <div class="menu">
            <jsp:include page="include/menu.jsp"/>
        </div>

        <div class="content">
            <div class="registration-form">
                <h3>User Registration</h3>

                <c:if test="${err!=null}">
                    <div class="error">${err}</div>
                </c:if>

                <s:url var="url_reg" value="/register"/>
                <f:form action="register" modelAttribute="command">
                    <div class="form-group">
                        <label>Name</label>
                        <f:input path="name" class="form-control" placeholder="Enter your name"/>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <f:input path="email" class="form-control" placeholder="Enter your email"/>
                    </div>

                    <div class="form-group">
                        <label>Password</label>
                        <f:password path="password" class="form-control" placeholder="Choose a password"/>
                    </div>

                    <div class="form-group">
                        <label>Role</label>
                        <f:select path="role" class="form-control">
                            <f:option value="BUYER">Buyer</f:option>
                            <f:option value="SELLER">Seller</f:option>
                        </f:select>
                    </div>

                    <div style="text-align: right;">
                        <button type="submit" class="btn">Register</button>
                    </div>
                </f:form>
            </div>
        </div>

        <div class="footer">
            <jsp:include page="include/footer.jsp"/>
        </div>
    </div>
</body>
</html>