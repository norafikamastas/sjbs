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
		<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
		<style type="text/css">
			.ui-default-state { padding: .5em 1em; cursor: pointer; }
/* 			 form { padding: 60px; } */
	  		.error { border: 1px solid #b94a48!important; background-color: #fee!important; }
		</style>
	</head>  
	<body>
		<div id="background">
		<div id="page">
			<div id="header">
				<div id="navigation">
					<ul>
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
					</ul>
				</div>
			</div>
			<div id="contents">
<!-- 				<div class="box"> -->
					<div>
						<div id="admin" class="body">
							<form:form commandName="penggunaForm" name="penggunaForm" id="penggunaForm">
								<fieldset>
<!-- 								  	<legend>Pilihan</legend> -->
											<form:radiobutton path="pilihan" class="pilihan" id="daftarguru" value="1"/>
								  		<label class="ui-label" for="daftarguru">Daftar akaun guru :</label><br>
								  			<form:radiobutton path="pilihan" class="pilihan" id="hapusguru" value="2"/>
									  	<label class="ui-label" for="hapusguru">Hapus akaun guru :</label><br>
						  		</fieldset><br>
								<fieldset id="daftarAkaunGuru" hidden="hidden"><br>
								  <legend>Daftar Akaun Guru</legend>
								  <label class="ui-label" for="nama">Nama :</label>
								  	<form:input 
								  	data-rule-required="true" 
								  	data-msg-required="Ruangan ini diperlukan. Sila masukan nama." 
								  	path="nama" id="nama" name="nama" size="50" /><br><br>
								  <label class="ui-label" for="noPengenalan">No Pengenalan :</label>
								  	<form:input 
								  	data-rule-required="true" 
								  	data-msg-required="Ruangan ini diperlukan. Sila masukan kad pengenalan anda." 
								  	path="noPengenalan" id="noPengenalan" name="noPengenalan"  size="30"/><br><br>
								  <label class="ui-label" for="alamat">Alamat :</label>
								  	<textarea rows="2" cols="32" id="alamat" name="alamat">${penggunaForm.alamat}</textarea><br><br>
							  	  <label class="ui-label" for="negeri">Negeri :</label>
							  	  <form:select path="idKodNegeri" id="negeri">
							  	  	<form:option value=""></form:option>
							  		<form:options items="${listNegeri}" itemLabel="perihal" itemValue="id"/>
							  	  </form:select><br><br>
								  <label class="ui-label" for="bandar">Bandar :</label>
								  	<form:select path="idKodBandar" id="bandar">
<%-- 								  		<form:options items="${listBandar}" itemLabel="perihal" itemValue="id"/> --%>
								  	</form:select><br><br>
								  <label class="ui-label" for="poskod">Poskod :</label>
								  	<form:input path="poskod" id="poskod" name="poskod" size="10" /><br><br>
								  <label class="ui-label" for="telBimbit">Telefon Bimbit :</label>
								  	<form:input path="telBimbit" id="telBimbit" name="telBimbit" size="15" /><br><br>
								  <label class="ui-label" for="telefon">Telefon :</label>
								  	<form:input path="telefon" id="telefon" name="telefon" size="15" /><br><br>
								  <label class="ui-label" for="emel">Emel :</label>
								  	<form:input path="emel" id="emel" name="emel" size="30" /><br><br>
								  <label class="ui-label" for="idPengguna">ID Pengguna :</label>
								  	<form:input path="idPengguna" id="idPengguna" name="idPengguna" size="15" /><br><br>
								  <label class="ui-label" for="password">Katalaluan :</label>
								  	<form:input path="katalaluan" type="password" id="password" readonly="true" value="abc123" size="15" /><br><br>
								  <label class="ui-label" for="kodKategoriPengguna">Kod Kategori Pengguna :</label>
								  <form:select path="idKodKategoriPengguna" id="idKodKategoriPengguna">
							  	  	<form:option value=""></form:option>
							  		<form:options items="${listKategoriPengguna}" itemLabel="perihal" itemValue="id"/>
							  	  </form:select><br><br>
							 	</fieldset>
							 <fieldset id="hapusAkaunGuru" hidden="hidden">
								  	<legend>Hapus Akaun Guru</legend>
					  		</fieldset>
					  		<form:hidden path="masukOleh"/>
							 </form:form>
							 <fieldset id="simpan" hidden="hidden">
							 	<div align="center"><input type="button" id="bttnSimpan" value="Simpan" ></div>
							 	
					  		</fieldset><br>
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
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script type="text/javascript" charset="utf8" src="resources/js/dataTables.jqueryui.js"></script>
<!-- 		<script type="text/javascript" charset="utf8" src="resources/js/jquery-1.11.1.min.js"></script> -->
		<script type="text/javascript" charset="utf8" src="resources/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" charset="utf8" src="resources/js/jquery.form-3.14.js"></script>
		 <script src="resources/js/jquery-validate.js"></script>
   		<script src="resources/js/bootstrap.min.js"></script>
		

		<script type="text/javascript">
		$(document).ready(function() {
		
		$(document).on("click",".pilihan",function(){
			if($(this).val()=="1"){
				
				$("#daftarAkaunGuru").show();
				$("#hapusAkaunGuru").hide();
				$("#simpan").show();
			}else{
				$("#hapusAkaunGuru").show();
				$("#daftarAkaunGuru").hide();
				$("#simpan").hide();
			}
		});	
		
		$(document).on("change","#negeri",function(){
			url = "listBandar/"+$(this).val();
			$('#bandar').find('option').remove();
			$.get(url, function(datas) {
				$.each(datas, function(key, data) { 
					var option = $("<option></option>");
					option.attr("value", data[0]);
					option.text(data[1]);
					$("#bandar").append(option);
				});
			});
		});
		
	
		
	 	$(document).on("click","#bttnSimpan",function(){
	 		$("#penggunaForm").submit();
		} ); 
	 	
	 	$("#penggunaForm").validate({
	 		
	 		showErrors: function(errorMap, errorList) {
	 			
	 	          $.each(this.validElements(), function (index, element) {
	 	              var $element = $(element);
	 	              $element.data("title", "") // Clear the title - there is no error associated anymore
	 	                  .removeClass("error")
	 	                  .tooltip("destroy");
	 	          });

	 	          $.each(errorList, function (index, error) {
	 	              var $element = $(error.element);
	 	              $element.tooltip("destroy") // Destroy any pre-existing tooltip so we can repopulate with new tooltip content
	 	                  .data("title", error.message)
	 	                  .addClass("error")
	 	                  .tooltip(); // Create a new tooltip based on the error messsage we just set in the title
	 	          });
	 	      },
	 		/* rules: {
		         nama: {required: true},
		         noPengenalan: {required: true},
		         telBimbit: {required: true},
		         idPengguna: {required: true},
		         idKodKategoriPengguna: {required: true}
		         },
		         messages: {
			            nama: " Sila masukan Nama.",
			            noPengenalan: " Sila masukan No. Pengenalan.",
			            telBimbit: " Sila masukan No. Tel Bimbit.",
			            idPengguna: " Sila masukan ID Pengguna.",
		            	idKodKategoriPengguna: " Sila pilih Kategori Pengguna."
			            
			         }, */
			submitHandler : function(form) {
					jQuery(form).ajaxSubmit({
						url : "simpanPengguna/",
						success : function(data) {
							if(data == "success"){
								alert("Data berjaya disimpan!");
								window.location='pengguna';
							}else{
								alert(data+"!");
							}
						},
						error : function() {
							alert("Data tidak berjaya disimpan!");
						}
					});
			}
		});
		
		} );
		</script>
	</body>  
</html>  
<!-- <strong><a href="sjbs/logout">logout</a></strong>  -->