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
					<ul>
						<li>
							<a href="profil">Profil</a>
						</li>
						<li class="selected">
							<a href="jualan">Jualan</a>
						</li>
						<li>
							<a href="senaraiPelajar">Pelajar</a>
						</li>
						<li>
							<a href="sjbs/logout">Keluar</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="jualan" class="body">
<%-- 						<form:form  id="penggunaForm"> --%>
							 <fieldset><br>
								  <legend>Maklumat Sekolah</legend>
								  <label class="ui-label" for="namaSekolah">Nama Sekolah :</label><output id="namaSekolah"> Sekolah Kebangsaan Pintas Puding</output><br><br>
								  <label class="ui-label" for="noTelSekolah">No Telefon :</label><output id="noTelSekolah"> 074544550</output><br><br>
								  <label class="ui-label" for="kodSekolah">Kod Sekolah :</label><output id="kodSekolah"> 86400</output><br><br>
							 </fieldset><br>
							 <fieldset><br>
								  <legend>Maklumat Guru</legend>
								  <label class="ui-label" for="namaGuru">Nama :</label><output id="namaGuru"> ${nama}</output><br><br>
								  <label class="ui-label" for="noTelGuru">No Tel :</label><output id="noTelGuru"> ${noTelefon}</output><br><br>
							 </fieldset><br>
							  <fieldset><br>
								  <legend>Carian Murid</legend>
								  <label class="ui-label" for="sijilLahir">No KP:</label><input type="text" class="ui-textfield" id="sijilLahir" name="No Sijil Lahir" placeholder="Cth:XOXO123" value=""><input type="submit" id="cari" class="ui-default-state" value="Cari"><br><br>
							 </fieldset><br>
							 <fieldset><br>
								  <legend>Maklumat Murid</legend>
								  <label class="ui-label" for="namaMurid">Nama :</label><output id="namaMurid"></output><br><br>
								   <label class="ui-label" for="aliran">Aliran :</label><output id="aliran"></output><br><br>
								  <label class="ui-label" for="noSijilLahir">No KP :</label><output id="nokp"></output><br><br>
								   <label class="ui-label" for="namaIbuBapa">Penjaga :</label><output id="namaIbuBapa"></output><br><br>
							 </fieldset><br>
							 <fieldset><br>
								  <legend>Maklumat Peralatan Dan Barangan</legend>
								  <table id="table_peralatan" class="display">
								     <thead>
									   <tr>
											<th>Bil</th>
											<th>Kenyataan</th>
											<th>Kuantiti</th>
											<th>Harga Seunit</th>
											<th>Jumlah</th>
										</tr>
								 </thead>
								 <tbody>
								 </tbody>
								 </table><br>
								
								 <div align="center"><button id="Simpan" > Simpan</button>
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
			
			
			$("#cari").click(function(){
				console.log($("#sijilLahir").val());
				url = "jualan/"+$("#sijilLahir").val();
				$.get(url, function(data) {
					console.log(data);
					$("#namaMurid").val(data[0][0]);
					$("#nokp").val(data[0][1]);
					$("#aliran").val(data[0][3]);
					$("#namaIbuBapa").val(data[0][2]);
					
					url1 = "jualan/carianKeperluan/"+data[0][3];
					$.get(url1, function(data1) {
						console.log(data1);
						$.each(data1, function(key, x) { 
							$("#table_peralatan").dataTable().fnAddData(
						    		[
						    		 ''
						    		,x[0]
						    		,drpdwn()
						    		,'<center>'+x[1]+'</center>'
						    		,''
						    		]);
						});
					});
				});
			});
			
			
		    $('#table_peralatan').dataTable({
		    	jQueryUI: true,
		    	"iDisplayLength" : 50,
		    	"aoColumns": [null,null,null,null,null,
				              //{"bSearchable":false,"bVisible":false},
				              //{"bSearchable":false,"bVisible":false}
				              ],
				"fnRowCallback":function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
				$('td:eq(0)', nRow).html('<center>'+ (iDisplayIndexFull + 1)+'</center>');
				}
		    });
		    
		   /*  $('#table_bukukerja').dataTable({
		    	jQueryUI: true,
		    	"aoColumns": [null,null,null,null,null,null,
				              //{"bSearchable":false,"bVisible":false},
				              //{"bSearchable":false,"bVisible":false}
				              ],
				"fnRowCallback":function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
				$('td:eq(0)', nRow).html('<center>'+ (iDisplayIndexFull + 1)+'</center>');
				}
		    });
		    
		    $('#table_pilihan').dataTable({
		    	jQueryUI: true,
		    	"sDom": '<"H">t<"F">',
		    	"aoColumns": [null,null,null,null,null,null,
				              //{"bSearchable":false,"bVisible":false},
				              //{"bSearchable":false,"bVisible":false}
				              ],
				"fnRowCallback":function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
				$('td:eq(0)', nRow).html('<center>'+ (iDisplayIndexFull + 1)+'</center>');
				}
		    });
		     */

		    for(var i=0;i<=50;i++){
		    	/* $("#table_peralatan").dataTable().fnAddData(
			    		[
			    		 ''
			    		,i
			    		,drpdwn()
			    		,i
			    		,i
			    		,i
			    		,i
			    		,i
			    		]
			   ); */
		    	/* $("#table_bukukerja").dataTable().fnAddData(
			    		[
			    		 ''
			    		,i
			    		,drpdwn()
			    		,i
			    		,i
			    		,i
			    		,i
			    		,i
			    		]
			   ); */
			}
		    
		    $('.ui-default-state').hover(
		    		   function(){$(this).addClass('ui-hover-state');},
		    		   function(){$(this).removeClass('ui-hover-state');}
		    		);
		    
		} );
    	
		function drpdwn(){
			var options = [];
			for(var x=1;x<=10;x++){
				options.push('<option value="'+x+'">'+x+'</option>');
			} 
			
			var select = '<center><select>'+options+'</select></center>';
			return select;
		}
		</script>
	</body>  
</html>  
