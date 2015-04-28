<%@ page contentType="text/html;charset=UTF-8" language="java" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>  
	<head>  
	    <title>${username} - Sistem Buku Sekolah</title>
	    <link rel="stylesheet" href="resources/css/style.css" type="text/css">  
	    <!-- DataTables CSS -->
		<link rel="stylesheet" type="text/css" href="resources/css/dataTables.jqueryui.css">
		<link rel="stylesheet" type="text/css" href="resources/css/jquery-ui.css">
		<style type="text/css">
			.ui-default-state { padding: .5em 1em; cursor: pointer; }
		</style>
	</head>  
	<body>
		<div id="background">
		<div id="page">
			<div id="header">
				<div id="navigation">
					<ul>
						<li class="selected">
							<a href="profil">Profil</a>
						</li>
						<c:if test="${kodKategoriPengguna eq 'ROLE_ADMIN'}">
						<li>
							<a href="pengguna">Pengguna</a>
						</li>
						<li>
							<a href="senaraiPelajar">Pelajar</a>
						</li>
						<li>
							<a href="senaraiKeperluan">Keperluan</a>
						</li>
						<li>
							<a href="laporan">Laporan</a>
						</li>
						</c:if>
						<c:if test="${kodKategoriPengguna eq 'ROLE_USER_GURU'}">
							<li>
								<a href="jualan">Jualan</a>
							</li>
							<li>
								<a href="daftarpelajar">Daftar Pelajar</a>
							</li>
						</c:if>
						<c:if test="${kodKategoriPengguna eq 'ROLE_USER_GURU_BESAR'}">
							<li>
								<a href="laporan">Laporan</a>
							</li>
						</c:if>
						<li>
							<a href="sjbs/logout">Keluar</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="contents">
<!-- 				<div class="box"> -->
					<div>
						<div id="guru" class="body">
							<form:form commandName="penggunaForm" action="sjbs/editPengguna" name="penggunaForm" id="penggunaForm">
								 <fieldset><br>
								  <legend>Maklumat Pelajar</legend>
								  <label class="ui-label" for="nama">Nama :</label>
								  	<form:input path="nama" id="nama" name="nama" size="50"/><br><br>
								  <label class="ui-label" for="noPengenalan">No KP/SB :</label>
								  	<form:input path="noPengenalan" id="noPengenalan" name="noPengenalan"  size="30"/><br><br>
								  <label class="ui-label" for="tarikhDaftar">Tarikh Daftar :</label>
								  	<form:input  disabled="true"  path="tarikhDaftar" id="tarikhDaftar" name="tarikhDaftar" size="15"/><br><br>
								  <label class="ui-label" for="alamat">Alamat :</label>
								  	<textarea rows="2" cols="32" id="alamat" name="alamat">${penggunaForm.alamat}</textarea><br><br>
								  <label class="ui-label" for="bandar">Bandar :</label>
								  	<form:select path="idKodBandar" id="bandar">
								  		<form:options items="${listBandar}" itemLabel="perihal" itemValue="id"/>
								  	</form:select><br><br>
								  <label class="ui-label" for="negeri">Negeri :</label>
								  	<form:select path="idKodNegeri" id="negeri">
								  		<form:options items="${listNegeri}" itemLabel="perihal" itemValue="id"/>
								  	</form:select><br><br>
								  <label class="ui-label" for="poskod">Poskod :</label>
								  	<form:input path="poskod" id="poskod" name="poskod" size="10" /><br><br>
								  <label class="ui-label" for="telBimbit">Telefon Bimbit :</label>
								  	<form:input path="telBimbit" id="telBimbit" name="telBimbit" size="15" /><br><br>
								  <label class="ui-label" for="telefon">Telefon :</label>
								  	<form:input path="telefon" id="telefon" name="telefon" size="15" /><br><br>
								  <label class="ui-label" for="tahun">Tahun :</label>
								  	<form:input path="tahun" id="tahun" name="tahun" size="30" /><br><br>
								
							 </fieldset><br>
							
							 </form:form>
						</div>
					</div>
<!-- 				</div> -->
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
		$(document).on("click","#change",function(){
			$("#KemaskiniPassword").show();
		});	
		

		} );
		</script>
	</body>  
</html>  
<!-- <strong><a href="sjbs/logout">logout</a></strong>  -->