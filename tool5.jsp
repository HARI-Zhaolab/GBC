<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">

		<title>GBC Sene_Signature</title>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<meta name="description" content="">

		<!-- animate -->
		<link rel="stylesheet" href="css/animate.min.css">
		<!-- bootstrap -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- magnific pop up -->
		<link rel="stylesheet" href="css/magnific-popup.css">
		<!-- font-awesome -->
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- custom -->
		<link rel="stylesheet" href="css/style.css">
		
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="js/dataTable/jquery.dataTables.css">
  <link href="js/dataTable/dataTables.bootstrap4.min.css" rel="stylesheet">
  <script type="text/javascript" charset="utf8" src="js/dataTable/jquery.dataTables.js"></script>

	</head>
	<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">

		<!-- start navigation -->
<div class="container-fluid background-color">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">GBC Sene_Signature</span>
      </a>
      <ul class="nav nav-pills">
        <li class="nav-item"><a  href="tool1.jsp" class="nav-link ">Senescence Signature</a></li>
        <li class="nav-item"><a  href="tool2.jsp" class="nav-link ">Sene_Signature</a></li>
        <li class="nav-item"><a  href="tool3.jsp" class="nav-link ">Immunity</a></li>
        <li class="nav-item"><a  href="tool4.jsp" class="nav-link ">SNP&CNV</a></li>
        <li class="nav-item"><a  href="tool5.jsp" class="nav-link active">MicroRNA</a></li>
        <li class="nav-item"><a  href="tool6.jsp" class="nav-link ">Methylation</a></li>
        <li class="nav-item"><a  href="tool7.jsp" class="nav-link ">Clinical</a></li>
        <li class="nav-item"><a  href="tool8.jsp" class="nav-link ">Drug</a></li>
        <li class="nav-item"><a  href="download.jsp" class="nav-link">Download</a></li>
      </ul>
    </header>
  </div>
		<!-- end navigation -->

		<!-- start home -->
		<section class="text-center">
		  <div class="templatemo_headerimage">
		    <div class="flexslider">
		      <h2>Analyzing microRNA differences among different "Sene_Signature"groups</h2>
		    </div>
		  </div>				
		</section>
		<br/>
		<!-- end home -->
<div class="toolUp w-75 m-auto">

<div class="row">

<div class="col-5">
<div style="margin-left:-75px" class="fs-5 fw-bold">High Sene_Signature vs Low Sene_Signature</div>
<br/><br/><br/><br/>
<img src="images/tool5Re.png" style="width:524px;margin-left:-75px"/>
</div>

<div class="col-7">
<div class="fs-5 fw-bold">Differentially expressed microRNA between High and Low</div>
<br/>
<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>miRNA</th>
                <th>logFC</th>
                <th>AveExpr</th>
                <th>t</th>
                <th>P.Value</th>
                <th>adj.P.Val</th>
                <th>B</th>
            </tr>
        </thead>
    </table>
</div>


</div>



</div>

<style>
.toolUp{
	min-width:1300px;
	padding: 30px;
    border-radius: 6px;
    text-align: center;
/*     border: 2px solid rgb(0 123 255 / 20%); */
}
</style>
<script>
// new DataTable('#example', {
//     ajax: 'tool2Re/data/tool2Table.json'
// });
$('#example').DataTable({
	ajax: 'tool5Re/data/tool5Table.json'
})
</script>
		<!-- start footer -->
		<footer class="background-color">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-7">
						<p>Contact: XiaWu</p>
						<p>Email: wuxia&lt;at&gt;email.ncu.edu.cn(&lt;at&gt;Replace with@)</p>
						<a target="_blank" href="https://zhaoliminlab.cn/"><h3>https://zhaoliminlab.cn/</h3></a>
					</div>
				</div>
			</div>
		</footer>
		<!-- end footer -->


		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<!-- bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		<!-- isotope -->
		<script src="js/isotope.js"></script>
		<!-- images loaded -->
   		<script src="js/imagesloaded.min.js"></script>
   		<!-- wow -->
		<script src="js/wow.min.js"></script>
		<!-- smoothScroll -->
		<script src="js/smoothscroll.js"></script>
		<!-- jquery flexslider -->
		<script src="js/jquery.flexslider.js"></script>
		<!-- Magnific Pop up -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<!-- custom -->
		<script src="js/custom.js"></script>
	</body>
</html>