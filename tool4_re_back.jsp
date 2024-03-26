<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.rosuda.REngine.REXP"%>
<%@ page import="org.rosuda.REngine.REXPMismatchException"%>
<%@ page import="org.rosuda.REngine.Rserve.RConnection"%>
<%@ page import="org.rosuda.REngine.Rserve.RserveException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String path=application.getRealPath("tool4Re").replace("\\","/")+"/";
String dataPath = path+"data";

String type = request.getParameter("type");
String clinical = request.getParameter("clinical");
RConnection rc = new RConnection();
rc.eval(".libPaths(\"/home/wx/R/x86_64-pc-linux-gnu-library/4.2/\",include.site=TRUE)");
rc.eval("options(stringsAsFactors = F)");
rc.eval("load('"+dataPath+"/matedata.Rdata')");
rc.eval("load('"+dataPath+"/all_mut.Rdata')");

rc.eval("all_mut$Tumor_Sample_Barcode <- substr(all_mut$Tumor_Sample_Barcode,1,12)");
rc.eval("index <- which(all_mut$Tumor_Sample_Barcode %in% intersect(all_mut$Tumor_Sample_Barcode,matedata[which(matedata$stageT %in% c('T1')),'name']))");
rc.eval("all_mut <- all_mut[index,]");

rc.eval("library(maftools)");

rc.eval("matedata <- matedata[which(matedata$name %in% intersect(all_mut$Tumor_Sample_Barcode,matedata$name)),]");
rc.eval("matedata <- matedata[,c(2,1,3:24)]");
rc.eval("laml.clin <- matedata");
rc.eval("colnames(laml.clin)[1] <- 'Tumor_Sample_Barcode'");
rc.eval("all_mut <- read.maf(all_mut,clinicalData = laml.clin)");

rc.eval("png('"+path+type+clinical+"1.png')");
rc.eval("plotmafSummary(maf = all_mut,addStat = 'median')");
rc.eval("dev.off()");

rc.eval("png('"+path+type+clinical+"2.png')");
rc.eval("oncoplot(maf = all_mut,fontSize = 0.6,showTumorSampleBarcodes = F)");
rc.eval("dev.off()");

rc.eval("png('"+path+type+clinical+"3.png')");
rc.eval("somaticInteractions(maf = all_mut,pvalue = c(0.05, 0.1))");
rc.eval("dev.off()");

rc.close();
%>

</body>
</html>