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
						<li>
							<a href="senaraiPelajarGBesar">Senarai Pelajar</a>
						</li>
						<li>
							<a href="senaraiKeperluanGBesar">Senarai Peralatan</a>
						</li>
						<li>
							<a href="rekodItem">Rekod Item</a>
						</li>
						<li >
							<a href="laporan">Rekod Aliran</a>
						</li>
						<li class="selected">
							<a href="laporan">Jumlah Keseluruhan</a>
						</li>
						<li>
							<a href="sjbs/logout">Keluar</a>
						</li>
				</div>
			</div>
			<div id="contents">
				<div class="box">
					<div>
						<div id="senaraiPelajarGBesar" class="body">
<%--						<form:form  id="penggunaForm"> --%>
							 <fieldset><br>
								 <legend>REKOD JUALAN MENGIKUT ITEM</legend>
								  <form action="CetakSenaraiPelajar.html" method="post"></form>
								   
								  <table id="table_senaraiPelajar" class="display">
								  	 <thead>
								         <tr>
									<th width="5%">Bil</th>
									<th width="15%">Kenyataan</th>
									<th width="5%">Kuantiti</th>
									<th width="10%">Hasil Jualan</th>
									<th width="10%">Jumlah</th>
									</tr>
								  <tr>
									<td width="5%" align="center">1</td>
									<td width="10%"> Buku Garis Satu MSSD</td>
									<td width="5%" align="center">8000</td>
									<td width="10%" align="center">6000</td>
									<td width="10%" align="center">2000</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">2</td>
									<td width="10%"> Buku Garis Satu MSSJ</td>
									<td width="5%" align="center">8000</td>
									<td width="10%" align="center">6000</td>
									<td width="10%" align="center">2000</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">3</td>
									<td width="10%"> Buku Garis Satu Sekolah</td>
								<td width="5%" align="center">8000</td>
									<td width="10%" align="center">6000</td>
									<td width="10%" align="center">2000</td>
								  </tr>
								  <tr>
									<td width="5%" align="center">4</td>
									<td width="10%"> Buku Kotak Sedang</td>
									<td width="5%" align="center">8000</td>
									<td width="10%" align="center">6000</td>
									<td width="10%" align="center">2000</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">5</td>
									<td width="10%"> Buku Garis 4</td>
									<td width="5%" align="center">8000</td>
									<td width="10%" align="center">6000</td>
									<td width="10%" align="center">2000</td>
								  </tr>
								  <tr>
									<td width="5%" align="center">6</td>
									<td width="10%"> Buku Berita BM & BI</td>
									<td width="5%" align="center">5000</td>
									<td width="10%" align="center">4000</td>
									<td width="10%" align="center">1000</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">7</td>
									<td width="10%"> Buku Sains Praktikal</td>
									<td width="5%" align="center">4000</td>
									<td width="10%" align="center">3000</td>
									<td width="10%" align="center">1000</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">8</td>
									<td width="10%"> Buku Penulisan Sekolah</td>
									<td width="5%" align="center">5500</td>
									<td width="10%" align="center">5000</td>
									<td width="10%" align="center">500</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">9*</td>
									<td width="10%"> Buku Penilaian PAFA</td>
									<td width="5%" align="center">3800</td>
									<td width="10%" align="center">3600</td>
									<td width="10%" align="center">200</td>
								  </tr>
								  <tr>
									<td width="5%" align="center">10*</td>
									<td width="10%"> Fail Profil Murid</td>
									<td width="5%" align="center">800</td>
									<td width="10%" align="center">700</td>
									<td width="10%" align="center">100</td>
								</tr>
								  <tr>
									<td width="5%" align="center">11</td>
									<td width="10%"> Stokin MSSD</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">100</td>
									<td width="10%" align="center">650</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">12*</td>
									<td width="10%"> Kad Keahlian PSS </td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">650</td>
									<td width="10%" align="center">100</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">13*</td>
									<td width="10%"> Kad 001</td>
									<td width="5%" align="center">800</td>
									<td width="10%" align="center">790</td>
									<td width="10%" align="center">10</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">14*</td>
									<td width="10%"> Plastik Tanda Nama</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
									
								 </tr>
								  <tr>
									<td width="5%" align="center">15*</td>
									<td width="10%"> Buku Kem Bestari Solat</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								<tr>
									<td width="5%" align="center">16*</td>
									<td width="10%"> Ring Fail dan Portfolio KSSR</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								 <tr>
									<td width="5%" align="center">17</td>
									<td width="10%"> Buku Kotak Kecil</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">740</td>
									<td width="10%" align="center">10</td>
								 </tr>
								 <tr>
									<td width="5%" align="center">18</td>
									<td width="10%">Buku Sains / K T</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								 <tr>
									<td width="5%" align="center">19</td>
									<td width="10%">Buku Penulisan MGB</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">740</td>
									<td width="10%" align="center">10</td>
								 </tr>
								 <tr>
									<td width="5%" align="center">20</td>
									<td width="10%">Buku Ko Kurikulum</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">650</td>
									<td width="10%" align="center">100</td>
								 </tr>
								 </thead>
								 <tbody>
								 </tbody>
								 </table>


						<table id="table_bukukerja" class="display">
								  <tr>
									<th width="5%">Bil</th>
									<th width="15%">Kenyataan</th>
									<th width="5%">Kuantiti</th>
									<th width="10%">Hasil Jualan</th>
									<th width="10%">Jumlah</th>
								 </tr>
								  <tr>
									<td width="5%" align="center">1</td>
									<td width="10%"> Dokumen PBS Bahasa Melayu</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
									
								</tr>
								  <tr>
									<td width="5%" align="center">2</td>
									<td width="10%"> Dokumen PBS Bahasa Inggeris</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">3</td>
									<td width="10%"> Dokumen PBS Matematik</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								</tr>
								  <tr>
									<td width="5%" align="center">4</td>
									<td width="10%"> Dokumen PBS D.Sains dan Teknologi</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
							   </tr>
								  <tr>
									<td width="5%" align="center">5</td>
									<td width="10%"> Buku Instrumen Pen.Islam</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">6</td>
									<td width="10%"> Buku Instrumen Jawi</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">700</td>
									<td width="5%" align="center">50</td>
									
								</tr>
								<tr>
									<td width="5%" align="center">7</td>
									<td width="10%"> Buku Instrumen Bahasa Arab</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>
								</tr>
								
								<tr>
									<td width="5%" align="center">8</td>
									<td width="10%"> Hots Bahasa Melayu (Sasbadi)</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>
							  </tr>
								  <tr>
									<td width="5%" align="center">9</td>
									<td width="10%"> Hots Bahasa Inggeris(Sasbadi)</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>
								  </tr>
								  <tr>
									<td width="5%" align="center">10</td>
									<td width="10%"> Hots Matematik(Sasbadi)</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>
								  </tr>
								  <tr>
									<td width="5%" align="center">11</td>
									<td width="10%">Hots Sains(Sasbadi)</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>
								  </tr>
								  <tr>
									<td width="5%" align="center">12</td>
									<td width="10%"> Buku Rampaian P.Islam(My Books)</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>							
								  </tr>
								<tr>
									<td width="5%" align="center">13</td>
									<td width="10%"> Buku Rampaian B.Arab(My Books)</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">600</td>
									<td width="10%" align="center">150</td>
								</tr>
								<tbody>
								 </tbody>
								</table>
								  
								 <table id="table_pilihan" class="display">
								  <tr>
									<th width="5%">Bil</th>
									<th width="20%">Kenyataan</th>
									<th width="5%">Kuantiti</th>
									<th width="10%">Harga Jualan</th>
									<th width="10%">Jumlah</th>
								 </tr>
								<tr>
									<td width="5%" align="center">1</td>
									<td width="10%"> Tanda Nama </td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								</tr>
								  <tr>
									<td width="5%" align="center">2</td>
									<td width="10%"> Lencana</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">3</td>
									<td width="10%"> Tali Leher(Lelaki)</td>
									<td width="5%" align="center">300</td>
									<td width="10%" align="center">300</td>
									<td width="10%" align="center">0</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">4</td>
									<td width="10%">Buku Nilam BM & BI</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								  <tr>
									<td width="5%" align="center">5</td>
									<td width="10%"> Sampul Plastik</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								</tr>
								   <tr>
									<td width="5%" align="center">6</td>
									<td width="10%">Sumbangan MSSC 2014</td>
									<td width="5%" align="center">750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">750</td>
								 </tr>
								   <tr>
									<td width="5%" align="center">7</td>
									<td width="10%"> Sumbangan PIBG (1 Keluarga)</td>
									<td width="5%" align="center">-</td>
									<td width="10%" align="center">20.90</td>
									<td width="10%" align="center">20.90</td>
									</tr>
								   <tr>
									<td width="5%" align="center">8</td>
									<td width="10%"> Kamus J-Qaf</td>
									<td width="5%" align="center">1</td>
									<td width="10%" align="center">12.90</td>
									<td width="10%" align="center">12.90</td>
								  </tr>
								   <tr>
									<td width="5%" align="center">9</td>
									<td width="10%"> Dunia Sains dan Teknologi</td>
									<td width="5%" align="center">1</td>
									<td width="10%" align="center">12.50</td>
									<td width="10%" align="center">12.50</td>
									 </tr>
								   <tr>
									<td width="5%" align="center">10</td>
									<td width="10%"> Buku Peraturan Sekolah</td>
									<td width="5%" align="center"750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								</tr>
								  <tr>
									<td width="5%" align="center">11</td>
									<td width="10%">Buku Nilam BM & BI</td>
									<td width="5%" align="center"750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								</tr>
								  <tr>
									<td width="5%" align="center">12</td>
									<td width="10%"> Kamus J-Qaf</td>
									<td width="5%" align="center"750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								 </tr>
								   <tr>
									<td width="5%" align="center">13</td>
									<td width="10%"> Dunia Sains & Teknologi</td>
									<td width="5%" align="center"750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
								  </tr>
								   <tr>
									<td width="5%" align="center">14</td>
									<td width="10%"> Buku Peraturan Sekolah</td>
									<td width="5%" align="center"750</td>
									<td width="10%" align="center">750</td>
									<td width="10%" align="center">0</td>
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
