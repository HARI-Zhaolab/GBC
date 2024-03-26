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
        <li class="nav-item"><a  href="tool3.jsp" class="nav-link active">Immunity</a></li>
        <li class="nav-item"><a  href="tool4.jsp" class="nav-link ">SNP&CNV</a></li>
        <li class="nav-item"><a  href="tool5.jsp" class="nav-link ">MicroRNA</a></li>
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
<!-- 		      <h2>Title</h2> -->
		    </div>
		  </div>				
		</section>
		<!-- end home -->
<div class="toolUp w-75 m-auto">

<div class="row">

<div class="col-4">
	<div class="row">
<!-- 	<div class="col-2"></div> -->
	<div class=" text-start fs-5 fw-bold">Immune infiltration algorithm</div>
	<div class="">
		<select class="btn btn-outline-primary w-100" id="method">
<option>MCPcounter</option>
<option>quantiseq</option>
<option>xCell</option>
<option>EPIC</option>
<option>TIME</option>
<option>cibersort</option>
<option>cibersort_abs</option>
<option>abis</option>
<option>tme</option>
<option>TIP</option>
<option>TISDB</option>
<option>estimate</option>
		</select>
	</div>
	</div>
	
	<br/>
	<div class="col text-start fs-4 fw-bold">Immune cells</div>
	<div class="row">
<!-- 	<div class="col-2"></div> -->
	
<div id="type" class="text-start">
<input value="T cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>T cell_MCPcounter<br/>
<input value="T cell CD8+_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_MCPcounter<br/>
<input value="cytotoxicity score_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>cytotoxicity score_MCPcounter<br/>
<input value="NK cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>NK cell_MCPcounter<br/>
<input value="B cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>B cell_MCPcounter<br/>
<input value="Monocyte_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Monocyte_MCPcounter<br/>
<input value="Macrophage/Monocyte_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Macrophage/Monocyte_MCPcounter<br/>
<input value="Myeloid dendritic cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell_MCPcounter<br/>
<input value="Neutrophil_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_MCPcounter<br/>
<input value="Endothelial cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Endothelial cell_MCPcounter<br/>
<input value="Cancer associated fibroblast_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Cancer associated fibroblast_MCPcounter<br/>
</div>


	</div>
	
	<br/>
	
	<div class="row">
		<input id="submit" type="button" class="btn btn-outline-primary w-100" value="Submit">
	</div>
</div>

<div class="col-8">
<div class="row">
<div class="col-2"></div>
<div class="col-8" >
<div class=" text-start fs-5 fw-bold">Lollipop chart of the correlation between Sene_Signature and immunity</div>
<img id="toolRe" style="height:450px" src="images/tool3Re.png"/>
</div>
</div>
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
	$('#toolRe').attr('src','images/loading.gif')
	
	var type="";

	$('#type input').each(function() {
	    if ($(this).is(":checked") == true) { 
	    	type = type+','+$(this).val()
	    }
	}); 
	$.get("tool3_re_back.jsp",
			{
			type:type,
			method:$('#method').val()
			},
			function(data){
				console.log('tool3Re/'+$('#method').val()+'.png')
				$('#toolRe').attr('src','tool3Re/'+data+'.png')
		});
})

var methodType = {
	MCPcounter:'<input value="T cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>T cell_MCPcounter<br/>'+
	'<input value="T cell CD8+_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_MCPcounter<br/>'+
	'<input value="cytotoxicity score_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>cytotoxicity score_MCPcounter<br/>'+
	'<input value="NK cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>NK cell_MCPcounter<br/>'+
	'<input value="B cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>B cell_MCPcounter<br/>'+
	'<input value="Monocyte_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Monocyte_MCPcounter<br/>'+
	'<input value="Macrophage/Monocyte_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Macrophage/Monocyte_MCPcounter<br/>'+
	'<input value="Myeloid dendritic cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell_MCPcounter<br/>'+
	'<input value="Neutrophil_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_MCPcounter<br/>'+
	'<input value="Endothelial cell_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Endothelial cell_MCPcounter<br/>'+
	'<input value="Cancer associated fibroblast_MCPcounter" type="checkbox" checked><span class="checkboxType"></span>Cancer associated fibroblast_MCPcounter<br/>',
	quantiseq:'<input value="B cell_quantiseq" type="checkbox" checked><span class="checkboxType"></span>B cell_quantiseq<br/>'+
	'<input value="Macrophage M1_quantiseq" type="checkbox" checked><span class="checkboxType"></span>Macrophage M1_quantiseq<br/>'+
	'<input value="Macrophage M2_quantiseq" type="checkbox" checked><span class="checkboxType"></span>Macrophage M2_quantiseq<br/>'+
	'<input value="Monocyte_quantiseq" type="checkbox" checked><span class="checkboxType"></span>Monocyte_quantiseq<br/>'+
	'<input value="Neutrophil_quantiseq" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_quantiseq<br/>'+
	'<input value="NK cell_quantiseq" type="checkbox" checked><span class="checkboxType"></span>NK cell_quantiseq<br/>'+
	'<input value="T cell CD4+ (non-regulatory)_quantiseq" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ (non-regulatory)_quantiseq<br/>'+
	'<input value="T cell CD8+_quantiseq" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_quantiseq<br/>'+
	'<input value="T cell regulatory (Tregs)_quantiseq" type="checkbox" checked><span class="checkboxType"></span>T cell regulatory (Tregs)_quantiseq<br/>'+
	'<input value="Myeloid dendritic cell_quantiseq" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell_quantiseq<br/>'+
	'<input value="uncharacterized cell_quantiseq" type="checkbox" checked><span class="checkboxType"></span>uncharacterized cell_quantiseq<br/>',
	xCell:'<input value="Myeloid dendritic cell activated_xCell" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell activated_xCell<br/>'+
	'<input value="B cell_xCell" type="checkbox" checked><span class="checkboxType"></span>B cell_xCell<br/>'+
	'<input value="T cell CD4+ memory_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ memory_xCell<br/>'+
	'<input value="T cell CD4+ naive_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ naive_xCell<br/>'+
	'<input value="T cell CD4+ (non-regulatory)_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ (non-regulatory)_xCell<br/>'+
	'<input value="T cell CD4+ central memory_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ central memory_xCell<br/>'+
	'<input value="T cell CD4+ effector memory_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ effector memory_xCell<br/>'+
	'<input value="T cell CD8+ naive_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+ naive_xCell<br/>'+
	'<input value="T cell CD8+_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_xCell<br/>'+
	'<input value="T cell CD8+ central memory_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+ central memory_xCell<br/>'+
	'<input value="T cell CD8+ effector memory_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+ effector memory_xCell<br/>'+
	'<input value="Class-switched memory B cell_xCell" type="checkbox" checked><span class="checkboxType"></span>Class-switched memory B cell_xCell<br/>'+
	'<input value="Common lymphoid progenitor_xCell" type="checkbox" checked><span class="checkboxType"></span>Common lymphoid progenitor_xCell<br/>'+
	'<input value="Common myeloid progenitor_xCell" type="checkbox" checked><span class="checkboxType"></span>Common myeloid progenitor_xCell<br/>'+
	'<input value="Myeloid dendritic cell_xCell" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell_xCell<br/>'+
	'<input value="Endothelial cell_xCell" type="checkbox" checked><span class="checkboxType"></span>Endothelial cell_xCell<br/>'+
	'<input value="Eosinophil_xCell" type="checkbox" checked><span class="checkboxType"></span>Eosinophil_xCell<br/>'+
	'<input value="Cancer associated fibroblast_xCell" type="checkbox" checked><span class="checkboxType"></span>Cancer associated fibroblast_xCell<br/>'+
	'<input value="Granulocyte-monocyte progenitor_xCell" type="checkbox" checked><span class="checkboxType"></span>Granulocyte-monocyte progenitor_xCell<br/>'+
	'<input value="Hematopoietic stem cell_xCell" type="checkbox" checked><span class="checkboxType"></span>Hematopoietic stem cell_xCell<br/>'+
	'<input value="Macrophage_xCell" type="checkbox" checked><span class="checkboxType"></span>Macrophage_xCell<br/>'+
	'<input value="Macrophage M1_xCell" type="checkbox" checked><span class="checkboxType"></span>Macrophage M1_xCell<br/>'+
	'<input value="Macrophage M2_xCell" type="checkbox" checked><span class="checkboxType"></span>Macrophage M2_xCell<br/>'+
	'<input value="Mast cell_xCell" type="checkbox" checked><span class="checkboxType"></span>Mast cell_xCell<br/>'+
	'<input value="B cell memory_xCell" type="checkbox" checked><span class="checkboxType"></span>B cell memory_xCell<br/>'+
	'<input value="Monocyte_xCell" type="checkbox" checked><span class="checkboxType"></span>Monocyte_xCell<br/>'+
	'<input value="B cell naive_xCell" type="checkbox" checked><span class="checkboxType"></span>B cell naive_xCell<br/>'+
	'<input value="Neutrophil_xCell" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_xCell<br/>'+
	'<input value="NK cell_xCell" type="checkbox" checked><span class="checkboxType"></span>NK cell_xCell<br/>'+
	'<input value="T cell NK_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell NK_xCell<br/>'+
	'<input value="Plasmacytoid dendritic cell_xCell" type="checkbox" checked><span class="checkboxType"></span>Plasmacytoid dendritic cell_xCell<br/>'+
	'<input value="B cell plasma_xCell" type="checkbox" checked><span class="checkboxType"></span>B cell plasma_xCell<br/>'+
	'<input value="T cell gamma delta_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell gamma delta_xCell<br/>'+
	'<input value="T cell CD4+ Th1_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ Th1_xCell<br/>'+
	'<input value="T cell CD4+ Th2_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ Th2_xCell<br/>'+
	'<input value="T cell regulatory (Tregs)_xCell" type="checkbox" checked><span class="checkboxType"></span>T cell regulatory (Tregs)_xCell<br/>'+
	'<input value="immune score_xCell" type="checkbox" checked><span class="checkboxType"></span>immune score_xCell<br/>'+
	'<input value="stroma score_xCell" type="checkbox" checked><span class="checkboxType"></span>stroma score_xCell<br/>'+
	'<input value="microenvironment score_xCell" type="checkbox" checked><span class="checkboxType"></span>microenvironment score_xCell<br/>',
	EPIC:'<input value="B cell_EPIC" type="checkbox" checked><span class="checkboxType"></span>B cell_EPIC<br/>'+
	'<input value="Cancer associated fibroblast_EPIC" type="checkbox" checked><span class="checkboxType"></span>Cancer associated fibroblast_EPIC<br/>'+
	'<input value="T cell CD4+_EPIC" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+_EPIC<br/>'+
	'<input value="T cell CD8+_EPIC" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_EPIC<br/>'+
	'<input value="Endothelial cell_EPIC" type="checkbox" checked><span class="checkboxType"></span>Endothelial cell_EPIC<br/>'+
	'<input value="Macrophage_EPIC" type="checkbox" checked><span class="checkboxType"></span>Macrophage_EPIC<br/>'+
	'<input value="NK cell_EPIC" type="checkbox" checked><span class="checkboxType"></span>NK cell_EPIC<br/>'+
	'<input value="uncharacterized cell_EPIC" type="checkbox" checked><span class="checkboxType"></span>uncharacterized cell_EPIC<br/>',
	TIME:':<input value="B cell_TIME" type="checkbox" checked><span class="checkboxType"></span>B cell_TIME<br/>'+
	'<input value="T cell CD4+_TIME" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+_TIME<br/>'+
	'<input value="T cell CD8+_TIME" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_TIME<br/>'+
	'<input value="Neutrophil_TIME" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_TIME<br/>'+
	'<input value="Macrophage_TIME" type="checkbox" checked><span class="checkboxType"></span>Macrophage_TIME<br/>'+
	'<input value="Myeloid dendritic cell_TIME" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell_TIME<br/>',
	cibersort:'<input value="B cell naive_cibersort" type="checkbox" checked><span class="checkboxType"></span>B cell naive_cibersort<br/>'+
	'<input value="B cell memory_cibersort" type="checkbox" checked><span class="checkboxType"></span>B cell memory_cibersort<br/>'+
	'<input value="B cell plasma_cibersort" type="checkbox" checked><span class="checkboxType"></span>B cell plasma_cibersort<br/>'+
	'<input value="T cell CD8+_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_cibersort<br/>'+
	'<input value="T cell CD4+ naive_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ naive_cibersort<br/>'+
	'<input value="T cell CD4+ memory resting_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ memory resting_cibersort<br/>'+
	'<input value="T cell CD4+ memory activated_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ memory activated_cibersort<br/>'+
	'<input value="T cell follicular helper_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell follicular helper_cibersort<br/>'+
	'<input value="T cell regulatory (Tregs)_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell regulatory (Tregs)_cibersort<br/>'+
	'<input value="T cell gamma delta_cibersort" type="checkbox" checked><span class="checkboxType"></span>T cell gamma delta_cibersort<br/>'+
	'<input value="NK cell resting_cibersort" type="checkbox" checked><span class="checkboxType"></span>NK cell resting_cibersort<br/>'+
	'<input value="NK cell activated_cibersort" type="checkbox" checked><span class="checkboxType"></span>NK cell activated_cibersort<br/>'+
	'<input value="Monocyte_cibersort" type="checkbox" checked><span class="checkboxType"></span>Monocyte_cibersort<br/>'+
	'<input value="Macrophage M0_cibersort" type="checkbox" checked><span class="checkboxType"></span>Macrophage M0_cibersort<br/>'+
	'<input value="Macrophage M1_cibersort" type="checkbox" checked><span class="checkboxType"></span>Macrophage M1_cibersort<br/>'+
	'<input value="Macrophage M2_cibersort" type="checkbox" checked><span class="checkboxType"></span>Macrophage M2_cibersort<br/>'+
	'<input value="Myeloid dendritic cell resting_cibersort" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell resting_cibersort<br/>'+
	'<input value="Myeloid dendritic cell activated_cibersort" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell activated_cibersort<br/>'+
	'<input value="Mast cell activated_cibersort" type="checkbox" checked><span class="checkboxType"></span>Mast cell activated_cibersort<br/>'+
	'<input value="Mast cell resting_cibersort" type="checkbox" checked><span class="checkboxType"></span>Mast cell resting_cibersort<br/>'+
	'<input value="Eosinophil_cibersort" type="checkbox" checked><span class="checkboxType"></span>Eosinophil_cibersort<br/>'+
	'<input value="Neutrophil_cibersort" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_cibersort<br/>',
	cibersort_abs:'<input value="B cell naive_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>B cell naive_cibersort_abs<br/>'+
	'<input value="B cell memory_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>B cell memory_cibersort_abs<br/>'+
	'<input value="B cell plasma_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>B cell plasma_cibersort_abs<br/>'+
	'<input value="T cell CD8+_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+_cibersort_abs<br/>'+
	'<input value="T cell CD4+ naive_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ naive_cibersort_abs<br/>'+
	'<input value="T cell CD4+ memory resting_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ memory resting_cibersort_abs<br/>'+
	'<input value="T cell CD4+ memory activated_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ memory activated_cibersort_abs<br/>'+
	'<input value="T cell follicular helper_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell follicular helper_cibersort_abs<br/>'+
	'<input value="T cell regulatory (Tregs)_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell regulatory (Tregs)_cibersort_abs<br/>'+
	'<input value="T cell gamma delta_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>T cell gamma delta_cibersort_abs<br/>'+
	'<input value="NK cell resting_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>NK cell resting_cibersort_abs<br/>'+
	'<input value="NK cell activated_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>NK cell activated_cibersort_abs<br/>'+
	'<input value="Monocyte_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Monocyte_cibersort_abs<br/>'+
	'<input value="Macrophage M0_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Macrophage M0_cibersort_abs<br/>'+
	'<input value="Macrophage M1_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Macrophage M1_cibersort_abs<br/>'+
	'<input value="Macrophage M2_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Macrophage M2_cibersort_abs<br/>'+
	'<input value="Myeloid dendritic cell resting_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell resting_cibersort_abs<br/>'+
	'<input value="Myeloid dendritic cell activated_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell activated_cibersort_abs<br/>'+
	'<input value="Mast cell activated_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Mast cell activated_cibersort_abs<br/>'+
	'<input value="Mast cell resting_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Mast cell resting_cibersort_abs<br/>'+
	'<input value="Eosinophil_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Eosinophil_cibersort_abs<br/>'+
	'<input value="Neutrophil_cibersort_abs" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_cibersort_abs<br/>',
	abis:'<input value="Monocyte conventional_abis" type="checkbox" checked><span class="checkboxType"></span>Monocyte conventional_abis<br/>'+
	'<input value="NK cell_abis" type="checkbox" checked><span class="checkboxType"></span>NK cell_abis<br/>'+
	'<input value="T cell CD8+ memory_abis" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+ memory_abis<br/>'+
	'<input value="T cell CD4+ naive_abis" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ naive_abis<br/>'+
	'<input value="T cell CD8+ naive_abis" type="checkbox" checked><span class="checkboxType"></span>T cell CD8+ naive_abis<br/>'+
	'<input value="B cell naive_abis" type="checkbox" checked><span class="checkboxType"></span>B cell naive_abis<br/>'+
	'<input value="T cell CD4+ memory_abis" type="checkbox" checked><span class="checkboxType"></span>T cell CD4+ memory_abis<br/>'+
	'<input value="T cell MAIT_abis" type="checkbox" checked><span class="checkboxType"></span>T cell MAIT_abis<br/>'+
	'<input value="T cell gamma delta VD2_abis" type="checkbox" checked><span class="checkboxType"></span>T cell gamma delta VD2_abis<br/>'+
	'<input value="Neutrophil_abis" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_abis<br/>'+
	'<input value="T cell gamma delta non-VD2_abis" type="checkbox" checked><span class="checkboxType"></span>T cell gamma delta non-VD2_abis<br/>'+
	'<input value="Basophil_abis" type="checkbox" checked><span class="checkboxType"></span>Basophil_abis<br/>'+
	'<input value="Monocyte non-conventional_abis" type="checkbox" checked><span class="checkboxType"></span>Monocyte non-conventional_abis<br/>'+
	'<input value="B cell memory_abis" type="checkbox" checked><span class="checkboxType"></span>B cell memory_abis<br/>'+
	'<input value="Myeloid dendritic cell_abis" type="checkbox" checked><span class="checkboxType"></span>Myeloid dendritic cell_abis<br/>'+
	'<input value="Plasmacytoid dendritic cell_abis" type="checkbox" checked><span class="checkboxType"></span>Plasmacytoid dendritic cell_abis<br/>'+
	'<input value="B cell plasma immature_abis" type="checkbox" checked><span class="checkboxType"></span>B cell plasma immature_abis<br/>',
	tme:'<input value="B_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>B_cells_consensus_tme<br/>'+
	'<input value="Cytotoxic_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Cytotoxic_cells_consensus_tme<br/>'+
	'<input value="Dendritic_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Dendritic_cells_consensus_tme<br/>'+
	'<input value="Eosinophils_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Eosinophils_consensus_tme<br/>'+
	'<input value="Macrophages_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Macrophages_consensus_tme<br/>'+
	'<input value="Mast_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Mast_cells_consensus_tme<br/>'+
	'<input value="NK_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>NK_cells_consensus_tme<br/>'+
	'<input value="Neutrophils_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Neutrophils_consensus_tme<br/>'+
	'<input value="T_cells_CD4_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>T_cells_CD4_consensus_tme<br/>'+
	'<input value="T_cells_CD8_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>T_cells_CD8_consensus_tme<br/>'+
	'<input value="T_cells_gamma_delta_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>T_cells_gamma_delta_consensus_tme<br/>'+
	'<input value="T_regulatory_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>T_regulatory_cells_consensus_tme<br/>'+
	'<input value="Macrophages_M1_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Macrophages_M1_consensus_tme<br/>'+
	'<input value="Macrophages_M2_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Macrophages_M2_consensus_tme<br/>'+
	'<input value="Endothelial_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Endothelial_consensus_tme<br/>'+
	'<input value="Fibroblasts_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Fibroblasts_consensus_tme<br/>'+
	'<input value="Monocytes_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Monocytes_consensus_tme<br/>'+
	'<input value="Plasma_cells_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Plasma_cells_consensus_tme<br/>'+
	'<input value="Immune_Score_consensus_tme" type="checkbox" checked><span class="checkboxType"></span>Immune_Score_consensus_tme<br/>',
	TIP:'<input value="Step1:Release of cancer cell antigens" type="checkbox" checked><span class="checkboxType"></span>Step1:Release of cancer cell antigens<br/>'+
	'<input value="Step2:Cancer antigen presentation" type="checkbox" checked><span class="checkboxType"></span>Step2:Cancer antigen presentation<br/>'+
	'<input value="Step3:Priming and activation" type="checkbox" checked><span class="checkboxType"></span>Step3:Priming and activation<br/>'+
	'<input value="Step4:Trafficking of immune cells to tumors" type="checkbox" checked><span class="checkboxType"></span>Step4:Trafficking of immune cells to tumors<br/>'+
	'<input value="Step5:Infiltration of immune cells into tumors" type="checkbox" checked><span class="checkboxType"></span>Step5:Infiltration of immune cells into tumors<br/>'+
	'<input value="Step6:Recognition of cancer cells by T cells" type="checkbox" checked><span class="checkboxType"></span>Step6:Recognition of cancer cells by T cells<br/>'+
	'<input value="Step7:Killing of cancer cells" type="checkbox" checked><span class="checkboxType"></span>Step7:Killing of cancer cells<br/>',
	TISDB:'<input value="Activated CD8 T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Activated CD8 T cell_TISDB<br/>'+
	'<input value="Central memory CD8 T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Central memory CD8 T cell_TISDB<br/>'+
	'<input value="Effector memeory CD8 T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Effector memeory CD8 T cell_TISDB<br/>'+
	'<input value="Activated CD4 T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Activated CD4 T cell_TISDB<br/>'+
	'<input value="Central memory CD4 T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Central memory CD4 T cell_TISDB<br/>'+
	'<input value="Effector memeory CD4 T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Effector memeory CD4 T cell_TISDB<br/>'+
	'<input value="T follicular helper cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>T follicular helper cell_TISDB<br/>'+
	'<input value="Gamma delta T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Gamma delta T cell_TISDB<br/>'+
	'<input value="Type 1 T helper cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Type 1 T helper cell_TISDB<br/>'+
	'<input value="Type 17 T helper cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Type 17 T helper cell_TISDB<br/>'+
	'<input value="Type 2 T helper cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Type 2 T helper cell_TISDB<br/>'+
	'<input value="Regulatory T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Regulatory T cell_TISDB<br/>'+
	'<input value="Activated B cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Activated B cell_TISDB<br/>'+
	'<input value="Immature  B cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Immature  B cell_TISDB<br/>'+
	'<input value="Memory B cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Memory B cell_TISDB<br/>'+
	'<input value="Natural killer cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Natural killer cell_TISDB<br/>'+
	'<input value="CD56bright natural killer cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>CD56bright natural killer cell_TISDB<br/>'+
	'<input value="CD56dim natural killer cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>CD56dim natural killer cell_TISDB<br/>'+
	'<input value="Myeloid derived suppressor cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Myeloid derived suppressor cell_TISDB<br/>'+
	'<input value="Natural killer T cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Natural killer T cell_TISDB<br/>'+
	'<input value="Activated dendritic cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Activated dendritic cell_TISDB<br/>'+
	'<input value="Plasmacytoid dendritic cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Plasmacytoid dendritic cell_TISDB<br/>'+
	'<input value="Immature dendritic cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Immature dendritic cell_TISDB<br/>'+
	'<input value="Macrophage_TISDB" type="checkbox" checked><span class="checkboxType"></span>Macrophage_TISDB<br/>'+
	'<input value="Eosinophil_TISDB" type="checkbox" checked><span class="checkboxType"></span>Eosinophil_TISDB<br/>'+
	'<input value="Mast cell_TISDB" type="checkbox" checked><span class="checkboxType"></span>Mast cell_TISDB<br/>'+
	'<input value="Monocyte_TISDB" type="checkbox" checked><span class="checkboxType"></span>Monocyte_TISDB<br/>'+
	'<input value="Neutrophil_TISDB" type="checkbox" checked><span class="checkboxType"></span>Neutrophil_TISDB<br/>'+
	'<input value="chemokine_TISDB" type="checkbox" checked><span class="checkboxType"></span>chemokine_TISDB<br/>'+
	'<input value="Immunostimulator_TISDB" type="checkbox" checked><span class="checkboxType"></span>Immunostimulator_TISDB<br/>'+
	'<input value="receptor_TISDB" type="checkbox" checked><span class="checkboxType"></span>receptor_TISDB<br/>'+
	'<input value="MHC_TISDB" type="checkbox" checked><span class="checkboxType"></span>MHC_TISDB<br/>'+
	'<input value="Immunoinhibitor_TISDB" type="checkbox" checked><span class="checkboxType"></span>Immunoinhibitor_TISDB<br/>',
	estimate:'<input value="StromalScore" type="checkbox" checked><span class="checkboxType"></span>StromalScore<br/>'+
	'<input value="ImmuneScore" type="checkbox" checked><span class="checkboxType"></span>ImmuneScore<br/>'+
	'<input value="ESTIMATEScore" type="checkbox" checked><span class="checkboxType"></span>ESTIMATEScore<br/>'+
	'<input value="TumorPurity" type="checkbox" checked><span class="checkboxType"></span>TumorPurity<br/>'
};
$('#method').change(function(data){
	var method = $('#method').val();
	$('#type').empty();
	console.log(methodType[method])
	$('#type').append(methodType[method])
})
</script>
	</body>
</html>