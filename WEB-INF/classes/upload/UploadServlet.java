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
public class UploadServlet extends HttpServlet {
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
    public UploadServlet() {
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

	        uploadPath = getServletContext().getRealPath("/tool2Re");
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
		                    	//text
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
	    		rc.eval("expr <- read.table(file='"+uploadPath+dpname+"/"+FileName+"', sep =',',header=TRUE)");
	    		rc.eval("source('"+uploadPath+"senescore.R')");
	    		rc.eval("score <- predict.senescore(expr, '"+uploadPath+"data/model.RNA_2.Rdata')");
	    		rc.eval("matedata <- as.data.frame(score)");
	    		rc.eval("gene <- c('TP53', 'CDKN1A', 'CDKN2A', 'SIRT1', 'RB1', 'TERT', 'CDK4', 'CDKN2B','MAPK1', 'MAPK14', 'MTOR', 'TERF2', 'UBC', 'CDK6', 'HMGA2', 'E2F1', 'CCNA2','MDM2', 'CXCL8', 'HSPA8', 'LMNB1', 'MAPK3', 'MAPKAPK5', 'ATM', 'CDKN1B')");
	    		rc.eval("expr <- expr[gene,]");
	    		rc.eval("expr <- as.data.frame(t(expr))");
	    		rc.eval("data_plot <- cbind(matedata,expr)");
	    		rc.eval("matedata_plot <- data_plot[order(matedata$score),]");
	    		
	    		rc.eval("tableD <- cbind(1:nrow(matedata),rownames(matedata),score)");
	    		rc.eval("tableD <- apply(tableD,1,function(x){paste0(x,collapse = '\",\"')})");
	    		rc.eval("tableD <- paste0('[\"',tableD,'\"],')");
	    		rc.eval("tableD[length(tableD)] <- stringr::str_sub(tableD[length(tableD)],end = -2)");
	    		rc.eval("tableD <- append(tableD,']}')");
	    		rc.eval("tableD <- append('{\"data\":[',tableD)");
	    		rc.eval("write.table(tableD,'"+uploadPath+"tool2TableRe.json',row.names = F,col.names = F,quote = F)");
	    		
	    		
	    		rc.eval("library(RColorBrewer)");
	    		rc.eval("library(ComplexHeatmap)");
	    		
	    		rc.eval("color <- rev(colorRampPalette(brewer.pal(n = 6, name =\"RdYlBu\"))(nrow(data_plot)))");
	    		rc.eval("column_ha = HeatmapAnnotation(`Sene_Signature` =anno_barplot(scale(matedata_plot$score),bar_width =1,height = unit(4, 'cm'),gp = gpar(fill =color, col =color),border = F))");
	    		rc.eval("data_heatmap_plot <- matedata_plot[,c(2:26)]");
	    		rc.eval("data_heatmap_plot <- as.data.frame(t(data_heatmap_plot))");
	    		rc.eval("library(circlize)");
	    		rc.eval("p <- Heatmap(t(scale(t(data_heatmap_plot))),name = 'Expression',col = colorRamp2(c(-4, 0, 4), c('#4DBBD5FF','#FFFFFF', '#ED0000FF')),top_annotation = column_ha,show_column_names = F,cluster_rows = F,cluster_columns = F)");
	    		
	    		rc.eval("png('"+uploadPath+FileName+".png', width=690, height=460)");
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
