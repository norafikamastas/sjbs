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
							<a href="KemaskiniMaklumat">Kemaskini Maklumat Pelajar dan Guru</a>
						</li>
						<li>
							<a href="jualan">Mengemaskini Penjualan Buku</a>
						</li>
						<li>
							<a href="MaklumatBuku">Menguruskan Maklumat Buku</a>
						</li>
						<li>
							<a href="laporan">Menjana Laporan</a>
						</li>
						<li>
							<a href="sjbs/logout">Keluar</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="contents">
					<div>
						<div id="admin" class="body">
							
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
		</script>
	</body>  
</html>  
<!-- <strong><a href="sjbs/logout">logout</a></strong>  -->