
<%@ page contentType="text/html;charset=gbk" language="java" pageEncoding="UTF-8"%>
<%@ page import="org.util.DbBean"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title>MaizeGo DataMine Platform</title>

  <meta http-equiv="pragma" content="no-cache"/>
  <meta http-equiv="cache-control" content="no-cache"/>
  <meta http-equiv="expires" content="0"/>
  <meta http-equiv="keywords" content="maize"/>
  <meta http-equiv="description" content="This is a database search engine of maize!"/>
  
  <link href="../css/search.css" rel="stylesheet" type="text/css" />
  <script language="javascript" type="text/javascript" src="../Script/search.js"></script>     
  
  
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

<style type="text/css">


.sel select{ width:130px;height:200px;margin-top:0px;}
#sel2{ width:160px;}
#sel3{ width:170px;}
</style>

		<%
		response.setCharacterEncoding("UTF-8");
		DbBean dbb=new DbBean();
		
		//  表amp_ear_traits
		CachedRowSetImpl tst=new CachedRowSetImpl();   
		CachedRowSetImpl ss=new CachedRowSetImpl();
		CachedRowSetImpl nss=new CachedRowSetImpl();
		CachedRowSetImpl mix=new CachedRowSetImpl();

		
		// 表	f1_ear_traits
		CachedRowSetImpl mod=new CachedRowSetImpl();
		CachedRowSetImpl zheng58=new CachedRowSetImpl();	
		
		
		//表          germplasm_ril		
		CachedRowSetImpl ril1=new CachedRowSetImpl();
		CachedRowSetImpl ril2=new CachedRowSetImpl();			
		CachedRowSetImpl ril3=new CachedRowSetImpl();
		CachedRowSetImpl ril4=new CachedRowSetImpl();			
		CachedRowSetImpl ril5=new CachedRowSetImpl();
		CachedRowSetImpl ril6=new CachedRowSetImpl();			
		CachedRowSetImpl ril7=new CachedRowSetImpl();
		CachedRowSetImpl ril8=new CachedRowSetImpl();	
		CachedRowSetImpl ril9=new CachedRowSetImpl();
		CachedRowSetImpl ril10=new CachedRowSetImpl();			
		CachedRowSetImpl ril11=new CachedRowSetImpl();
		CachedRowSetImpl ril12=new CachedRowSetImpl();			
		
		
					
		ResultSet rs1;
		String sqll="SELECT `Lines` FROM germplasmlines WHERE `Subpopulations`='TST';";
		rs1=dbb.executeQuery(sqll);
		tst.populate(rs1);
		sqll="SELECT `Lines` FROM germplasmlines WHERE `Subpopulations`='SS';";
		rs1=dbb.executeQuery(sqll);
		ss.populate(rs1);	
		sqll="SELECT `Lines` FROM germplasmlines WHERE `Subpopulations`='NSS';";
		rs1=dbb.executeQuery(sqll);
		nss.populate(rs1);	
		sqll="SELECT `Lines` FROM germplasmlines WHERE `Subpopulations`='Mixed';";
		rs1=dbb.executeQuery(sqll);
		mix.populate(rs1);			
		
				
		sqll="SELECT `LINE` FROM f1_ear_traits WHERE `LINE` LIKE '%Mo17_F1';";
		rs1=dbb.executeQuery(sqll);
		mod.populate(rs1);			
		sqll="SELECT `LINE` FROM f1_ear_traits WHERE `LINE` LIKE '%Zheng58_F1';";
		rs1=dbb.executeQuery(sqll);
		zheng58.populate(rs1);	
		
		
		
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='KUI3/SC55';";
		rs1=dbb.executeQuery(sqll);
		ril1.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='BY815/KUI3';";
		rs1=dbb.executeQuery(sqll);
		ril2.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='K22/BY815';";
		rs1=dbb.executeQuery(sqll);
		ril3.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='DE3/BY815';";
		rs1=dbb.executeQuery(sqll);
		ril4.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='B73/BY804';";
		rs1=dbb.executeQuery(sqll);
		ril5.populate(rs1);					
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='KUI3/B77';";
		rs1=dbb.executeQuery(sqll);
		ril6.populate(rs1);	
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='K22/CI7';";
		rs1=dbb.executeQuery(sqll);
		ril7.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='DAN340/K22';";
		rs1=dbb.executeQuery(sqll);
		ril8.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='ZHENG58/SK';";
		rs1=dbb.executeQuery(sqll);
		ril9.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='MO17/X26-4';";
		rs1=dbb.executeQuery(sqll);
		ril10.populate(rs1);			
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='YU87-1/BK';";
		rs1=dbb.executeQuery(sqll);
		ril11.populate(rs1);					
		sqll="select `ARRAY_ID` FROM germplasm_ril WHERE `POP`='ZONG3/YU87-1';";
		rs1=dbb.executeQuery(sqll);
		ril12.populate(rs1);				
					
		 %>

</head>
  
<body>
<%@ include file="../ListHeader.jsp"%>
<!--导航结束-->  
<!--主体部分开始-->      
<!--导航结束-->  
<!--主体部分开始-->   
<div class="main">   

	           <div id="Jobs">
                   	 <div id="Jobs_caption">
			            <ul>
			              <li class="b">Germplasm</li>

			            </ul>
			         </div>
				     <div id="Jobs_content" style="font-size:16px; padding-left:10px;height:420px">
				 <form action="germplas.action" method="post">
                          <br/>
				      <div style="font-size:12px"><b>AMP</b>: Association Mapping Panel;&nbsp;&nbsp;<b>RIL</b>: Recombinant Inbred Lines;<br/> 
                       <b>TST</b>: Tropical and Subtropical group;&nbsp;&nbsp;<b>SS</b>: stiff stalk group;&nbsp;&nbsp;<b>NSS</b>:non-stiff stalk group.</div>
				           
                                
                  		<div>
	                     <span class="Phenotypicstrongblack"><br />Input:</span><span class="Grand9">(Please select the germplasm)</span> 
	                    </div>
            
	                   <div class="sel">
	                   		<table>
	                   			<tr>
	                   			
	                   			    <td style="padding:0px"> <div style="font-size:12px;color:#08b702;"><b>Panel :</b> </div></td>
								 	<td style="padding:0px"> <div style="font-size:12px;color:#08b702;"><b>Sub-population :</b> </div></td>
								  	<td style="padding:0px"> <div style="font-size:12px;color:#08b702;"><b>Line Name :</b> </div></td>
								
								</tr>
								<tr>
									<td style="padding:0px"><select id="sel1"name="table"multiple="multiple" size="5" class="select"></select></td>
									<td style="padding:0px"><select id="sel2"name="subpop"multiple="multiple" size="5" class="select"></select></td>
								    <td style="padding:0px"><select id="sel3"name="line"multiple="multiple" class="select"></select></td>
								</tr>
							 
							</table>
                       </div>                        
                        <input style="margin-top: 10px" type="image"src="/maizego/images/button_08.jpg" height="36"width="100"/>            
	                 </form>
	                 </div>
	               </div>

<!--右分栏结束--> 
 </div>
<!--主体部结束--> 
<!--版权信息开始--> 
<%@ include file="../ListFooter.jsp"%>                                           
<!--版权结束-->
</body>













<script type="text/javascript">
var $id = function (id) {
    return "string" == typeof id ? document.getElementById(id) : id;
};

function addEventHandler(oTarget, sEventType, fnHandler) {
    if (oTarget.addEventListener) {
        oTarget.addEventListener(sEventType, fnHandler, false);
    } else if (oTarget.attachEvent) {
        oTarget.attachEvent("on" + sEventType, fnHandler);
    } else {
        oTarget["on" + sEventType] = fnHandler;
    }
};

function Each(arrList, fun){
    for (var i = 0, len = arrList.length; i < len; i++) { fun(arrList[i], i); }
};

function GetOption(val, txt) {
    var op = document.createElement("OPTION");
    op.value = val; op.innerHTML = txt;
    return op;
};

var Class = {
  create: function() {
    return function() {
      this.initialize.apply(this, arguments);
    }
  }
}

Object.extend = function(destination, source) {
    for (var property in source) {
        destination[property] = source[property];
    }
    return destination;
}


var CascadeSelect = Class.create();
CascadeSelect.prototype = {
  //select集合，菜单对象
  initialize: function(arrSelects, arrMenu, options) {
    if(arrSelects.length <= 0 || arrMenu.lenght <= 0) return;//菜单对象
    
    var oThis = this;
    
    this.Selects = [];//select集合
    this.Menu = arrMenu;//菜单对象
    
    this.SetOptions(options);
    
    this.Default = this.options.Default || [];
    
    this.ShowEmpty = !!this.options.ShowEmpty;
    this.EmptyText = this.options.EmptyText.toString();
    
    //设置Selects集合和change事件
    Each(arrSelects, function(o, i){
        addEventHandler((oThis.Selects[i] = $id(o)), "change", function(){ oThis.Set(i); });
    });
    
    this.ReSet();
  },
  //设置默认属性
  SetOptions: function(options) {
    this.options = {//默认值
        Default:    [],//默认值(按顺序)
        ShowEmpty:    false,//是否显示空值(位于第一个)
        EmptyText:    "请选择"//空值显示文本(ShowEmpty为true时有效)
    };
    Object.extend(this.options, options || {});
  },
  //初始化select
  ReSet: function() {
  
    this.SetSelect(this.Selects[0], this.Menu, this.Default.shift());
    this.Set(0);
  },
  //全部select设置
  Set: function(index) {
    var menu = this.Menu
    
    //第一个select不需要处理所以从1开始
    for(var i=1, len = this.Selects.length; i < len; i++){
        if(menu.length > 0){
            //获取菜单
            var value = this.Selects[i-1].value;
            if(value!=""){
                Each(menu, function(o){ if(o.val == value){ menu = o.menu || []; } });
            } else { menu = []; }
            
            //设置菜单
            if(i > index){ this.SetSelect(this.Selects[i], menu, this.Default.shift()); }
        } else {
            //没有数据
            this.SetSelect(this.Selects[i], [], "");
        }
    }
    //清空默认值
    this.Default.length = 0;
  },
  //select设置
  SetSelect: function(oSel, menu, value) {
    oSel.options.length = 0; oSel.disabled = false;
    if(this.ShowEmpty){ oSel.appendChild(GetOption("", this.EmptyText)); }
    if(menu.length <= 0){ oSel.disabled = true; return; }
    
    Each(menu, function(o){
        var op = GetOption(o.val, o.txt ? o.txt : o.val); op.selected = (value == op.value);
        oSel.appendChild(op);
    });    
  },
  //添加菜单
  Add: function(menu) {
    this.Menu[this.Menu.length] = menu;
    this.ReSet();
  },
  //删除菜单
  Delete: function(index) {
    if(index < 0 || index >= this.Menu.length) return;
    for(var i = index, len = this.Menu.length - 1; i < len; i++){ this.Menu[i] = this.Menu[i + 1]; }
    this.Menu.pop()
    this.ReSet();
  }
};


window.onload=function(){
    
    var menu = [
 
        {'val': 'AMP', 'menu': [
            {'val': 'TST','menu':[
            <%while(tst.next()){%>
	            {'val':"<%=tst.getString(1)%>"},<%}%>]
            },
            {'val': 'SS','menu':[
            <%while(ss.next()){%>
	            {'val':"<%=ss.getString(1)%>"},<%}%>]
	            },
            {'val': 'NSS','menu':[
            <%while(nss.next()){%>
	            {'val':"<%=nss.getString(1)%>"},<%}%>]
	            },
            {'val': 'Mixed','menu':[
            <%while(mix.next()){%>
	            {'val':"<%=mix.getString(1)%>"},<%}%>]
	            }]
        },
        
        {'val': 'RIL', 'menu':[
	        {'val':'KUI3/SC55','menu':[<%while(ril1.next()){%>{'val':"<%=ril1.getString(1)%>"},<%}%>]},     
	        {'val':'BY815/KUI3','menu':[<%while(ril2.next()){%>{'val':"<%=ril2.getString(1)%>"},<%}%>]},
	        {'val':'K22/BY815','menu':[<%while(ril3.next()){%>{'val':"<%=ril3.getString(1)%>"},<%}%>]},     
	        {'val':'DE3/BY815','menu':[<%while(ril4.next()){%>{'val':"<%=ril4.getString(1)%>"},<%}%>]},         
	        {'val':'B73/BY804','menu':[<%while(ril5.next()){%>{'val':"<%=ril5.getString(1)%>"},<%}%>]},     
	        {'val':'KUI3/B77','menu':[<%while(ril6.next()){%>{'val':"<%=ril6.getString(1)%>"},<%}%>]},         
	        {'val':'K22/CI7','menu':[<%while(ril7.next()){%>{'val':"<%=ril7.getString(1)%>"},<%}%>]},     
	        {'val':'DAN340/K22','menu':[<%while(ril8.next()){%>{'val':"<%=ril8.getString(1)%>"},<%}%>]},         
	        {'val':'ZHENG58/SK','menu':[<%while(ril9.next()){%>{'val':"<%=ril9.getString(1)%>"},<%}%>]},     
	        {'val':'MO17/X26-4','menu':[<%while(ril10.next()){%>{'val':"<%=ril10.getString(1)%>"},<%}%>]},         
	        {'val':'YU87-1/BK','menu':[<%while(ril11.next()){%>{'val':"<%=ril11.getString(1)%>"},<%}%>]},     
	        {'val':'ZONG3/YU87-1','menu':[<%while(ril12.next()){%>{'val':"<%=ril12.getString(1)%>"},<%}%>]}      
         ]
         },
         
        {'val': 'AMP×tester', 'menu': [
            {'val': 'Mo17_F1','menu':[
            <%while(mod.next()){%>
	            {'val':"<%=mod.getString(1)%>"},<%}%>]
            },
            {'val': 'Zheng58_F1','menu':[
            <%while(zheng58.next()){%>
	            {'val':"<%=zheng58.getString(1)%>"},<%}%>]
	            }]	            
	            }

         
         
         
  
    ];
    
    var sel=["sel1", "sel2", "sel3"];
    
    var val=["AMP", "TST", "CHOOSE"];
    
    var cs = new CascadeSelect(sel, menu, { Default: val });
    
    $id("btnA").onclick=function(){cs.ShowEmpty=!cs.ShowEmpty;}
    
    $id("btnB").onclick=function(){
        cs.Add(
            {'val': '5 ->', 'menu': [
                {'val': '5_1 ->', 'menu': [
                    {'val': '5_1_1 ->', 'menu': [
                        {'val': '5_1_1_1 ->', 'menu': [
                            {'val': '5_1_1_1_1'}
                        ]}
                    ]}
                ]}
            ]}
        )
    }
    
    $id("btnC").onclick=function(){
        cs.Delete(3)
    }
}





</script>










</html>
