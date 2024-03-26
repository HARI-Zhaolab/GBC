package upload;

import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.*;

import com.sun.xml.internal.bind.v2.model.core.ID;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.text.*;
import java.util.*;
import java.util.regex.*;

import org.rosuda.REngine.REXP;
import org.rosuda.REngine.REXPMismatchException;
import org.rosuda.REngine.Rserve.RConnection;
import org.rosuda.REngine.Rserve.RserveException;
/**
 * Servlet implementation class UploadServlet
 */
@SuppressWarnings("unused")
public class UploadServletTool7 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// 涓婁紶鏂囦欢瀛樺偍鐩綍
	//cn鏈嶅姟鍣ㄧ洰褰�/pub1/Buffer/LNC-Peptide/data/ 
	//com鏈嶅姟鍣ㄨ矾寰� D:/Buffer/LNC-Peptide/data/
	//鏈湴鐩綍E:/work/LNC-Peptide/data/
    private static final String UPLOAD_DIRECTORY = "/pub1/Buffer/LNC-Peptide/data/";
    
 
 // 涓婁紶閰嶇疆
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 300MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 2024; // 1024MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 2248; // 1248MB
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadServletTool7() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/**
     * 涓婁紶鏁版嵁鍙婁繚瀛樻枃浠�
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			if (!ServletFileUpload.isMultipartContent(request)) {
	            PrintWriter writer = response.getWriter();
	            writer.println("Error: file must be enctype=multipart/form-data");
	            writer.flush();
	            return;
	        }
	 
	        DiskFileItemFactory factory = new DiskFileItemFactory();

	        factory.setSizeThreshold(MEMORY_THRESHOLD);

	        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));
	 
	        ServletFileUpload upload = new ServletFileUpload(factory);
	         
	        upload.setFileSizeMax(MAX_FILE_SIZE);
	         
	        upload.setSizeMax(MAX_REQUEST_SIZE);
	        
	        upload.setHeaderEncoding("UTF-8"); 

	        String uploadPath = UPLOAD_DIRECTORY;

	        uploadPath = getServletContext().getRealPath("/tool7Re");
	        uploadPath=uploadPath.replaceAll("\\\\","/")+"/";
	        
	      //file name:date and random number
			DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
			String formatDate = format.format(new Date());
			int random = new Random().nextInt(10000);
			String dpname=new String();
			dpname=formatDate+random;
			
			File file_testFile = new File(uploadPath+dpname);
	        file_testFile.mkdir();
	        
	        //创建结果文件夹
//	        File file_result = new File(uploadPath+dpname+"/result");
//	        file_result.mkdir();
	     
	         
	        try {
	            @SuppressWarnings("unchecked")
	            List<FileItem> formItems = upload.parseRequest(request);
	            
	            String FileName = "";
//	            System.out.println(formItems.size());
	            if (formItems != null && formItems.size() > 0) {
	            		for (FileItem item : formItems) {
		                    if (item.isFormField()) {
		                    	
		                    }else{
		                    	//file
		                    	String fileName = item.getName();
		                    	String fName = item.getFieldName();
		                    	FileName = item.getName();
		                    	
		                    	if(fileName.equals("")){
		                    		
		                    	}else{
		                        	String filePath = uploadPath+dpname+"/"+fileName;
		                    		File storeFile = new File(filePath);
		                            item.write(storeFile);
			                        request.setAttribute(fName,fileName);
		                    	}
		                    }
		                }
	            }
	    		HttpServletResponse res = (HttpServletResponse) response;
	    		res.setDateHeader("Expires", -1);
	    		res.setHeader("Cache-Control", "no-cache");
	    		res.setHeader("Pragma", "no-cache");
	    		
	    		RConnection rc = new RConnection();
	    		rc.eval(".libPaths(\"/home/wx/R/x86_64-pc-linux-gnu-library/4.2/\",include.site=TRUE)");
	    		
	    		rc.eval("options(stringsAsFactors = F)");
	    		rc.eval("matedata <- read.table(file='"+uploadPath+dpname+"/"+FileName+"', sep =',',header=TRUE)");
	    		rc.eval("data <- matedata[order(matedata[,'Sene_Signature']),]");
	    		rc.eval("data$surTime <- as.numeric(data$surTime)");
	    		rc.eval("n <- nrow(data)");
	    		rc.eval("rownames(data) <- 1:n");
	    		
	    		rc.eval("library(survminer)");
	    		rc.eval("library(survival)");
	    		
	    		rc.eval("pvals<-c()");
	    		rc.eval("hrs<-c()");
	    		rc.eval("for(n in 1:(nrow(data)- 1)){ssdf <- cbind(data, data.frame(exp = rep(c( 'Low', 'High'), c(n, nrow(data)-n))));ssdf$exp <- factor(ssdf$exp, levels = c( 'Low', 'High'));fitd <- survdiff(Surv(surTime,vitalStat) ~exp , data=ssdf,na.action =na.exclude);pValue <- 1- pchisq(fitd$chisq, length(fitd$n)- 1);pvals <- c(pvals, pValue);hr <- fitd$obs[ 1] * fitd$exp[ 2]/(fitd$obs[ 2] * fitd$exp[ 1]);hrs <- c(hrs, hr); }");
	    		rc.eval("sur <- data.frame(num = 1:(nrow(data)-1),HR = hrs,pvalue = pvals)");
	    		rc.eval("sur <- sur[(n/4):(3*n/4),]");
	    		rc.eval("pvals <- sur$pvalue");
	    		rc.eval("bestNum <-sur$num[which.min(pvals)]");
	    		rc.eval("ssdf <- cbind(data, data.frame(exp = rep(c( 'Low', 'High'), c(bestNum,nrow(data)-bestNum))))");
	    		rc.eval("fit<-survfit(Surv(surTime,vitalStat) ~exp , data=ssdf)");
	    		rc.eval("ssdf <- ssdf[order(ssdf$exp,decreasing = T),]");
	    		rc.eval("ssdf$exp <- factor(ssdf$exp,levels = c('Low','High'))");
	    		rc.eval("data.survdiff <- survdiff(Surv(surTime,vitalStat) ~ exp,data = ssdf)");
	    		rc.eval("p.val = 1 - pchisq(data.survdiff$chisq, length(data.survdiff$n) - 1)");
	    		rc.eval("HR =(data.survdiff$obs[2]/data.survdiff$exp[2])/(data.survdiff$obs[1]/data.survdiff$exp[1])");
	    		rc.eval("up95 = exp(log(HR) +qnorm(0.975)*sqrt(1/data.survdiff$exp[2]+1/data.survdiff$exp[1]))");
	    		rc.eval("low95 = exp(log(HR) -qnorm(0.975)*sqrt(1/data.survdiff$exp[2]+1/data.survdiff$exp[1]))");
	    		rc.eval("label <- paste0(ifelse(round(p.val,4) == 0, 'p < 0.01',paste0('p = ',round(p.val,4))),\"\n\",'Hazard Ratio = ',round(HR,1),\"\n\",'95% Cl: = ',round(low95,2),'-',round(up95,2))");
	    		rc.eval("p <- ggsurvplot(fit,pval = label,conf.int = FALSE,conf.int.style = 'step',risk.table = 'abs_pct',risk.table.y.text.col = T,risk.table.y.text = FALSE,xlab = 'Time in months',ncensor.plot = FALSE,egend.labs =c('high risk', 'low risk'),legend.labs=c('High Sene_Signature', 'Low Sene_Signature'),legend=c(0.8,0.8),palette = c('#ff0000', '#000000'),ggtheme = theme(axis.title.x = element_text(size = 15),axis.title.y = element_text(size = 15),axis.text.x = element_text(size = 12),axis.text.y = element_text(size = 12),strip.text.x = element_text(size = 12),legend.position = 'none',panel.background = element_rect(fill ='white',color = 'black'),panel.grid = element_blank()),break.y.by=0.2)");
	    		
	    		rc.eval("png('"+uploadPath+FileName+".png')");
	    		rc.eval("print(p)");
	    		rc.eval("dev.off()");
	    		
	    		rc.close();
	    		
	        } catch (Exception ex) {
	        	
	            request.setAttribute("message",
	                    "erro message: " + ex.getMessage());
	        }
                 
        // 
//        getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
	}

}
