<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: changwh1
  Date: 2017/2/15
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <title>更新用户</title>
    <meta charset="utf-8">
    <link href="http://img.chinanetcenter.com/lib/bui/1.1.21/css/bs3/dpl.css" rel="stylesheet">
    <link href="http://img.chinanetcenter.com/lib/bui/1.1.21/css/bs3/bui.css" rel="stylesheet">
    <link href="http://img.chinanetcenter.com/wsfe/1.0.0/prd/styles/wsfe.css" rel="stylesheet">
    <style type="text/css">
        body {
            background-color: #fff;
        }
    </style>
</head>
<script src="http://img.chinanetcenter.com/js/jquery/jquery-1.8.1.min.js"></script>
<script src="http://img.chinanetcenter.com/lib/bui/1.1.21/seed-min.js"></script>
<script src="http://img.chinanetcenter.com/wsfe/1.0.0/prd/scripts/wsfe.js"></script>
<body>
    <div id="content">
        <%--<h1>更新用户</h1>--%>
        <%--<hr/>--%>
        <div class="container">
            <form id="J_Form" class="form-horizontal bui-form bui-form-field-container" action="/admin/users/updateP" method="post" commandName="userP" role="form">
                <div class="control-group">
                    <label class="control-label"><s>*</s>Name:</label>
                    <div class="controls">
                        <input type="text" name="name" placeholder="Enter name:" value="${user.name}"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label"><s>*</s>Sex:</label>
                    <div class="controls bui-form-group-select">
                        <select class="input-small" name="sex">
                            <c:if test="${user.sex=='男'}">
                                <option value="${user.sex}" selected="selected">男</option>
                                <option>女</option>
                            </c:if>
                            <c:if test="${user.sex=='女'}">
                                <option value="${user.sex}" selected="selected">女</option>
                                <option>男</option>
                            </c:if>
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label"><s>*</s>Age:</label>
                    <div class="controls">
                        <input class="input-small" type="text" name="age" placeholder="Enter age:" value="${user.age}"/>
                    </div>
                </div>
                <div>
                    <input type="hidden" name="id" value="${user.id}"/>
                </div>
                <div class="row">
                    <div class="form-actions span13 offset3">
                        <button type="submit" class="button button-primary">Submit</button>
                        <button type="reset" class="button">Reset</button>
                    </div>
                </div>
            </form>
        </div>

    </div>

</body>
</html>
