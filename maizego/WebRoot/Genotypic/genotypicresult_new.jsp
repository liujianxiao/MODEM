<%@ page contentType="text/html;charset=gbk"  import="java.util.*"  language="java" pageEncoding="UTF-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page import="org.hibernate.HibernateException"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.db.chr1_merged_all_snp.*"%>
<%@ page import="org.db.chr2_merged_all_snp.*"%>
<%@ page import="org.db.chr3_merged_all_snp.*"%>
<%@ page import="org.db.chr4_merged_all_snp.*"%>
<%@ page import="org.db.chr5_merged_all_snp.*"%>
<%@ page import="org.db.chr6_merged_all_snp.*"%>
<%@ page import="org.db.chr7_merged_all_snp.*"%>
<%@ page import="org.db.chr8_merged_all_snp.*"%>
<%@ page import="org.db.chr9_merged_all_snp.*"%>
<%@ page import="org.db.chr10_merged_all_snp.*"%>
 
<%@ page import="java.io.*" %> 
<%@ page import="java.lang.reflect.Field" %>
<%@ page import="java.lang.StringBuilder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
  <title>MaizeGo DataMine Platform</title>

  <meta http-equiv="pragma" content="no-cache"/>
  <meta http-equiv="cache-control" content="no-cache"/>
  <meta http-equiv="expires" content="0"/> 
  <meta http-equiv="keywords" content="maize"/>
  <meta http-equiv="description" content="This is a database search engine of maize!"/>
 


  
  
  <!-- 新版本添加的 -->
<link href="/maizego/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/maizego/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/maizego/js/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="/maizego/js/jquery.mousewheel-3.0.4.js"></script>
<link rel="stylesheet" type="text/css" href="/maizego/css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript"> 
	$(document).ready(function() {
 
		$("#various1").fancybox({
			'titlePosition':'inside',
			'transitionIn':'none',
			'transitionOut':'none'
		});

 
	});	
   function check()
   {  
     if(confirm("确定要删除吗？")){
           return true;
     }
     else { return false;}
}		
</script>



<!--<script type="javascript"> 	
function check(){
	//alert("aaaaaaa");
	var num1=document.getElementById("select1").value;  
	var num2=document.getElementById("select2").value;	
	if(num2>num1){
	   alert("choice is illegal");
	   return false;
	}
	if(num2=num1){
	   alert("choice is illegal");
	   return false;
	}	
}
</script>
  






--></head>

 <%
  Map attribute=ActionContext.getContext().getSession(); 
  

 
  
  List<Chr1MergedAllSnp> genotypic_chr1_list = (List<Chr1MergedAllSnp>) attribute.get("list"); 
   int mark = (Integer)attribute.get("mark");
	String name1 =  (String)attribute.get("name");
	
	String num="";
	int xx =0;


	if(name1.equals("Gene_Region")&&(mark!=0)){
		num = (String)attribute.get("chr_num");
		xx  = Integer.valueOf(num).intValue();      
}
	if(name1.equals("Gene_Symbols")){
		num = (String)attribute.get("chr_num");
		xx  = Integer.valueOf(num).intValue();      
}


%>	

<body>

<!--LOGO+导航开始-->
<%@ include file="../ListHeader.jsp" %>

<!--导航结束-->  
<!--主体部分开始-->   
<div class="main">
    <div class="content"  style="height:570px">
    
         <h3 class="tit" style="border-bottom:2px solid #08b702; padding-bottom:5px; color:#08b702;">
         <span>Genotype-Search</span></h3>
            
           <%if(mark==2){%> 
            
           	         <div>
						<span class="Phenotypicstrongblack"><br />&nbsp;There is no result !</span>
					</div>
				 
		   <%}else if(mark==0){ %>  
		   		    <div>
						<span class="Phenotypicstrongblack"><br />&nbsp;Your input is wrong !</span>
					</div>
				 
		   <%}else if(genotypic_chr1_list.size()==0){ %>  
		             <div>
						<span class="Phenotypicstrongblack"><br />&nbsp;There is no result in this area !</span>
					</div>
					 
           <%}else { 
			    
			    System.out.println("OOOOOOOOOOOOOOOOOOOOOOOOOOOO->"+genotypic_chr1_list.size());
			    List<Chr2MergedAllSnp> genotypic_chr2_list = (List<Chr2MergedAllSnp>) attribute.get("list");
			    List<Chr3MergedAllSnp> genotypic_chr3_list = (List<Chr3MergedAllSnp>) attribute.get("list");
			    List<Chr4MergedAllSnp> genotypic_chr4_list = (List<Chr4MergedAllSnp>) attribute.get("list");
			    List<Chr5MergedAllSnp> genotypic_chr5_list = (List<Chr5MergedAllSnp>) attribute.get("list");
			    List<Chr6MergedAllSnp> genotypic_chr6_list = (List<Chr6MergedAllSnp>) attribute.get("list");
			    List<Chr7MergedAllSnp> genotypic_chr7_list = (List<Chr7MergedAllSnp>) attribute.get("list");
			    List<Chr8MergedAllSnp> genotypic_chr8_list = (List<Chr8MergedAllSnp>) attribute.get("list");
			    List<Chr9MergedAllSnp> genotypic_chr9_list = (List<Chr9MergedAllSnp>) attribute.get("list");
			    List<Chr10MergedAllSnp> genotypic_chr10_list = (List<Chr10MergedAllSnp>) attribute.get("list");
			   
		   
		        int currentpage=(Integer)attribute.get("currentpage");

		        long total=(Long)attribute.get("total");
		        
		        
		        %>	
						      <div style="overflow:auto;height:500px">
						        <table cellpadding="0" cellspacing="0" width="100%" align="center" class="tab1">
										   <tr bgcolor="#CFEEF8">
										   <%System.out.println("000000000000000-"+xx);
										   Field[] field = null;
										        if(xx==1)field = genotypic_chr1_list.get(0).getClass().getDeclaredFields(); 
										   else if(xx==2)field = genotypic_chr2_list.get(0).getClass().getDeclaredFields(); 
										   else if(xx==3)field = genotypic_chr3_list.get(0).getClass().getDeclaredFields(); 
										   else if(xx==4)field = genotypic_chr4_list.get(0).getClass().getDeclaredFields(); 
										   else if(xx==5)field = genotypic_chr5_list.get(0).getClass().getDeclaredFields(); 
										   else if(xx==6)field = genotypic_chr6_list.get(0).getClass().getDeclaredFields();
										   else if(xx==7)field = genotypic_chr7_list.get(0).getClass().getDeclaredFields();
										   else if(xx==8)field = genotypic_chr8_list.get(0).getClass().getDeclaredFields();
										   else if(xx==9)field = genotypic_chr9_list.get(0).getClass().getDeclaredFields();
										   else if(xx==10)field = genotypic_chr10_list.get(0).getClass().getDeclaredFields();
										   
										   for(int i=0;i<field.length;i++){
										   if(field[i].getName().startsWith("maize")){
										   %>
												    <td width="220" align="center"><%=field[i].getName().substring(5).toUpperCase() %></td>
												    <%} else{%>
						                         <td width="220" align="center"><%=field[i].getName().toUpperCase()%></td>
						                         <%}} %>
											   </tr>
										       <%
													for(int i=0;i<genotypic_chr1_list.size();i++)
										            { 
										           // System.out.println(genotypic_chr1_list.get(i).getClass().getDeclaredFields());
										   
						
													
								               %>
											         <tr>
											         <% for(int j=0;j<field.length;j++)  {
											         
											         String name= field[j].getName();
										            StringBuilder sb = new StringBuilder(name);
													sb.setCharAt(0, Character.toUpperCase(sb.charAt(0)));
													name = sb.toString();
											         
											          
											         
											         %>
													     <%  if(xx==1){ %>
													    <td align="center"><%=genotypic_chr1_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr1_list.get(i)).toString()%></td> 
						                            <% }else if(xx==2){ %>
						                                <td align="center"><%=genotypic_chr2_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr2_list.get(i)).toString()%></td>
						                            <% }else if(xx==3){ %>
						                                <td align="center"><%=genotypic_chr3_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr3_list.get(i)).toString()%></td>
						                            <% }else if(xx==4){ %>
						                                <td align="center"><%=genotypic_chr4_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr4_list.get(i)).toString()%></td>
						                            <% }else if(xx==5){ %>
						                                <td align="center"><%=genotypic_chr5_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr5_list.get(i)).toString()%></td>
						                            <% }else if(xx==6){ %>
						                                <td align="center"><%=genotypic_chr6_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr6_list.get(i)).toString()%></td>
						                            <% }else if(xx==7){ %>
						                                <td align="center"><%=genotypic_chr7_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr7_list.get(i)).toString()%></td>
						                            <% }else if(xx==8){ %>
						                                <td align="center"><%=genotypic_chr8_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr8_list.get(i)).toString()%></td>
						                            <% }else if(xx==9){ %>
						                                <td align="center"><%=genotypic_chr9_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr9_list.get(i)).toString()%></td>
						                            <% }else if(xx==10){ %>
						                                <td align="center"><%=genotypic_chr10_list.get(i).getClass().getMethod("get"+name).invoke(genotypic_chr10_list.get(i)).toString()%></td>
						                            <%}%>
						                            
						                        <%} %>
												   </tr> 
											     <%
											     
											       }//for 
											    %>
									</table>
						     </div>
						     <form action="genotypic_new1.action">
							   <table cellpadding="0" cellspacing="0" width="100%" style="margin-top:20px;">
							    <td align="right">
							       <span><a href="genotypic_new1.action?page=0"><img src="../images/first.jpg" /></a></span>
							      <%if(currentpage!=0){ %> 
							       <span><a href="genotypic_new1.action?page=<%=currentpage-1 %>"><img src="../images/pre.jpg" /></a></span>　
							       <%}else{ %>
							        <span><img src="../images/pre.jpg" /></span>　
							        <%} %>
							       <span style="position:relative; bottom:5px; font-size:16px;">Page 
							       <input type="text" name="page" style="border:2px solid #09b801; position:relative;width:40px"/>
							       <span><%=currentpage+1 %>/<%=total+1 %></span>
							    <!--    <select name="cata" style="border:2px solid #09b801; position:relative">
										       <option>1</option>
											   <option>2</option>
											   <option>3</option>
										   </select>--> 
										   </span>　
										  <span > <input type="image" src="../img/go.jpg" style="height:22px;margin-bottom:12px;margin-right:10px"/></span>
										   <%if(currentpage<total) {%>
								<span><a href="genotypic_new1.action?page=<%=currentpage+1 %>"><img src="../images/next.jpg" /></a></span>
							<%}else{%>
							<span><img src="../images/next.jpg" /></span>
							<%} %>
							 <span><a href="genotypic_new1.action?page=<%=total%>"><img src="../images/last.jpg" /></a></span></td>
							 </table>
							</form>   
			 			
									
			
			<%} %>	   		 
						 </table>
					</div>  
				</div>                  	    		 
		 
	</div>	             
</div>





<!--主体部结束--> 
<!--版权信息开始--> 
<%@ include file="../ListFooter.jsp" %>                                          
<!--版权结束-->

  </body>


</html>



