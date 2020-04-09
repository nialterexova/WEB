<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="LAB1_ASP.Employee" %>

<%@Import Namespace="System.Data"%>
<%@Import Namespace="System.Data.SqlTypes"%>
<%@Import Namespace="System.Data.SqlClient"%>

<script language="C#" runat="server">
    void Page_Load(object sender, EventArgs e)
    {
        string query = "select rtrim(TabelNumber) as tabNum, rtrim(LastName) as lastName, " +
                "rtrim(FirstName) as firstName, rtrim(MiddleName) as middleName, " +
                "CONVERT(CHAR(25),BirthDate,104) as birthDate, rtrim(email) as email, " +
                "rtrim(PhoneNamber) as phone, rtrim(Department) as department, rtrim(Position) as position from Employee";
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
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Список сотрудников &nbsp;&nbsp;&nbsp;</span>
                    <asp:LinkButton ID="LinkButton_default" runat="server" style="text-decoration: none" PostBackUrl="~/Default.aspx">Выбор &nbsp;&nbsp;</asp:LinkButton></span> 
                    <asp:LinkButton ID="LinkButton1" runat="server" style="text-decoration: none" PostBackUrl="~/Default.aspx">Просмотр</asp:LinkButton></span>     
                </td>
            </tr>
            <tr>
                <td>
                     <table width="950" align="center" class="headborder">
                        <tr>
                            <td width="3%"><span class="headtext">№</span></td>
                            <td width="15%" align="center"><span class="headtext">Фамилия</span></td>
                            <td width="10%" align="center"><span class="headtext">Имя</span></td>
                            <td width="15%" align="center"><span class="headtext">Отчество</span></td>
                            <td width="11%" align="center"><span class="headtext">Дата рождения</span></td>
                            <td width="15%" align="center"><span class="headtext">Email</span></td>
                            <td width="11%" align="center"><span class="headtext">Телефон</span></td>
                            <td width="10%" align="center"><span class="headtext">Отдел</span></td>
                            <td width="10%" align="center"><span class="headtext">Должность</span></td>
                        </tr>
                    </table>
                    <table width="950" align="center" class="textborder">
                        <tr>
                            <td width="30%"><span class="headtext"></span></td>
                        </tr>
                    </table>
                    <asp:GridView ID="usp" align="center" runat="server" 
                        cssclass="textborder" AutoGenerateColumns="false" width="950" ShowHeader="false">
                        <RowStyle CssClass="tabletext"/>
                        <Columns>               
                            <asp:BoundField DataField="tabNum" ItemStyle-Width="3%"/>
                            <asp:BoundField DataField="lastName" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>                    
                            <asp:BoundField DataField="firstName" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>  
                            <asp:BoundField DataField="middleName" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="birthDate" ItemStyle-Width="11%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="email" ItemStyle-Width="15%" ItemStyle-HorizontalAlign="Center"/>                
                            <asp:BoundField DataField="phone" ItemStyle-Width="11%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="department" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                            <asp:BoundField DataField="position" ItemStyle-Width="10%" ItemStyle-HorizontalAlign="Center"/>
                        </Columns> 

                    </asp:GridView>

                </td>
            </tr>


        </table >
    </form>
</body>
</html>