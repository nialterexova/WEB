<?php
	$link = @mysql_connect("localhost", "root") or die("Невозможно соединиться с сервером");
	$db=@mysql_select_db("university") or die("Нет такой базы данных");

	@mysql_query("SET SESSION character_set_results = cp1251;");
	@mysql_query("SET SESSION Character_set_client = cp1251;");
	@mysql_query("SET SESSION Character_set_results = cp1251;");
	@mysql_query("SET SESSION Collation_connection = cp1251_general_ci;");
	@mysql_query("SET SESSION Character_set_connection = cp1251;");

	$f_query="select * from `faculty`";
	$f=mysql_query($f_query);
	$f_count = mysql_num_rows($f);
	<?php
		for($i=0;$i<$f_count;$i++) {
			?>
				<option value="<?php echo mysql_result($f,$i,`id`)?>">
					<?php
						echo mysql_result($f,$i,`name`)
					?>	
				</option>
			<?php
		}
	?>

	$c_query="select * from `spec`";
	$c=mysql_query($c_query);
	$c_count = mysql_num_rows($c);
	<?php
		for($i=0;$i<$c_count;$i++) {
			?>
				<option value="<?php echo mysql_result($c,$i,`id`)?>">
					<?php
						echo mysql_result($c,$i,`name`)
					?>	
				</option>
			<?php
		}
	?>

	$g_query="select * from `gr`";
	$g=mysql_query($g_query);
	$g_count = mysql_num_rows($g);
	<?php
		for($i=0;$i<$g_count;$i++) {
			?>
				<option value="<?php echo mysql_result($g,$i,`id`)?>">
					<?php
						echo mysql_result($g,$i,`name`)
					?>	
				</option>
			<?php
		}
	?>
?>



<html>
	<head>
		<title>Успеваемость студентов</title>
		<link href="images/style.css" rel="stylesheet" type="text/css"/>
		<!-- <meta http-equiv="Content-Type" content="text/html; charset=windows-1251"> -->
		<script language="javascript">
			function check()
			{
				f = document.getElementById('faculty').value;
				s = document.getElementById('spec').value
				g = document.getElementById('gr').value;
				if(f=='0' || s=='0' || g=='0')
				{
				alert('Один из параметров не был выбран!');
				}
			}
		</script>

	</head>
	<body>
	<form id="form1" action="browse.php" method="post" onsubmit="javascript:check()">
        <table class="pageborder" border="0" width="600">
            <tr>
                <td width="100%">
                    <span class="text1">Успеваемость</span>
                        <br/>
                    <span class="text2">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; студентов</span>
                        <br/>
                    <hr class="line"/><hr class="line" width="70%" align="left"/>

                </td>
            </tr>
            <tr>
                <td style="height: 17px; text-align: right;" width="100%">   
                    <span style="color: #ff0000; font-size:13pt; font-family: 'Century Schoolbook'">Выбор &nbsp;&nbsp;</span> 
                    <span style="color: #669999; font-size:13pt; font-family: 'Century Schoolbook'">
						<a ref="javascript:document.form1.submit();"style="text-decoration: none">Просмотр</a>
					</span>
                </td>
            </tr>  
            <tr>
                <td><br/>
                    <table align="center" width="550">
                        <tr height="50px" valign="top">
                            <td style="width: 163px"><SPAN class="text3">Факультет</SPAN></td>
                            <td>
								<select name="faculty" style="width: 350px">
									<option selected="selected">Выбор факультета...</option>   
   								</select> 
                            </td>                                    
                        </tr>
                        <tr height="50px" valign="top">
                            <td style="width: 163px"><SPAN class="text3">Специальность</SPAN></td>
                            <td>
								<select name="spec" style="width: 350px">
									<option selected="selected">Выбор специальности...</option>   
   								</select> 
                            </td>                                    
                        </tr>
                        <tr height="50px" valign="top">
                            <td style="width: 163px"><SPAN class="text3">Группа</SPAN></td>
                            <td>
								<select name="gr" style="width: 350px">
									<option selected="selected">Выбор группы...</option>   
   								</select> 
                            </td>                                    
                        </tr>
                    </table>
                </td>
            </tr> 
        </table >
    </form> 
	</body>
</html>