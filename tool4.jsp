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
        <li class="nav-item"><a  href="tool1.jsp" class="nav-link ">Senescence Signature</a></li>
        <li class="nav-item"><a  href="tool2.jsp" class="nav-link ">Sene_Signature</a></li>
        <li class="nav-item"><a  href="tool3.jsp" class="nav-link ">Immunity</a></li>
        <li class="nav-item"><a  href="tool4.jsp" class="nav-link active">SNP&CNV</a></li>
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
		      <h2>Analyzing the relationship between "Sene_Signature" and mutations</h2>
		    </div>
		  </div>				
		</section>
		<br/>
		<!-- end home -->
<div class="toolUp w-75 m-auto">

<div class="row">

<div class="col-4">
	<div class="row">
<!-- 	<div class="col-2"></div> -->
	<div class="col-4 text-start fs-4 fw-bold">Type</div>
	<div class="col-8">
		<select class="btn btn-outline-primary w-100" id="type">
<option>SNP</option>
<option>CNV</option>
		</select>
	</div>
	</div>
	
	<br/>
	
	<div class="row">
<!-- 	<div class="col-2"></div> -->
	<div class="col-4 text-start fs-4 fw-bold">Patients</div>
	<div class="col-8">
		<select class="btn btn-outline-primary w-100" id="clinical">
			<option value="All">All patients</option>
			<option value="High">High sene signature patients</option>
			<option value="Low">Low sene signature patients</option>
		</select>
	</div>
	</div>
	
	<br/>
	
	<div class="row">
<!-- 	<div class="col-2"></div> -->
	<div class="col-4"></div>
	<div class="col-8">
		<input id="submit" type="button" class="btn btn-outline-primary w-100" value="Submit">
	</div>
	</div>
</div>

<div class="col-8">
<div class="row">
<div class="col-2"></div>
<div class="col-10" >
<div id="toolTitle1" class="fs-5 fw-bold">Summary of mutation landscape</div>
<div style="display:none" id="toolTitle1_1" class="fs-5 fw-bold">Showed patients distinguishing composite copy number profiles: <br/>gistic score and frequency</div>
<img id="toolRe1" style="height:450px" src="tool4Re/SNPAll1.png"/>
</div>
</div>
</div>

</div>

<br/><br/>

<div class="row">
<div class="col-4">
<div id="toolTitle2" class="fs-5 fw-bold">Oncoplot for selected mutated genes</div>
<img id="toolRe2" style="height:450px" src="tool4Re/SNPAll2.png"/>
</div>

<div class="col-8">
<div class="row">
<div class="col-2"></div>
<div class="col-10" >
<div id="toolTitle3" class="fs-5 fw-bold">Somatic mutation interactions</div>
<img id="toolRe3" style="height:450px" src="tool4Re/SNPAll3.png"/>
</div>
</div>
</div>
</div>

<div class="row" style="" id="tool4Table">
<div id="tableHigh" style="display:none">
<div class="text-start fs-5 fw-bold">Output results of GISTIC</div>
<table id="High" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Type</th>
                <th>Chromosome</th>
                <th>Start</th>
                <th>End</th>
                <th>-log10(q-value)</th>
                <th>G-score</th>
                <th>average amplitude</th>
                <th>frequency</th>
            </tr>
        </thead>
</table>
</div>
<div id="tableLow" style="display:none">
<div class="text-start fs-5 fw-bold">Output results of GISTIC</div>
<table id="Low" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Type</th>
                <th>Chromosome</th>
                <th>Start</th>
                <th>End</th>
                <th>-log10(q-value)</th>
                <th>G-score</th>
                <th>average amplitude</th>
                <th>frequency</th>
            </tr>
        </thead>
</table>
</div>
<div id="tableAll" style="display:none">
<div class="text-start fs-5 fw-bold">Output results of GISTIC</div>
<table id="All" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Type</th>
                <th>Chromosome</th>
                <th>Start</th>
                <th>End</th>
                <th>-log10(q-value)</th>
                <th>G-score</th>
                <th>average amplitude</th>
                <th>frequency</th>
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
$('#High').DataTable({
	ajax: 'tool4Re/data/tool4TableHigh.txt'
})
$('#Low').DataTable({
	ajax: 'tool4Re/data/tool4TableLow.txt'
})
$('#All').DataTable({
	ajax: 'tool4Re/data/tool4TableAll.txt'
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
	$('#toolRe1').attr('src','images/loading.gif');
	$('#toolRe2').attr('src','images/loading.gif');
	$('#toolRe3').attr('src','images/loading.gif');
	var type = $('#type').val();
	var clinical = $('#clinical').val();
	
	if(type=="SNP"){
		$('#toolTitle1').css('display','block');
		$('#toolTitle2').css('display','block');
		$('#toolTitle3').css('display','block');
		$('#toolTitle1_1').css('display','none');
		
		$('#toolRe1').attr('src','tool4Re/'+type+clinical+'1.png');
		$('#toolRe2').attr('src','tool4Re/'+type+clinical+'2.png');
		$('#toolRe3').attr('src','tool4Re/'+type+clinical+'3.png');
		$('#toolRe1').css('height','450px');
		$('#toolRe2').css('height','450px');
		$('#toolRe3').css('height','450px');
		$('#toolRe2').css('display','block');
		$('#tableHigh').css('display','none');
		$('#tableLow').css('display','none');
		$('#tableAll').css('display','none');
// 		$.get("tool4_re_back.jsp",
// 				{
// 				type:type,
// 				clinical:clinical
// 				},
// 				function(data){
// 					$('#toolRe1').attr('src','tool4Re/'+type+clinical+'1.png');
// 					$('#toolRe2').attr('src','tool4Re/'+type+clinical+'2.png');
// 					$('#toolRe3').attr('src','tool4Re/'+type+clinical+'3.png');
// 					$('#toolRe1').css('height','450px');
// 					$('#toolRe2').css('height','450px');
// 					$('#toolRe3').css('height','450px');
// 					$('#toolRe2').css('display','block');
// 					$('#tableHigh').css('display','none');
// 					$('#tableLow').css('display','none');
// 					$('#tableAll').css('display','none');
// 			});
	}else{
		$('#toolTitle1').css('display','none');
		$('#toolTitle2').css('display','none');
		$('#toolTitle3').css('display','none');
		$('#toolTitle1_1').css('display','block');
		
		$('#toolRe2').css('display','none');
		$('#toolRe1').css('height','150px');
		$('#toolRe3').css('height','150px');
		$('#tool4Table').css('dispaly','block');
		
		if(clinical=="High"){
			$('#tableHigh').css('display','block');
			$('#tableLow').css('display','none');
			$('#tableAll').css('display','none');
			$('#tableHigh').css('width','100%');
			
			$('#toolRe1').attr('src','images/tool4ReHigh1.png');
			$('#toolRe3').attr('src','images/tool4ReHigh2.png');
			
// 			$('#High').DataTable({
// 		 		ajax: 'tool4Re/data/tool4TableHigh.txt'
// 			})
		}else if(clinical=="Low"){
			$('#tableHigh').css('display','none');
			$('#tableLow').css('display','block');
			$('#tableAll').css('display','none');
			$('#tableLow').css('width','100%');
			
			$('#toolRe1').attr('src','images/tool4ReLow1.png');
			$('#toolRe3').attr('src','images/tool4ReLow2.png');
			
// 			$('#Low').DataTable({
// 		 		ajax: 'tool4Re/data/tool4TableLow.txt'
// 			})
		}else{
			$('#tableHigh').css('display','none');
			$('#tableLow').css('display','none');
			$('#tableAll').css('display','block');
			$('#tableAll').css('width','100%');
			
			$('#toolRe1').attr('src','images/tool4ReAll1.png');
			$('#toolRe3').attr('src','images/tool4ReAll2.png');
		}
	}
})
// $('#type').change(function(data){
// 	var type = $('#type').val();
// 	if(type=="SNP"){
// 		$('#clinical').empty();
// 		$('#clinical').append("<option>T Stage</option>")
// 	}else{
// 		$('#clinical').empty();
// 		$('#clinical').append("<option>All</option>")
// 		$('#clinical').append("<option>High</option>")
// 		$('#clinical').append("<option>Low</option>")
// 	}
// })
</script>
	</body>
</html>