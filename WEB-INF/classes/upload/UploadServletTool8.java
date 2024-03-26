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
public class UploadServletTool8 extends HttpServlet {
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
    public UploadServletTool8() {
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

	        uploadPath = getServletContext().getRealPath("/tool8Re");
	        uploadPath=uploadPath.replaceAll("\\\\","/")+"/";
	        
	      //file name:date and random number
			DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
			String formatDate = format.format(new Date());
			int random = new Random().nextInt(10000);
			String dpname=new String();
			dpname=formatDate+random;
			
			File file_testFile = new File(uploadPath+dpname);
	        file_testFile.mkdir();
	        
	        String drug = "";
	        
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
		                    	drug = item.getString();
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
	    		
	    		String file1 = "NA";
	    		file1 = (String) request.getAttribute("file1");
	    		String file2 = "NA";
	    		file2 = (String) request.getAttribute("file2");
	    		
	    		String dataPath = uploadPath+"data";

	    		RConnection rc = new RConnection();
	    		rc.eval(".libPaths(\"/home/wx/R/x86_64-pc-linux-gnu-library/4.2/\",include.site=TRUE)");
	    		
	    		rc.eval("options(stringsAsFactors = F)");
	    		if(file1==null||file1==""){
	    			rc.eval("data<-read.table(file='"+dataPath+"/web8_drug.txt', sep =',',header=TRUE)");
	    		}else{
//	    			System.out.println("aa");
	    			rc.eval("data1<-read.table(file='"+uploadPath+dpname+"/"+file1+"', sep =',',header=TRUE)");
	    			rc.eval("data2<-read.table(file='"+uploadPath+dpname+"/"+file2+"', sep =',',header=TRUE)");
	    			rc.eval("data <- cbind(data1,data2)");
	    			
	    		}
	    		
	    		rc.eval("data_plot <- data[,c('"+drug+"','senescore')]");
	    		rc.eval("colnames(data_plot) <- c('drug_name','score')");

	    		rc.eval("tableD <- cbind(rownames(data_plot),data_plot)");
	    		rc.eval("tableD <- apply(tableD,1,function(x){paste0(x,collapse = '\",\"')})");
	    		rc.eval("tableD <- paste0('[\"',tableD,'\"],')");
	    		rc.eval("tableD[length(tableD)] <- stringr::str_sub(tableD[length(tableD)],end = -2)");
	    		rc.eval("tableD <- append(tableD,']}')");
	    		rc.eval("tableD <- append('{\"data\":[',tableD)");
	    		rc.eval("write.table(tableD,'"+uploadPath+drug+".txt',row.names = F,col.names = F,quote = F)");

	    		rc.eval("library(ggplot2)");
	    		rc.eval("library(ggpubr)");
	    		rc.eval("library(ggExtra)");

	    		rc.eval("p <- ggplot(data_plot, aes(x=score, y=drug_name))+geom_point(colour = '#4DBBD5CC',alpha = 0.5)+geom_smooth(method=lm , color='#DC0000FF', fill='#F39B7FCC', se=TRUE) +ylab('"+drug+"')+ xlab(paste0('Sene_Signature')) + theme_bw()+stat_cor(method = 'pearson',label.x = 0.35,color= '#DC0000FF')");
	    		rc.eval("p2 <- ggMarginal(p, margins = 'both',type='histogram', fill ='#E64B35CC',xparams = list(bins=20),yparams= list(bins = 20))");

	    		rc.eval("png('"+uploadPath+drug+".png')");
	    		rc.eval("print(p2)");
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
