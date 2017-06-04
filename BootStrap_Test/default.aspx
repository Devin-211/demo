<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BootStrap_Test._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            default-index
        </div>

        <div class="btn-group">
            <button type="button" class="btn btn-default">按钮 1</button>
            <button type="button" class="btn btn-default">按钮 2</button>
            <button type="button" class="btn btn-default">按钮 3</button>
        </div>



        <ul class="nav nav-tabs">
            <li class="active">
                <a href="#">Home</a></li>
            <li>
                <a href="#">SVN</a></li>
            <li>
                <a href="#">iOS</a></li>
            <li>
                <a href="#">VB.Net</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Java
            <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">Swing</a></li>
                    <li>
                        <a href="#">jMeter</a></li>
                    <li>
                        <a href="#">EJB</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">分离的链接</a></li>
                </ul>
            </li>
            <li>
                <a href="#">PHP</a></li>
        </ul>

        <div style="width:600px;">
            <span style="border:1px solid red" class="col-xs-3 col-sm-6 col-md-2">span-left</span>
            <span style="border:1px solid red" class="col-xs-9 col-sm-6 col-md-10">span-right</span>
        </div>
    </form>
</body>
</html>
