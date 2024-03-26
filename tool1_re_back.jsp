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
String path=application.getRealPath("tool1Re").replace("\\","/")+"/";
String dataPath = path+"data";

String gene = request.getParameter("gene");
RConnection rc = new RConnection();
rc.eval(".libPaths(\"/home/wx/R/x86_64-pc-linux-gnu-library/4.2/\",include.site=TRUE)");
rc.eval("options(stringsAsFactors = F)");
rc.eval("data <- read.table('"+dataPath+"/web1_231110.txt', sep =',',header=TRUE)");
rc.eval("data_plot <- data[,c('"+gene+"','score')]");
rc.eval("colnames(data_plot) <- c('gene_name','score')");

rc.eval("library(ggplot2)");
rc.eval("library(ggpubr)");
rc.eval("library(ggExtra)");

rc.eval("p <- ggplot(data_plot, aes(x=score, y=gene_name)) +geom_point(colour = '#4DBBD5CC',alpha = 0.5) +geom_smooth(method=lm , color='#DC0000FF', fill='#F39B7FCC', se=TRUE) +ylab('"+gene+"')+ xlab(paste0('Sene_Signature')) + theme_bw()+stat_cor(method = 'pearson',label.x = 0.35,color= '#DC0000FF')");
rc.eval("p2 <- ggMarginal(p, margins = 'both',type='histogram', fill ='#E64B35CC', xparams = list(bins=20),yparams= list(bins = 20))");

rc.eval("png('"+path+gene+".png')");
rc.eval("print(p2)");
rc.eval("dev.off()");

rc.close();
%>

</body>
</html>