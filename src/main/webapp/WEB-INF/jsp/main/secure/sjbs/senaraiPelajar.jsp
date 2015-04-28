<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>  
	<head>  
	    <title>Jualan - Sistem Buku Sekolah</title>
	    <link rel="stylesheet" href="resources/css/style.css" type="text/css">  
	    <!-- DataTables CSS -->
		<link rel="stylesheet" type="text/css" href="resources/css/dataTables.jqueryui.css">
		<link rel="stylesheet" type="text/css" href="resources/css/jquery-ui.css">
	</head>  
	<body>
		<div id="background">
		<div id="page">
			<div id="header">
				<div id="navigation">
				<li>
							<a href="profil">Profil</a>
						</li>
						<li class="selected">
							<a href="pengguna">Pengguna</a>
						</li>
						<li>
							<a href="senaraiPelajar">Pelajar</a>
						</li>
						<li>
							<a href="KeperluanAdmin">Keperluan</a>
						</li>
						<li>
							<a href="laporan">Laporan</a>
						</li>
						<li>
							<a href="sjbs/logout">Keluar</a>
						</li>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="senaraiPelajar" class="body">
<%--						<form:form  id="penggunaForm"> --%>
							 <fieldset><br>
								 <legend>SENARAI PELAJAR</legend>
								  <form action="CetakSenaraiPelajar.html" method="post"></form>
								    <label for="pilihanTahun">Pilihan Aliran/Tahun</label>
										<select id="pilihTahun">
										  <option value="1">1 Aktif</option>
										  <option value="2">1 Bestari</option>
										  <option value="3">1 Cerdas</option>
										  <option value="4">2 Aktif</option>
										  <option value="5">2 Bestari</option>
										  <option value="6">2 Cerdas</option>
										  <option value="7">3 Aktif</option>
										  <option value="8">3 Bestari</option>
										  <option value="9">3 Cerdas</option>
										  <option value="10">4 Aktif</option>
										  <option value="11">4 Bestari</option>
										  <option value="12">4 Cerdas</option>
										  <option value="13">5 Aktif</option>
										  <option value="14">5 Bestari</option>
										  <option value="15">5 Cerdas</option>
									  	  <option value="16">6 Aktif</option>
										  <option value="17">6 Bestari</option>
										  <option value="18">6 Cerdas</option>
										</select><br><br>
								  <table id="table_senaraiPelajar" class="display">
								  	 <thead>
								        <tr>
								            <th width="10%">Nama Pelajar</th>
											<th width="5%">No KP/SB</th>
											<th width="10%">Nama Penjaga/Ibu Bapa</th>
								        </tr>
								    </thead>
								    <tbody>
								    	 <tr>
										<td width="10%" align="center">Nor Afikah</td>
										<td width="5%">H 5364564 </td>
										<td width="10%" align="center">Mastas Awang Kechil</td>
									 </tr>
									 <tr>
										<td width="10%" align="center">Syazana</td>
										<td width="5%">H 5364588 </td>
										<td width="10%" align="center">Azlan</td>
									 </tr>
									 <tr>
										<td width="10%" align="center">Nurshahrul Aida Aizan</td>
										<td width="5%">H 5364598 </td>
										<td width="10%" align="center">Mat Roslan</td>
									 </tr>
								    </tbody>
								</table><br><br>
								<input type="button" id="kembali" value="Kembali">
								<button id="print" > Print</button></div>
							 </fieldset><br>
<%-- 							 </form:form> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<p>
				© 2023 by IKAH
			</p>
		</div>
	</div>
		<!-- jQuery -->
		<script type="text/javascript" charset="utf8" src="resources/js/dataTables.jqueryui.js"></script>
		<script type="text/javascript" charset="utf8" src="resources/js/jquery-1.11.1.min.js"></script>
		<script type="text/javascript" charset="utf8" src="resources/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
			
			$("#print").click(function(){
				window.open("http://localhost:9000/?report=sjbs-report/SenaraKeperluanPersekolahan2014.rpt");
			});
			
			
		    $('#table_senaraiPelajar').dataTable({
		    	jQueryUI: true,
		    	"aoColumns": [null,null,null,
				              //{"bSearchable":false,"bVisible":false},
				              //{"bSearchable":false,"bVisible":false}
				              ],
				//"fnRowCallback":function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
				//$('td:eq(0)', nRow).html('<center>'+ (iDisplayIndexFull + 1)+'</center>');
				//}
		    });
		    
		    $('.ui-default-state').hover(
		    		   function(){$(this).addClass('ui-hover-state');},
		    		   function(){$(this).removeClass('ui-hover-state');}
		    		);
		    
		} );
		</script>
	</body>  
</html>  
