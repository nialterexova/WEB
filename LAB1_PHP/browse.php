<?php
	$link = @mysql_connect("localhost", "root") or die("Невозможно соединиться с сервером");
	$db=@mysql_select_db("university") or die("Нет такой базы данных");

	@mysql_query("SET SESSION character_set_results = cp1251;");
	@mysql_query("SET SESSION Character_set_client = cp1251;");
	@mysql_query("SET SESSION Character_set_results = cp1251;");
	@mysql_query("SET SESSION Collation_connection = cp1251_general_ci;");
	@mysql_query("SET SESSION Character_set_connection = cp1251;");

    $gr = $_post['gr'];
    $usp_query="select `fio`, `subject`, `ocenka`, `data` from `uspev`, `student` where `uspev`.`student`= `student`.`zk` and `gr`=".$gr;
    $usp=mysql_query($usp_query);
    $usp_count = mysql_num_rows($usp);
?>


<html>
    <head>
        <title></title>
        <link href="images/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
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
						<table width="500" align="center" class="headborder">
                            <tr>
                                <td width="30%"><SPAN class="headtext">Студент</span></td>
                                <td width="30%" align="center"><span class="headtext">Дисциплина</span></td>
                                <td width="20%" align="center"><span class="headtext">Дата</span></td>
                                <td width="20%" align="center"><span class="headtext">Оценка</span></td>
                            </tr>
                        </table>
                        <table width="500" align="center" class="textborder">
                            <tr>
                                <td width="30%"><SPAN class="headtext"></span></td>
                            </tr>
                        </table>
                        <table width="500" align="center" class="textborder">
                        <?php
                            for($i=0;$i<$usp_count;$i++) {
                                ?>	
                                    <tr>
                                        <td width="30%">
                                            <span class="tabletext">
                                                <?php
                                                    echo mysql_result($usp,$i,0)							
                                                ?>
                                            </span>
                                        </td>
                                        <td width="30%">
                                            <span class="tabletext">
                                                <?php
                                                    echo mysql_result($usp,$i,1)							
                                                ?>
                                            </span>
                                        </td>
                                        <td width="20%">
                                            <span class="tabletext">
                                                <?php
                                                    echo mysql_result($usp,$i,3)							
                                                ?>
                                            </span>
                                        </td>
                                        <td width="20%">
                                            <span class="tabletext">
                                                <?php
                                                    echo mysql_result($usp,$i,2)							
                                                ?>
                                            </span>
                                        </td>
                                    </tr>
                                <?php
                            }
                        ?>

                        </table>
					</td>
				</tr> 
			</table >
    </body>
</html>