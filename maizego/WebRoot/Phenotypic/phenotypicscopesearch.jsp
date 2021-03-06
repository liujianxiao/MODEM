<%@ page contentType="text/html;charset=gbk"  import="java.util.*"  language="java" pageEncoding="UTF-8"%>
<%@ page import="com.opensymphony.xwork2.ActionContext"%>
<%@ page import="org.hibernate.HibernateException"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.db.phenotypes_294_rils_441_crosses.*"%>
<%@ page import="java.io.*" %> 


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title>MaizeGo DataMine Platform</title>

  <meta http-equiv="pragma" content="no-cache"/>
  <meta http-equiv="cache-control" content="no-cache"/>
  <meta http-equiv="expires" content="0"/>
  <meta http-equiv="keywords" content="maize"/>
  <meta http-equiv="description" content="This is a database search engine of maize!"/>
 

  
  
  
  
          <!-- 新版本添加的 -->
<link href="../style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript" src="../js/jquery.mousewheel-3.0.4.js"></script>
<link rel="stylesheet" type="text/css" href="../css/jquery.fancybox-1.3.4.css" media="screen" />
<script type="text/javascript"> 
	$(document).ready(function() {
 
		$("#various1").fancybox({
			'titlePosition':'inside',
			'transitionIn':'none',
			'transitionOut':'none'
		});

 
	});
</script>
  

  <%
             Map attibutes = ActionContext.getContext().getSession();
             ArrayList<PhenotypesOf294Rils441Crosses> phenotypesofcrosses_list = (ArrayList<PhenotypesOf294Rils441Crosses>) attibutes.get("phenotypesofcrosses_list");
          
             
  %>

</head>
  
 
  
  
<body>

<!--top开始-->

<!--LOGO+导航开始-->
<%@ include file="../ListHeader.jsp" %>
<!--导航结束-->  
<!--主体部分开始-->      
<div class="main">
   <div class="content">
         <div>
		 　　　　<div class="inser">
		           <select name="cata" style="border:2px solid #09b801; padding:7px 15px; position:relative; top:2px; color:#666;">
				       <option>CATEGORY</option>
					   <option>CATEGORY</option>
					   <option>CATEGORY</option>
				   </select>
				   <input type="text" value="SEARCH" onblur="this.style.color='#999';if (this.value == '') this.value = 'SEARCH';" onfocus="this.style.color='#666';this.value = ''" style="height:30px; border-top:2px solid #09b801; border-bottom:2px solid #09b801; color:#666; width:260px; line-height:30px; border-left:2px solid #09b801; text-indent:15px;" /><input type="image" src="../images/ingo.jpg" style="margin-left:-2px;" />
		        </div>
		 　　　　<div style=" float:right">
		           <a href="exportphenotypic_csv.jsp" title="CSV File"><img src="../images/down1.jpg" /></a>　<a href="exportphenotypic_txt.jsp" title=" TXT File"><img src="../images/down2.jpg" /></a>　
				</div>
		 </div>
         <table cellpadding="0" cellspacing="0" width="100%" align="center" class="tab1">
				   <tr >
     					    <td width="220" align="center">ID</td>
						    <td width="180" align="center">grainyield</td>
						    <td width="180" align="center">earlength</td>
						    <td width="180" align="center">kernelweight</td>
						    <td width="180" align="center">rownumber</td>
					   </tr>
				       <%
							for(int i=0;i<phenotypesofcrosses_list.size();i++)
				            { 
		               %>
		                     <tr>
							    <td align="center"><a href="phenoagritraitsadvance.jsp?trait=<%=phenotypesofcrosses_list.get(i).getId()%>"><%=phenotypesofcrosses_list.get(i).getId()%></a></td> 
								<td align="center"><%=phenotypesofcrosses_list.get(i).getGrainyield()%></td>
								<td align="center"><%=phenotypesofcrosses_list.get(i).getEarlength()%></td>
								<td align="center"><%=phenotypesofcrosses_list.get(i).getKernelweight()%></td>
								<td align="center"><%=phenotypesofcrosses_list.get(i).getRownumber()%></td>
						   </tr> 
					     <%
					       }//for 
					    %>
			</table>

    </div>
    
  
  </div>   

<!--主体部结束--> 
<!--版权信息开始--> 
<%@ include file="../ListFooter.jsp" %>                                           
<!--版权结束-->
</body>


</html>



