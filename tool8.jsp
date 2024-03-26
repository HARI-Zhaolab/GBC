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
<div class="container-fluid background-color" >
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
        <li class="nav-item"><a  href="tool5.jsp" class="nav-link ">MicroRNA</a></li>
        <li class="nav-item"><a  href="tool6.jsp" class="nav-link ">Methylation</a></li>
        <li class="nav-item"><a  href="tool7.jsp" class="nav-link ">Clinical</a></li>
        <li class="nav-item"><a  href="tool8.jsp" class="nav-link active">Drug</a></li>
        <li class="nav-item"><a  href="download.jsp" class="nav-link">Download</a></li>
      </ul>
    </header>
  </div>
		<!-- end navigation -->

		<!-- start home -->
		<section class="text-center">
		  <div class="templatemo_headerimage">
		    <div class="flexslider">
		      <h2>Analyzing the differences in drug sensitivity among different "Sene_Signature" groups</h2>
		    </div>
		  </div>				
		</section>
		<br/>
		<!-- end home -->
<div class="toolUp w-75 m-auto">

<div class="row">

<div class="col-4">
	<form id="tool8Form" action="UploadServletTool8" enctype ="multipart/form-data" method= "post">
	
	<div class="row">
		<div class="col-6 text-start fs-4 fw-bold">Data_input </div>
		<div class="col-6">
			<input id="tool8File1" name="data" type="file">
		</div>
	</div>
	<br/>
	
	<div class="row">
		<div class="col-6 text-start fs-4 fw-bold">Signature_input </div>
		<div class="col-6">
			<input id="tool8File2" name="signature" type="file">
		</div>
	</div>
	<br/>
	
	<div class="row">
	<div class="col-6 text-start fs-4 fw-bold">Drug </div>
	<div class="col-6">
	<select name="drug" class="btn btn-outline-primary w-100" id="drug">
<option>A.443654_86</option>
<option>A.770041_55</option>
<option>A.83.01_477</option>
<option>ABT737_1910</option>
<option>Acetalax_1804</option>
<option>ACY.1215_264</option>
<option>Afatinib_1032</option>
<option>Afatinib_1377</option>
<option>Afuresertib_1912</option>
<option>AGI.5198_1913</option>
<option>AGI.6780_1634</option>
<option>AGI.6780_562</option>
<option>AICA.Ribonucleotide_1001</option>
<option>AKT.inhibitor.VIII_171</option>
<option>AKT.inhibitor.VIII_228</option>
<option>Alectinib_281</option>
<option>Alisertib_1051</option>
<option>Alisertib_431</option>
<option>Alpelisib_1560</option>
<option>AMG.319_2045</option>
<option>Amuvatinib_293</option>
<option>Apitolisib_382</option>
<option>AR.42_272</option>
<option>Ara.G_427</option>
<option>ARRY.520_474</option>
<option>AS601245_207</option>
<option>AS605240_224</option>
<option>AST.1306_381</option>
<option>AT.7519_219</option>
<option>AT13148_2170</option>
<option>AT7867_356</option>
<option>Avagacestat_1072</option>
<option>Avagacestat_205</option>
<option>Axitinib_1021</option>
<option>AZ20_1184</option>
<option>AZ6102_2109</option>
<option>AZ628_29</option>
<option>AZ960_1250</option>
<option>AZD1208_1449</option>
<option>AZD1332_1463</option>
<option>AZD1480_1432</option>
<option>AZD2014_1441</option>
<option>AZD3514_1382</option>
<option>AZD3759_1915</option>
<option>AZD4547_1135</option>
<option>AZD4547_1497</option>
<option>AZD4547_1786</option>
<option>AZD4877_1409</option>
<option>AZD5153_1706</option>
<option>AZD5363_1916</option>
<option>AZD5438_1401</option>
<option>AZD5582_1427</option>
<option>AZD5582_1617</option>
<option>AZD5991_1720</option>
<option>AZD6094_1403</option>
<option>AZD6482_1066</option>
<option>AZD6482_156</option>
<option>AZD6482_2169</option>
<option>AZD6738_1394</option>
<option>AZD6738_1917</option>
<option>AZD7762_1022</option>
<option>AZD7762_1402</option>
<option>AZD7969_1426</option>
<option>AZD8055_1059</option>
<option>AZD8186_1444</option>
<option>AZD8186_1918</option>
<option>AZD8835_1445</option>
<option>AZD8931_1416</option>
<option>BAM7_552</option>
<option>BAY.61.3606_178</option>
<option>BDP.00009066_1866</option>
<option>Belinostat_274</option>
<option>Bexarotene_186</option>
<option>BI.2536_1086</option>
<option>BI.2536_60</option>
<option>BIBF.1120_380</option>
<option>BIBR.1532_2043</option>
<option>Bicalutamide_150</option>
<option>Bicalutamide_1502</option>
<option>BIX02189_279</option>
<option>Bleomycin_190</option>
<option>Bleomycin..10.uM._1392</option>
<option>Bleomycin..50.uM._1378</option>
<option>BMS.345541_1249</option>
<option>BMS.345541_203</option>
<option>BMS.509744_63</option>
<option>BMS.536924_1091</option>
<option>BMS.536924_62</option>
<option>BMS.754807_184</option>
<option>BMS.754807_2171</option>
<option>Bortezomib_104</option>
<option>Bortezomib_1191</option>
<option>Bosutinib_1019</option>
<option>BPD.00008900_1998</option>
<option>BPTES_1425</option>
<option>Brivanib..BMS.540215_376</option>
<option>Bryostatin.1_197</option>
<option>Buparlisib_1873</option>
<option>BX.912_222</option>
<option>BX795_1037</option>
<option>C.75_435</option>
<option>Cabozantinib_249</option>
<option>Camptothecin_1003</option>
<option>CAP.232..TT.232..TLN.232_436</option>
<option>Capivasertib_1136</option>
<option>Carmustine_1807</option>
<option>CAY10566_416</option>
<option>CAY10603_276</option>
<option>CCT.018159_1170</option>
<option>CCT007093_1067</option>
<option>CD532_449</option>
<option>CDK9_5038_1709</option>
<option>CDK9_5576_1708</option>
<option>Cediranib_1922</option>
<option>Cetuximab_1114</option>
<option>CGP.082996_54</option>
<option>CGP.60474_53</option>
<option>CHIR.99021_1241</option>
<option>CHIR.99021_154</option>
<option>CI.1033_362</option>
<option>CI.1040_1015</option>
<option>Cisplatin_1005</option>
<option>Cisplatin_1496</option>
<option>CMK_64</option>
<option>CP466722_152</option>
<option>CP724714_255</option>
<option>CPI.613_415</option>
<option>Crizotinib_1083</option>
<option>Crizotinib_37</option>
<option>CUDC.101_273</option>
<option>CX.5461_300</option>
<option>Cyclopamine_17</option>
<option>Cyclophosphamide_1512</option>
<option>Cytarabine_1006</option>
<option>CZC24832_1615</option>
<option>Dabrafenib_1373</option>
<option>Dacinostat_200</option>
<option>Dactinomycin_1811</option>
<option>Dactinomycin_1911</option>
<option>Dactolisib_1057</option>
<option>Daporinad_1248</option>
<option>Dasatinib_1079</option>
<option>Dasatinib_51</option>
<option>Dihydrorotenone_1827</option>
<option>Dinaciclib_1180</option>
<option>DMOG_165</option>
<option>Docetaxel_1007</option>
<option>Docetaxel_1819</option>
<option>Doramapimod_1042</option>
<option>Doxorubicin_133</option>
<option>Doxorubicin_1386</option>
<option>Dyrk1b_0191_1407</option>
<option>eEF2K.Inhibitor..A.484954_409</option>
<option>Eg5_9814_1712</option>
<option>EHT.1864_1069</option>
<option>Elephantin_1835</option>
<option>Elesclomol_1031</option>
<option>Embelin_172</option>
<option>Entinostat_1593</option>
<option>Entinostat_88</option>
<option>Entospletinib_1630</option>
<option>Enzastaurin_229</option>
<option>EphB4_9721_1413</option>
<option>Epirubicin_1511</option>
<option>Epothilone.B_201</option>
<option>EPZ004777_1237</option>
<option>EPZ5676_1563</option>
<option>ERK_2440_1713</option>
<option>ERK_6604_1714</option>
<option>Erlotinib_1</option>
<option>Erlotinib_1168</option>
<option>Etoposide_134</option>
<option>ETP.45835_447</option>
<option>Fedratinib_306</option>
<option>FEN1_3940_1419</option>
<option>FGFR_0939_1421</option>
<option>FGFR_3831_1422</option>
<option>FH535_173</option>
<option>Flavopiridol_432</option>
<option>Fludarabine_1813</option>
<option>FMK_231</option>
<option>Foretinib_2040</option>
<option>Foretinib_308</option>
<option>FR.180204_263</option>
<option>FTI.277_166</option>
<option>FTY.720_546</option>
<option>Fulvestrant_1200</option>
<option>Fulvestrant_1414</option>
<option>Fulvestrant_1816</option>
<option>Gallibiscoquinazole_1830</option>
<option>GDC0810_1925</option>
<option>Gefitinib_1010</option>
<option>Gemcitabine_1190</option>
<option>Gemcitabine_135</option>
<option>Gemcitabine_1393</option>
<option>Genentech.Cpd.10_225</option>
<option>GNE.317_1926</option>
<option>GNF.2_52</option>
<option>GSK1059615_374</option>
<option>GSK1070916_226</option>
<option>GSK1904529A_1093</option>
<option>GSK1904529A_202</option>
<option>GSK2578215A_1927</option>
<option>GSK2606414_1618</option>
<option>GSK269962A_1192</option>
<option>GSK269962A_127</option>
<option>GSK319347A_91</option>
<option>GSK343_1627</option>
<option>GSK429286A_230</option>
<option>GSK591_2110</option>
<option>GSK650394_177</option>
<option>GSK690693_326</option>
<option>GW.2580_193</option>
<option>GW441756_1023</option>
<option>GW843682X_87</option>
<option>HG.5.113.01_1142</option>
<option>HG.5.88.01_1143</option>
<option>HG6.64.1_159</option>
<option>I.BET.762_1624</option>
<option>I.BET.762_275</option>
<option>I.BRD9_1928</option>
<option>IAP_5620_1428</option>
<option>IAP_7638_1429</option>
<option>Ibrutinib_1799</option>
<option>IC.87114_236</option>
<option>ICL1100013_1266</option>
<option>Idelalisib_238</option>
<option>IGF1R_3801_1738</option>
<option>IGFR_3801_1430</option>
<option>Imatinib_34</option>
<option>IMD.0354_442</option>
<option>IOX2_1230</option>
<option>IPA.3_176</option>
<option>Ipatasertib_1924</option>
<option>IRAK4_4710_1716</option>
<option>Irinotecan_1088</option>
<option>Ispinesib.Mesylate_208</option>
<option>IWP.2_1576</option>
<option>JAK_8517_1739</option>
<option>JAK1_3715_1433</option>
<option>JAK1_8709_1718</option>
<option>JAK3_7406_1434</option>
<option>JNJ38877605_284</option>
<option>JNK.9L_157</option>
<option>JNK.Inhibitor.VIII_1043</option>
<option>JQ1_1218</option>
<option>JQ1_163</option>
<option>JQ1_2172</option>
<option>JQ12_164</option>
<option>JW.7.24.1_256</option>
<option>JW.7.52.1_83</option>
<option>kb.NB.142.70_407</option>
<option>KIN001.042_289</option>
<option>KIN001.236_286</option>
<option>KIN001.244_287</option>
<option>KIN001.260_290</option>
<option>KIN001.266_291</option>
<option>KIN001.270_345</option>
<option>Kobe2602_563</option>
<option>KRAS..G12C..Inhibitor.12_1855</option>
<option>KU.55933_1030</option>
<option>KU.60019_1185</option>
<option>Lapatinib_119</option>
<option>Lapatinib_1558</option>
<option>LCL161_1557</option>
<option>LCL161_439</option>
<option>LDN.193189_478</option>
<option>Leflunomide_1578</option>
<option>Lenalidomide_1020</option>
<option>Lestaurtinib_1024</option>
<option>LFM.A13_192</option>
<option>LGK974_1598</option>
<option>LGK974_573</option>
<option>LIMK1.inhibitor.BMS4_406</option>
<option>Linifanib_277</option>
<option>Linsitinib_1510</option>
<option>Linsitinib_185</option>
<option>LJI308_2107</option>
<option>Luminespib_1559</option>
<option>Luminespib_194</option>
<option>LY2109761_1852</option>
<option>Masitinib_292</option>
<option>MCT1_6447_1436</option>
<option>MCT4_1422_1437</option>
<option>MetAP2.Inhibitor..A832234_410</option>
<option>Methotrexate_1008</option>
<option>MG.132_1862</option>
<option>MG.132_9</option>
<option>Midostaurin_153</option>
<option>MIM1_1996</option>
<option>MIM1_446</option>
<option>MIRA.1_1931</option>
<option>Mirin_1048</option>
<option>Mitomycin.C_136</option>
<option>Mitoxantrone_1810</option>
<option>MK.1775_1179</option>
<option>MK.2206_1053</option>
<option>MK.8776_2046</option>
<option>ML323_1629</option>
<option>MN.64_1854</option>
<option>Motesanib_1029</option>
<option>MPS.1.IN.1_294</option>
<option>Navitoclax_1011</option>
<option>Nelarabine_1814</option>
<option>NG.25_260</option>
<option>Nilotinib_1013</option>
<option>Niraparib_1177</option>
<option>NPK76.II.72.1_257</option>
<option>NSC.207895_269</option>
<option>NSC.87877_147</option>
<option>NSC319726_461</option>
<option>NU7441_1038</option>
<option>Nutlin.3a...._1047</option>
<option>NVP.ADW742_1932</option>
<option>NVP.BHG712_295</option>
<option>NVP.TAE684_35</option>
<option>Obatoclax.Mesylate_1068</option>
<option>Obatoclax.Mesylate_182</option>
<option>OF.1_1853</option>
<option>Olaparib_1017</option>
<option>Olaparib_1495</option>
<option>Omipalisib_283</option>
<option>OSI.027_1594</option>
<option>OSI.027_299</option>
<option>OSI.930_298</option>
<option>Osimertinib_1919</option>
<option>OSU.03012_167</option>
<option>OTX015_1626</option>
<option>Oxaliplatin_1089</option>
<option>Oxaliplatin_1806</option>
<option>P22077_1933</option>
<option>PAC.1_175</option>
<option>Paclitaxel_1080</option>
<option>Paclitaxel_11</option>
<option>PAK_5339_1730</option>
<option>Palbociclib_1054</option>
<option>Panobinostat_438</option>
<option>PARP_0108_1459</option>
<option>PARP_9482_1460</option>
<option>PARP_9495_1458</option>
<option>Parthenolide_89</option>
<option>Pazopanib_199</option>
<option>PCI.34051_1621</option>
<option>PD0325901_1060</option>
<option>PD173074_1049</option>
<option>Pelitinib_282</option>
<option>Pemetrexed_428</option>
<option>Pevonedistat_1529</option>
<option>PF.00299804_363</option>
<option>PF.4708671_1129</option>
<option>PF.562271_158</option>
<option>PFI.1_1219</option>
<option>PFI.3_1530</option>
<option>PFI3_1620</option>
<option>PHA.665752_6</option>
<option>PHA.793887_301</option>
<option>Phenformin_196</option>
<option>PI.103_302</option>
<option>PI3Ka_4409_1446</option>
<option>Picolinici.acid_1635</option>
<option>Pictilisib_1058</option>
<option>Pictilisib_1527</option>
<option>PIK.93_303</option>
<option>Pilaralisib_372</option>
<option>Piperlongumine_1243</option>
<option>PLK_6522_1451</option>
<option>PLX.4720_1036</option>
<option>PLX.4720_1371</option>
<option>Podophyllotoxin.bromide_1825</option>
<option>Ponatinib_155</option>
<option>PRIMA.1MET_1131</option>
<option>PRT062607_1631</option>
<option>Pyridostatin_2044</option>
<option>Pyrimethamine_71</option>
<option>QL.VIII.58_1166</option>
<option>QL.X.138_331</option>
<option>QL.XI.92_329</option>
<option>QL.XII.47_235</option>
<option>QL.XII.61_1203</option>
<option>QS11_151</option>
<option>Quizartinib_254</option>
<option>RAF_9304_1453</option>
<option>Rapamycin_1084</option>
<option>Rapamycin_3</option>
<option>Refametinib_1014</option>
<option>Refametinib_1526</option>
<option>Ribociclib_1632</option>
<option>RO.3306_1052</option>
<option>rTRAIL_1261</option>
<option>RU.SKI.43_576</option>
<option>Rucaparib_1175</option>
<option>Ruxolitinib_1507</option>
<option>Ruxolitinib_206</option>
<option>RVX.208_1625</option>
<option>S.Trityl.L.cysteine_41</option>
<option>Sabutoclax_1849</option>
<option>Salubrinal_111</option>
<option>Sapitinib_1549</option>
<option>Saracatinib_38</option>
<option>Savolitinib_1936</option>
<option>SB216763_1025</option>
<option>SB505124_1194</option>
<option>SB505124_476</option>
<option>SB52334_304</option>
<option>SB590885_1061</option>
<option>SCH772984_1564</option>
<option>Seliciclib_110</option>
<option>Selisistat_341</option>
<option>Selumetinib_1062</option>
<option>Selumetinib_1498</option>
<option>Selumetinib_1736</option>
<option>Sepantronium.bromide_1941</option>
<option>Sepantronium.bromide_268</option>
<option>Serdemetan_1133</option>
<option>SGC0946_1264</option>
<option>Shikonin_170</option>
<option>Sinularin_1838</option>
<option>SL0101_1039</option>
<option>SN.38_1490</option>
<option>SN.38_1494</option>
<option>SNX.2112_328</option>
<option>Sorafenib_1085</option>
<option>Sorafenib_30</option>
<option>Sphingosine.Kinase.1.Inhibitor.II_408</option>
<option>Staurosporine_1034</option>
<option>STF.62247_258</option>
<option>SU11274_285</option>
<option>Sunitinib_5</option>
<option>T0901317_333</option>
<option>TAF1_5496_1732</option>
<option>TAK.715_221</option>
<option>Talazoparib_1259</option>
<option>Tamoxifen_1199</option>
<option>Tanespimycin_1026</option>
<option>TANK_1366_1461</option>
<option>Taselisib_1561</option>
<option>Telomerase.Inhibitor.IX_1930</option>
<option>Temozolomide_1375</option>
<option>Temsirolimus_1016</option>
<option>Teniposide_1809</option>
<option>Tenovin.6_342</option>
<option>TGX221_94</option>
<option>Thapsigargin_180</option>
<option>THZ.2.102.1_346</option>
<option>THZ.2.49_344</option>
<option>Tipifarnib_204</option>
<option>Tivozanib_312</option>
<option>TL.1.85_261</option>
<option>TL.2.105_211</option>
<option>Topotecan_1808</option>
<option>Torin.2_371</option>
<option>Tozasertib_1096</option>
<option>Tozasertib_32</option>
<option>TPCA.1_305</option>
<option>Trametinib_1372</option>
<option>Tretinoin_1009</option>
<option>Trichostatin.A_437</option>
<option>TTK_3146_1464</option>
<option>Tubastatin.A_265</option>
<option>TW.37_1149</option>
<option>TWS119_366</option>
<option>Ulixertinib_1908</option>
<option>Ulixertinib_2047</option>
<option>ULK1_4989_1733</option>
<option>UMI.77_1939</option>
<option>UNC0638_1236</option>
<option>UNC0638_245</option>
<option>UNC0642_1263</option>
<option>UNC1215_1262</option>
<option>Uprosertib_1553</option>
<option>Uprosertib_2106</option>
<option>VE.822_1613</option>
<option>VE821_2111</option>
<option>Veliparib_1018</option>
<option>Venetoclax_1909</option>
<option>Venotoclax_412</option>
<option>Vinblastine_1004</option>
<option>Vincristine_1818</option>
<option>Vinorelbine_140</option>
<option>Vinorelbine_2048</option>
<option>Vismodegib_1033</option>
<option>VNLG.124_271</option>
<option>Vorinostat_1012</option>
<option>Voxtalisib_375</option>
<option>VSP34_8731_1734</option>
<option>VX.11e_2096</option>
<option>VX.11e_262</option>
<option>VX.702_1028</option>
<option>Wee1.Inhibitor_1046</option>
<option>WEHI.539_1997</option>
<option>WH.4.023_56</option>
<option>WHI.P97_288</option>
<option>WIKI4_1940</option>
<option>Wnt.C59_1622</option>
<option>Wnt.C59_574</option>
<option>WYE.125132_317</option>
<option>WZ.1.84_59</option>
<option>WZ3105_252</option>
<option>WZ4003_1614</option>
<option>X.5Z..7.Oxozeaenol_1242</option>
<option>X5.Fluorouracil_1073</option>
<option>X5.Fluorouracil_179</option>
<option>XAV939_1268</option>
<option>XMD11.85h_1158</option>
<option>XMD13.2_330</option>
<option>XMD14.99_253</option>
<option>XMD15.27_332</option>
<option>XMD8.85_106</option>
<option>XMD8.92_1164</option>
<option>Y.39983_309</option>
<option>YK.4.279_1239</option>
<option>YM201636_310</option>
<option>Z.LLNle.CHO_45</option>
<option>ZG.10_1161</option>
<option>Zibotentan_266</option>
<option>ZM447439_1050</option>
<option>Zoledronate_1802</option>
<option>ZSTK474_223</option>

		</select>
	</div>
	</div>
	<br/>
	
	</form>
	
	<div class="row">
	<div class="col-6 text-start fs-4 fw-bold">
<!-- 		Upload -->
	</div>
	<div class="col-6">
<!-- 	<input type="file"> -->
	<input id="submit" type="button" class="btn btn-outline-primary w-100" value="Submit">
	</div>
	</div>
	
	<br/>
	<div class="text-start fs-4 fw-bold"><a download href="tool8Re/data/Drug.zip">Test data download</a></div>
	
	<br/>
	<div class="text-start fs-4 fw-bold"><a download href="tool8Re/data/drug_prediction.R">Function download</a></div>
	
<!-- 	<br/> -->
<!-- 	<div class="text-start fs-4 fw-bold"><a download href="tool8Re/data/Test_result.zip">Test result download</a></div> -->
	
	
</div>

<div class="col-8">
<div class="col"><img id="toolRe" style="height:450px" src="images/tool8Re.png"/></div><br/>
<div class="col">
<table id="example" class="display" style="width:100%">
	<thead>
		<tr>
			<th>Sample</th>
			<th>Sene_Signature</th>
			<th>Drug</th>
		</tr>
	</thead>
</table>
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
</style>
<script>
var table = $('#example').DataTable({
	ajax: 'tool8Re/A.443654_86.txt'
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
	
	var formData = new FormData();
    // 获取文件
    var fileData1 = $("#tool8File1").prop("files")[0];
    var fileData2 = $("#tool8File2").prop("files")[0];
    var drug = $('#drug').val();
    formData.append("file1", fileData1);
    formData.append("file2", fileData2);
    formData.append("drug", drug);
    $.ajax({
        url: 'UploadServletTool8',
        type: 'POST',
        async: false,
        data: formData,
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
        	
        	$('#toolRe').attr('src','tool8Re/'+$('#drug').val()+'.png')
			table.destroy();
			table = $('#example').DataTable({
            		ajax: 'tool8Re/'+$('#drug').val()+'.txt'
            	})
        }
    });
	
// 	$.post("UploadServletTool8",
// 			{
// 			drug:$('#drug').val()
// 			},
// 			function(data){
// 				$('#toolRe').attr('src','tool8Re/'+$('#drug').val()+'.png')
// 				table.destroy();
// 				table = $('#example').DataTable({
//                 		ajax: 'tool8Re/'+$('#drug').val()+'.txt'
//                 	})
// 		});	
	
// 	var formData = new FormData();
//     // 获取文件
//     var fileData = $("#tool2File").prop("files")[0];
//     formData.append("file", fileData);
//     $.ajax({
//         url: 'UploadServlet',
//         type: 'POST',
//         async: false,
//         data: formData,
//         cache: false,
//         contentType: false,
//         processData: false,
//         success: function (data) {
//         	$('#tool2Re').attr('src','tool2Re/'+$("#tool2File").val().split('\\')[2]+'.png')
//         	table.destroy();
//         	$('#example').DataTable({
//         		ajax: 'tool2Re/tool2TableRe.json'
//         	})
//         }
//     });
})
</script>
	</body>
</html>