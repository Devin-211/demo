<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="YamlDonet.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:Button ID="Button1" runat="server" Text="222序列化(Yaml)" OnClick="Button1_Click" />
    </div>
	<div>
		<asp:Button ID="Button2" runat="server" Text="反序列化(Yaml)" OnClick="Button2_Click" />
    </div>
    </form>
</body>
</html>
