<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LAB1_ASP.Default" %>

<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlTypes"%>
<%@Import Namespace="System.Data.SqlClient"%>

<script language="C#" runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string conn = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog='forLab1';Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        string p_query = "select * from Priority";
        SqlDataSource p_source = new SqlDataSource(conn, p_query);
        priority.DataSource = p_source;
        priority.DataTextField = "PriorityDescription";
        priority.DataValueField = "NumPriority";
        priority.DataBind();

        string s_query = "select * from Status";
        SqlDataSource s_source = new SqlDataSource(conn, s_query);
        status.DataSource = s_source;
        status.DataTextField = "StatusDescription";
        status.DataValueField = "NumStatus";
        status.DataBind();

        string e_query = "select * from Employee";
        SqlDataSource e_source = new SqlDataSource(conn, e_query);
        employee.DataSource = e_source;
        employee.DataTextField = "LastName";
        employee.DataValueField = "TabelNumber";
        employee.DataBind();
    }
</script>

<script language="javascript">
        function check()
        {
            f = document.getElementById('priority').value;
            s = document.getElementById('status').value
            g = document.getElementById('employee').value;
            if(f=='0' || s=='0' || g=='0')
            {
            alert('Один из параметров не был выбран!');
            }
        }
</script>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/style.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bug tracker</title>
</head>
<body>
    <form id="form" runat="server" action="Browse.aspx" method="post">
        <table class="pageborder" border="0" width="1000">
            <tr>
                <td width="100%">
                    <span class="text1">Bag</span>
                        <br/>
                    <span class="text2">&nbsp; &nbsp; &nbsp; &nbsp; tracker</span>
                        <br/>
                    <hr class="line"/><hr class="line" width="70%" align="left"/>

                </td>
            </tr>
            <tr>
                <td style="height: 17px; text-align: right;" width="100%">   
                    <asp:LinkButton ID="LinkButton_emloyee" runat="server" style="text-decoration: none" PostBackUrl="~/Employee.aspx">Список сотрудников &nbsp;&nbsp;&nbsp;</asp:LinkButton></span>
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Выбор &nbsp;&nbsp;</span> 
                    <asp:LinkButton  ID="LinkButton1" runat="server" style="text-decoration: none">Просмотр</asp:LinkButton></span>     
                </td>
            </tr>  
            <tr>
                <td><br/>
                    <table align="center" width="950">
                        <tr height="50px" valign="top">
                            <td style="width: 400px"><SPAN class="text3">Приоритет задачи</SPAN></td>
                            <td>
                                <asp:DropDownList style="width: 350px" ID="priority" runat="server">
                                    <asp:ListItem Selected="True">Выбор приоритета...</asp:ListItem>
                                </asp:DropDownList>
                            </td>                                    
                        </tr>
                        <tr height="50px" valign="top">
                            <td style="width: 400px"><SPAN class="text3">Статус задачи</SPAN></td>
                            <td>
                                <asp:DropDownList style="width: 350px" ID="status" runat="server">
                                    <asp:ListItem Selected="True">Выбор статуса...</asp:ListItem>
                                </asp:DropDownList>
                            </td>                                    
                        </tr>
                        <tr height="50px" valign="top">
                            <td style="width: 400px"><SPAN class="text3">Назначенный сотрудник</SPAN></td>
                            <td>
                                <asp:DropDownList style="width: 350px" ID="employee" runat="server">
                                    <asp:ListItem Selected="True">Выбор сотрудника...</asp:ListItem>
                                </asp:DropDownList>
                            </td>                                    
                        </tr>
                    </table>
                </td>
            </tr> 


        </table >
    </form> 
</body>
</html>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LAB1_ASP.Default" %>

<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlTypes"%>
<%@Import Namespace="System.Data.SqlClient"%>

<script language="C#" runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string conn = "Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog='forLab1';Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        string p_query = "select * from Priority";
        SqlDataSource p_source = new SqlDataSource(conn, p_query);
        priority.DataSource = p_source;
        priority.DataTextField = "PriorityDescription";
        priority.DataValueField = "NumPriority";
        priority.DataBind();

        string s_query = "select * from Status";
        SqlDataSource s_source = new SqlDataSource(conn, s_query);
        status.DataSource = s_source;
        status.DataTextField = "StatusDescription";
        status.DataValueField = "NumStatus";
        status.DataBind();

        string e_query = "select * from Employee";
        SqlDataSource e_source = new SqlDataSource(conn, e_query);
        employee.DataSource = e_source;
        employee.DataTextField = "LastName";
        employee.DataValueField = "TabelNumber";
        employee.DataBind();
    }
</script>

<script language="javascript">
        function check()
        {
            f = document.getElementById('priority').value;
            s = document.getElementById('status').value
            g = document.getElementById('employee').value;
            if(f=='0' || s=='0' || g=='0')
            {
            alert('Один из параметров не был выбран!');
            }
        }
</script>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/style.css" rel="stylesheet" type="text/css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Bug tracker</title>
</head>
<body>
    <form id="form" runat="server" action="Browse.aspx" method="post">
        <table class="pageborder" border="0" width="1000">
            <tr>
                <td width="100%">
                    <span class="text1">Bag</span>
                        <br/>
                    <span class="text2">&nbsp; &nbsp; &nbsp; &nbsp; tracker</span>
                        <br/>
                    <hr class="line"/><hr class="line" width="70%" align="left"/>

                </td>
            </tr>
            <tr>
                <td style="height: 17px; text-align: right;" width="100%">   
                    <asp:LinkButton ID="LinkButton_emloyee" runat="server" style="text-decoration: none" PostBackUrl="~/Employee.aspx">Список сотрудников &nbsp;&nbsp;&nbsp;</asp:LinkButton></span>
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Выбор &nbsp;&nbsp;</span> 
                    <asp:LinkButton  ID="LinkButton1" runat="server" style="text-decoration: none">Просмотр</asp:LinkButton></span>     
                </td>
            </tr>  
            <tr>
                <td><br/>
                    <table align="center" width="950">
                        <tr height="50px" valign="top">
                            <td style="width: 400px"><SPAN class="text3">Приоритет задачи</SPAN></td>
                            <td>
                                <asp:DropDownList style="width: 350px" ID="priority" runat="server">
                                    <asp:ListItem Selected="True">Выбор приоритета...</asp:ListItem>
                                </asp:DropDownList>
                            </td>                                    
                        </tr>
                        <tr height="50px" valign="top">
                            <td style="width: 400px"><SPAN class="text3">Статус задачи</SPAN></td>
                            <td>
                                <asp:DropDownList style="width: 350px" ID="status" runat="server">
                                    <asp:ListItem Selected="True">Выбор статуса...</asp:ListItem>
                                </asp:DropDownList>
                            </td>                                    
                        </tr>
                        <tr height="50px" valign="top">
                            <td style="width: 400px"><SPAN class="text3">Назначенный сотрудник</SPAN></td>
                            <td>
                                <asp:DropDownList style="width: 350px" ID="employee" runat="server">
                                    <asp:ListItem Selected="True">Выбор сотрудника...</asp:ListItem>
                                </asp:DropDownList>
                            </td>                                    
                        </tr>
                    </table>
                </td>
            </tr> 


        </table >
    </form> 
</body>
</html>
>>>>>>> ea3b2ba72c01cb6b57aa922eaf4d090015fb624b
