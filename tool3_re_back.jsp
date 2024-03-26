<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.rosuda.REngine.REXP"%>
<%@ page import="org.rosuda.REngine.REXPMismatchException"%>
<%@ page import="org.rosuda.REngine.Rserve.RConnection"%>
<%@ page import="org.rosuda.REngine.Rserve.RserveException"%>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String path=application.getRealPath("tool3Re").replace("\\","/")+"/";
String dataPath = path+"data";

String method = request.getParameter("method");
String type = request.getParameter("type");
RConnection rc = new RConnection();
rc.eval("options(stringsAsFactors = F)");
rc.eval(".libPaths(\"/home/wx/R/x86_64-pc-linux-gnu-library/4.2/\",include.site=TRUE)");
rc.eval("senescencescore_cor <- read.table('"+dataPath+"/web3_cor.txt', sep =',',header=TRUE)");
rc.eval("type <- unlist(strsplit('"+type+"',','))");
// rc.eval("senescencescore_cor_name <- rownames(senescencescore_cor)[grep(\"*"+method+"\",rownames(senescencescore_cor))]");
rc.eval("senescencescore_cor_name <- rownames(senescencescore_cor)[senescencescore_cor[,3] %in% type]");
rc.eval("senescencescore_cor <- senescencescore_cor[senescencescore_cor_name,]");
rc.eval("senescencescore_cor <- senescencescore_cor[order(senescencescore_cor$correlation),];senescencescore_cor$name <- factor(senescencescore_cor$name,levels =senescencescore_cor$name)");

rc.eval("library(RColorBrewer)");
rc.eval("library(ggplot2)");

rc.eval("p2 <- ggplot(senescencescore_cor, aes(x=name, y=correlation))+geom_segment( aes(x=name, xend=name, y=0, yend=correlation),size=1.5,color='#808180CC',linetype='solid') +geom_point(aes(size = correlation ,fill = Pvalue), color = '#808180AA',alpha=1, shape=21,stroke=0.5) +theme_light()+scale_fill_gradientn(colours = colorRampPalette(brewer.pal(n = 6, name='RdYlBu'))(100),limit = c(0,1),breaks= c(0.25,0.5,0.75))+theme(panel.grid.minor.y =element_blank(),panel.border=element_blank(),axis.ticks.y=element_blank())+xlab('')+ylab('correlation')+ggtitle('Correlation between Sene_Signature and Immune Infiltration')+theme(axis.text.x = element_text(angle = 90, hjust = 1,vjust = 1,size = 10),axis.title.y = element_text(size = 14))");

String name = rc.eval("name <- sample(1:1000,1)").asString();
rc.eval("png('"+path+name+".png',width=600, height=400)");
rc.eval("print(p2)");
rc.eval("dev.off()");

rc.close();

PrintWriter writer = response.getWriter();
writer.print(name);
writer.close();
%>

</body>
</html>