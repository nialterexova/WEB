<<<<<<< HEAD
<<<<<<< HEAD
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="LAB1_ASP.Browse" %>

<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlTypes"%>
<%@Import Namespace="System.Data.SqlClient"%>

<script language="C#" runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string employee = Request.Form["employee"];
        string status = Request.Form["status"];
        string priority = Request.Form["priority"];

        string query = "select rtrim(Bug.BugNumber) as bugNum, rtrim(Bug.Brief) as brief, " +
        "CONVERT(CHAR(25),Bug.Date,104) as dateOpen, rtrim(Bug.Project) as project, " +
        "rtrim(Bug.Module) as module, rtrim(Priority.PriorityDescription) as priority, " +
        "rtrim(Status.StatusDescription) as status, rtrim(Employee.LastName) as employee " +
        "from Bug, Employee, Status, Priority " +
        "WHERE Bug.Executor=Employee.TabelNumber AND Bug.Executor="+employee+" " +
        "AND Bug.Status=Status.NumStatus and Bug.Status="+status+" " +
        "AND Bug.Priority=Priority.NumPriority AND Bug.Priority="+priority;

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog='forLab1';Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);
        DataView dv = new DataView(dt);
        usp.DataSource = dv;
        usp.DataBind();
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
    <form id="form1" runat="server">
        <table class="pageborder" border="0" width="1000">
            <tr>
                <td width="100%">
                    <span class="text1">Bug</span>
                        <br/>
                    <span class="text2">&nbsp; &nbsp; &nbsp; &nbsp; tracker</span>
                        <br/>
                    <hr class="line"/><hr class="line" width="70%" align="left"/>

                </td>
            </tr>
            <tr>
                <td style="height: 17px; text-align: right;" width="100%">   
                    <asp:LinkButton ID="LinkButton_emloyee" runat="server" style="text-decoration: none" PostBackUrl="~/Employee.aspx">Список сотрудников &nbsp;&nbsp;&nbsp;</asp:LinkButton></span>
                    <asp:LinkButton ID="LinkButton_default" runat="server" style="text-decoration: none" PostBackUrl="~/Default.aspx">Выбор &nbsp;&nbsp;</asp:LinkButton></span> 
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Просмотр</span>     
                </td>
            </tr>
            <tr>
                <td>
                     <table width="900" align="center" class="headborder">
                        <tr>
                            <td width="5%"><span class="headtext">№</span></td>
                            <td width="30%" align="center"><span class="headtext">Баг</span></td>
                            <td width="10%" align="center"><span class="headtext">Дата открытия</span></td>
                            <td width="10%" align="center"><span class="headtext">Проект</span></td>
                            <td width="10%" align="center"><span class="headtext">Модуль</span></td>
                            <td width="10%" align="center"><span class="headtext">Приоритет</span></td>
                            <td width="10%" align="center"><span class="headtext">Статус</span></td>
                            <td width="15%" align="center"><span class="headtext">Назначен</span></td>
                        </tr>
                    </table>
                    <table width="900" align="center" class="textborder">
                        <tr>
                            <td width="30%"><span class="headtext"></span></td>
                        </tr>
                    </table>
                    <asp:GridView ID="usp" align="center" runat="server" 
                        cssclass="textborder" AutoGenerateColumns="false" width="900" ShowHeader="false">
                        <RowStyle CssClass="tabletext"/>
                        <Columns>               
                            <asp:BoundField DataField="bugNum" ItemStyle-Width="5%"/>
                            <asp:BoundField DataField="brief" ItemStyle-Width="30%" ItemStyle-HorizontalAlign="Center"/>                    
                            <asp:BoundField DataField="dateOpen" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>  
                            <asp:BoundField DataField="project" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="module" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="priority" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="status" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="employee" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>                    
                        </Columns> 

                    </asp:GridView>

                </td>
            </tr>


        </table >
    </form>
</body>
</html>
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="LAB1_ASP.Browse" %>

<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlTypes"%>
<%@Import Namespace="System.Data.SqlClient"%>

<script language="C#" runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string employee = Request.Form["employee"];
        string status = Request.Form["status"];
        string priority = Request.Form["priority"];

        string query = "select rtrim(Bug.BugNumber) as bugNum, rtrim(Bug.Brief) as brief, " +
        "CONVERT(CHAR(25),Bug.Date,104) as dateOpen, rtrim(Bug.Project) as project, " +
        "rtrim(Bug.Module) as module, rtrim(Priority.PriorityDescription) as priority, " +
        "rtrim(Status.StatusDescription) as status, rtrim(Employee.LastName) as employee " +
        "from Bug, Employee, Status, Priority " +
        "WHERE Bug.Executor=Employee.TabelNumber AND Bug.Executor="+employee+" " +
        "AND Bug.Status=Status.NumStatus and Bug.Status="+status+" " +
        "AND Bug.Priority=Priority.NumPriority AND Bug.Priority="+priority;

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog='forLab1';Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);
        DataView dv = new DataView(dt);
        usp.DataSource = dv;
        usp.DataBind();
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
    <form id="form1" runat="server">
        <table class="pageborder" border="0" width="1000">
            <tr>
                <td width="100%">
                    <span class="text1">Bug</span>
                        <br/>
                    <span class="text2">&nbsp; &nbsp; &nbsp; &nbsp; tracker</span>
                        <br/>
                    <hr class="line"/><hr class="line" width="70%" align="left"/>

                </td>
            </tr>
            <tr>
                <td style="height: 17px; text-align: right;" width="100%">   
                    <asp:LinkButton ID="LinkButton_emloyee" runat="server" style="text-decoration: none" PostBackUrl="~/Employee.aspx">Список сотрудников &nbsp;&nbsp;&nbsp;</asp:LinkButton></span>
                    <asp:LinkButton ID="LinkButton_default" runat="server" style="text-decoration: none" PostBackUrl="~/Default.aspx">Выбор &nbsp;&nbsp;</asp:LinkButton></span> 
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Просмотр</span>     
                </td>
            </tr>
            <tr>
                <td>
                     <table width="900" align="center" class="headborder">
                        <tr>
                            <td width="5%"><span class="headtext">№</span></td>
                            <td width="30%" align="center"><span class="headtext">Баг</span></td>
                            <td width="10%" align="center"><span class="headtext">Дата открытия</span></td>
                            <td width="10%" align="center"><span class="headtext">Проект</span></td>
                            <td width="10%" align="center"><span class="headtext">Модуль</span></td>
                            <td width="10%" align="center"><span class="headtext">Приоритет</span></td>
                            <td width="10%" align="center"><span class="headtext">Статус</span></td>
                            <td width="15%" align="center"><span class="headtext">Назначен</span></td>
                        </tr>
                    </table>
                    <table width="900" align="center" class="textborder">
                        <tr>
                            <td width="30%"><span class="headtext"></span></td>
                        </tr>
                    </table>
                    <asp:GridView ID="usp" align="center" runat="server" 
                        cssclass="textborder" AutoGenerateColumns="false" width="900" ShowHeader="false">
                        <RowStyle CssClass="tabletext"/>
                        <Columns>               
                            <asp:BoundField DataField="bugNum" ItemStyle-Width="5%"/>
                            <asp:BoundField DataField="brief" ItemStyle-Width="30%" ItemStyle-HorizontalAlign="Center"/>                    
                            <asp:BoundField DataField="dateOpen" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>  
                            <asp:BoundField DataField="project" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="module" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="priority" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="status" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="employee" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>                    
                        </Columns> 

                    </asp:GridView>

                </td>
            </tr>


        </table >
    </form>
</body>
</html>
>>>>>>> ea3b2ba72c01cb6b57aa922eaf4d090015fb624b
=======
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="LAB1_ASP.Browse" %>

<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlTypes"%>
<%@Import Namespace="System.Data.SqlClient"%>

<script language="C#" runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string employee = Request.Form["employee"];
        string status = Request.Form["status"];
        string priority = Request.Form["priority"];

        string query = "select rtrim(Bug.BugNumber) as bugNum, rtrim(Bug.Brief) as brief, " +
        "CONVERT(CHAR(25),Bug.Date,104) as dateOpen, rtrim(Bug.Project) as project, " +
        "rtrim(Bug.Module) as module, rtrim(Priority.PriorityDescription) as priority, " +
        "rtrim(Status.StatusDescription) as status, rtrim(Employee.LastName) as employee " +
        "from Bug, Employee, Status, Priority " +
        "WHERE Bug.Executor=Employee.TabelNumber AND Bug.Executor="+employee+" " +
        "AND Bug.Status=Status.NumStatus and Bug.Status="+status+" " +
        "AND Bug.Priority=Priority.NumPriority AND Bug.Priority="+priority;

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;Initial Catalog='forLab1';Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        conn.Open();
        SqlCommand cmd = new SqlCommand(query, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        DataTable dt = new DataTable();
        dt.Load(reader);
        DataView dv = new DataView(dt);
        usp.DataSource = dv;
        usp.DataBind();
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
    <form id="form1" runat="server">
        <table class="pageborder" border="0" width="1000">
            <tr>
                <td width="100%">
                    <span class="text1">Bug</span>
                        <br/>
                    <span class="text2">&nbsp; &nbsp; &nbsp; &nbsp; tracker</span>
                        <br/>
                    <hr class="line"/><hr class="line" width="70%" align="left"/>

                </td>
            </tr>
            <tr>
                <td style="height: 17px; text-align: right;" width="100%">   
                    <asp:LinkButton ID="LinkButton_emloyee" runat="server" style="text-decoration: none" PostBackUrl="~/Employee.aspx">Список сотрудников &nbsp;&nbsp;&nbsp;</asp:LinkButton></span>
                    <asp:LinkButton ID="LinkButton_default" runat="server" style="text-decoration: none" PostBackUrl="~/Default.aspx">Выбор &nbsp;&nbsp;</asp:LinkButton></span> 
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Просмотр</span>     
                </td>
            </tr>
            <tr>
                <td>
                     <table width="900" align="center" class="headborder">
                        <tr>
                            <td width="5%"><span class="headtext">№</span></td>
                            <td width="30%" align="center"><span class="headtext">Баг</span></td>
                            <td width="10%" align="center"><span class="headtext">Дата открытия</span></td>
                            <td width="10%" align="center"><span class="headtext">Проект</span></td>
                            <td width="10%" align="center"><span class="headtext">Модуль</span></td>
                            <td width="10%" align="center"><span class="headtext">Приоритет</span></td>
                            <td width="10%" align="center"><span class="headtext">Статус</span></td>
                            <td width="15%" align="center"><span class="headtext">Назначен</span></td>
                        </tr>
                    </table>
                    <table width="900" align="center" class="textborder">
                        <tr>
                            <td width="30%"><span class="headtext"></span></td>
                        </tr>
                    </table>
                    <asp:GridView ID="usp" align="center" runat="server" 
                        cssclass="textborder" AutoGenerateColumns="false" width="900" ShowHeader="false">
                        <RowStyle CssClass="tabletext"/>
                        <Columns>               
                            <asp:BoundField DataField="bugNum" ItemStyle-Width="5%"/>
                            <asp:BoundField DataField="brief" ItemStyle-Width="30%" ItemStyle-HorizontalAlign="Center"/>                    
                            <asp:BoundField DataField="dateOpen" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>  
                            <asp:BoundField DataField="project" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="module" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="priority" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="status" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="employee" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>                    
                        </Columns> 

                    </asp:GridView>

                </td>
            </tr>


        </table >
    </form>
</body>
</html>
>>>>>>> ea3b2ba72c01cb6b57aa922eaf4d090015fb624b
