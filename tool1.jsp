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
        <li class="nav-item"><a  href="tool1.jsp" class="nav-link active">Senescence Signature</a></li>
        <li class="nav-item"><a  href="tool2.jsp" class="nav-link">Sene_Signature</a></li>
        <li class="nav-item"><a  href="tool3.jsp" class="nav-link">Immunity</a></li>
        <li class="nav-item"><a  href="tool4.jsp" class="nav-link">SNP&CNV</a></li>
        <li class="nav-item"><a  href="tool5.jsp" class="nav-link">MicroRNA</a></li>
        <li class="nav-item"><a  href="tool6.jsp" class="nav-link">Methylation</a></li>
        <li class="nav-item"><a  href="tool7.jsp" class="nav-link">Clinical</a></li>
        <li class="nav-item"><a  href="tool8.jsp" class="nav-link">Drug</a></li>
        <li class="nav-item"><a  href="download.jsp" class="nav-link">Download</a></li>
      </ul>
    </header>
  </div>
		<!-- end navigation -->

		<!-- start home -->
		<section class="text-center">
		  <div class="templatemo_headerimage">
		    <div class="flexslider">
		      <h2 style="margin:auto;width: 80%;">Explore the senecence genes in elderly breast cancer patients to reveal their relationship with the Sene_Signature and cancer development.</h2>
		    </div>
		  </div>				
		</section>
		<!-- end home -->
<div class="toolUp w-75 m-auto">

<div class="row">

<div class="col-5">
	<div class="row">
	<div class="col-6 text-start fs-5 fw-bold">Senescence Signature</div>
	<div class="col-6 text-start fs-5 fw-bold">Senescence Signature</div>
	</div>
	
	<br/>
	
	<div class="row">
	<div class="col-3 text-start" style="border-bottom: 1px #000 solid;border-top: 1px #000 solid;border-left: 1px #000 solid;">
TP53<br/>
CDKN1A<br/>
CDKN2A<br/>
SIRT1<br/>
RB1<br/>
TERT<br/>
CDK4<br/>
CDKN2B<br/>
MAPK1<br/>
MAPK14<br/>
MTOR<br/>
TERF2<br/>
UBC<br/>
CDK6<br/>
	</div>
	<div class="col-3 text-start" style="border-bottom: 1px #000 solid;border-top: 1px #000 solid;border-right: 1px #000 solid;">
HMGA2<br/>
E2F1<br/>
CCNA2<br/>
MDM2<br/>
CXCL8<br/>
HSPA8<br/>
LMNB1<br/>
MAPK3<br/>
MAPKAPK5<br/>
ATM<br/>
CDKN1B
	</div>
	<div class="col-6">
		<input value="TP53" id="gene" type="text" class="btn btn-outline-primary w-100">
		<br/>
		<br/>
		<input id="submit" type="button" class="btn btn-outline-primary w-100" value="Submit">
	</div>
	</div>
</div>

<div class="col-7">
<div class="fs-5 fw-bold">Correlation between senescence-associated genes and Sene_Signature</div>
<img id="toolRe" style="height:450px" src="images/tool1Re.png"/>
</div>

</div>

<br/>

<div class="row" style="overflow:auto">
<div class="text-start fs-5 fw-bold">Gene ontology</div>
<table id="example1" class="display" style="width:100%">
	<thead>
		<tr>
<th>Pathway</th>
<th>ONTOLOGY</th>
<th>ID</th>
<th>Description</th>
<th>GeneRatio</th>
<th>BgRatio</th>
<th>pvalue</th>
<th>p.adjust</th>
<th>qvalue</th>
<th>geneID</th>
<th>Count</th>
		</tr>
	</thead>
</table>
</div>

<br/><br/>

<div class="row" style="overflow:auto">
<div class="text-start fs-5 fw-bold">Kyoto Encyclopedia of Genes and Genomes</div>
<table id="example2" class="display" style="width:100%">
	<thead>
		<tr>
<th>ID</th>
<th>ID</th>
<th>Description</th>
<th>GeneRatio</th>
<th>BgRatio</th>
<th>pvalue</th>
<th>p.adjust</th>
<th>qvalue</th>
<th>geneID</th>
<th>Count</th>
		</tr>
	</thead>
</table>
</div>

<br/><br/>

<div class="row">
<div class="text-start fs-5 fw-bold">co-expression analysis between senescence signature</div>
<div class="col-5">
	<br/>
	
	<div id="gene" class="row">
	<div class="col-2"></div>
	<div class="col-4 text-start" style="border-bottom: 1px #000 solid;border-top: 1px #000 solid;border-left: 1px #000 solid;">
<input value="TP53" type="checkbox" checked><span class="checkboxType"></span>TP53<br/>
<input value="CDKN1A" type="checkbox" checked><span class="checkboxType"></span>CDKN1A<br/>
<input value="CDKN2A" type="checkbox" ><span class="checkboxType"></span>CDKN2A<br/>
<input value="SIRT1" type="checkbox" ><span class="checkboxType"></span>SIRT1<br/>
<input value="RB1" type="checkbox" ><span class="checkboxType"></span>RB1<br/>
<input value="TERT" type="checkbox" ><span class="checkboxType"></span>TERT<br/>
<input value="CDK4" type="checkbox" ><span class="checkboxType"></span>CDK4<br/>
<input value="CDKN2B" type="checkbox" ><span class="checkboxType"></span>CDKN2B<br/>
<input value="MAPK1" type="checkbox" ><span class="checkboxType"></span>MAPK1<br/>
<input value="MAPK14" type="checkbox" ><span class="checkboxType"></span>MAPK14<br/>
<input value="MTOR" type="checkbox" ><span class="checkboxType"></span>MTOR<br/>
<input value="TERF2" type="checkbox" ><span class="checkboxType"></span>TERF2<br/>
<input value="UBC" type="checkbox" ><span class="checkboxType"></span>UBC<br/>
<input value="CDK6" type="checkbox" ><span class="checkboxType"></span>CDK6<br/>
	</div>
	<div class="col-4 text-start" style="border-bottom: 1px #000 solid;border-top: 1px #000 solid;border-right: 1px #000 solid;">
<input value="HMGA2" type="checkbox" ><span class="checkboxType"></span>HMGA2<br/>
<input value="E2F1" type="checkbox" ><span class="checkboxType"></span>E2F1<br/>
<input value="CCNA2" type="checkbox" ><span class="checkboxType"></span>CCNA2<br/>
<input value="MDM2" type="checkbox" ><span class="checkboxType"></span>MDM2<br/>
<input value="CXCL8" type="checkbox" ><span class="checkboxType"></span>CXCL8<br/>
<input value="HSPA8" type="checkbox" ><span class="checkboxType"></span>HSPA8<br/>
<input value="LMNB1" type="checkbox" ><span class="checkboxType"></span>LMNB1<br/>
<input value="MAPK3" type="checkbox" ><span class="checkboxType"></span>MAPK3<br/>
<input value="MAPKAPK5" type="checkbox" ><span class="checkboxType"></span>MAPKAPK5<br/>
<input value="ATM" type="checkbox" ><span class="checkboxType"></span>ATM<br/>
<input value="CDKN1B" type="checkbox" ><span class="checkboxType"></span>CDKN1B
	</div>
	<div class="col-2"></div>
	</div>
	<br/>
	<input id="submit2" type="button" class="btn btn-outline-primary w-100" value="Submit">
</div>

<div class="col-7">
<img id="toolRe2" style="height:450px" src="images/tool1Re2.png"/>
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
.checkboxType{
	margin:5px;
}
</style>
<script>
var table = $('#example1').DataTable({
	ajax: 'tool1Re/data/GO.json',
	'iDisplayLength':5,
	'aLengthMenu':[5,10,25,50,100]
})
var table = $('#example2').DataTable({
	ajax: 'tool1Re/data/KEGG.json',
	"columnDefs": [
		{ "visible": false, "targets": 0 },
	],
	'iDisplayLength':5,
	'aLengthMenu':[5,10,25,50,100]
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
<script>
$('#submit').click(function(){
// 	$('#toolRe').attr('src','images/sun.png')
	$('#toolRe').attr('src','images/loading.gif')
	$.get("tool1_re_back.jsp",
			{
			gene:$('#gene').val()
			},
			function(data){
				$('#toolRe').attr('src','tool1Re/'+$('#gene').val()+'.png')
		});
})

$('#submit2').click(function(){
	var gene="";
	var n=0;

	$('#gene input').each(function() {
	    if ($(this).is(":checked") == true) { 
	    	gene = gene+','+$(this).val()
	    	n=n+1;
	    }
	});
	
	if(n===2){
// 		$('#toolRe2').attr('src','images/sun.png')
		$('#toolRe2').attr('src','images/loading.gif')
		$.get("tool1_re_back2.jsp",
				{
			gene:gene
				},
				function(data){
					$('#toolRe2').attr('src','tool1Re/'+gene+'.png')
			});
	}else{
		alert('Please check two senescence signature');
	}
})
</script>
	</body>
</html>