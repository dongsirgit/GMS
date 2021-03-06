<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %> 
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>收入成本预测</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/content.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/popup.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar.js"></script>
	<script type="text/javascript">
			
          	//预测信息详情
          	function detail(proName){
          		doOpenDlgScr("收入成本预测详情","<%=request.getContextPath()%>/costPre.do?method=toDetail&proName="+proName,1080,450);
          	}
          	
          	 //弹出详细信息
    		var g_pop=null;
	
		  	function doOpenDlgScr(sTitle,sUrl,iWidth,iHeight) {
			  g_pop = null;
			  g_pop = new Popup({ contentType:1,scrollType:"yes",isReloadOnClose:false });
			  g_pop.config.width = iWidth;
			  g_pop.config.height = iHeight;
			  g_pop.config.isSupportDraging= true;
			  g_pop.setContent("title",sTitle);
			  g_pop.setContent("contentUrl",sUrl);
			  g_pop.build();
			  g_pop.show();
			}
	
		    //关闭详细信息
			function g_close_pop(){
			  g_pop.close();
			}
          </script>
     
  </head>
  
  <body class="bod">
  <html:form action="costPre.do?method=predict" method="post">
	<div >
  	<table cellSpacing=0 cellPadding=0 height="100%">
      <tr 
  style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_header.gif); BACKGROUND-REPEAT: repeat-x; " 
  height=47>
        <td width=10><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span></td>
        <td><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span><span 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">收入成本预测</span><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span></td>
        <td 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_rc.gif)" 
    width=10></td>
      </tr>
      <tr>
        <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_ls.gif)">&nbsp;</td>
        <td  style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white;width: 10px" vAlign=top align=left>
			 <div style="width:900px">
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >预计年月:
			 		<html:select property="preYear" >
			 			<html:option value="2013" styleClass="slt4dim">2013</html:option>
			 			<html:option value="2014" styleClass="slt4dim">2014</html:option>
			 			<html:option value="2015" styleClass="slt4dim">2015</html:option>
			 			<html:option value="2016" styleClass="slt4dim">2016</html:option>
			 			<html:option value="2017" styleClass="slt4dim">2017</html:option>
			 			<html:option value="2018" styleClass="slt4dim">2018</html:option>
			 			<html:option value="2019" styleClass="slt4dim">2019</html:option>
			 			<html:option value="2020" styleClass="slt4dim">2020</html:option>
			 		</html:select>年
			 		<html:select property="preMonth" styleClass="slt4dim">
			 			<html:option value="01" styleClass="slt4dim">01</html:option>
			 			<html:option value="02" styleClass="slt4dim">02</html:option>
			 			<html:option value="03" styleClass="slt4dim">03</html:option>
			 			<html:option value="04" styleClass="slt4dim">04</html:option>
			 			<html:option value="05" styleClass="slt4dim">05</html:option>
			 			<html:option value="06" styleClass="slt4dim">06</html:option>
			 			<html:option value="07" styleClass="slt4dim">07</html:option>
			 			<html:option value="08" styleClass="slt4dim">08</html:option>
			 			<html:option value="09" styleClass="slt4dim">09</html:option>
			 			<html:option value="10" styleClass="slt4dim">10</html:option>
			 			<html:option value="11" styleClass="slt4dim">11</html:option>
			 			<html:option value="12" styleClass="slt4dim">12</html:option>
			 		</html:select>月
			 		&nbsp;&nbsp;&nbsp;</font>
            		<html:submit value="查询/预测" styleClass="cmdField" style="width:70px"/>&nbsp;&nbsp;&nbsp;
            		<c:if test="${resultCount!=null}">
            		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >
						共计<c:out value="${resultCount}"/>条
					</font></c:if>
			 </div>
			<div style="width:900px; overflow: auto; height: 95%;">
           		 <table class=gridView id=ctl00_ContentPlaceHolder2_GridView1 style=" BORDER-COLLAPSE: collapse;width:100%" >
             		 <tr >
		                  <th class=gridViewHeader scope=col>预测年月</th>
		                  <th class=gridViewHeader scope=col>部门</th>
		                  <th class=gridViewHeader scope=col>项目经理</th>
		                  <th class=gridViewHeader scope=col>项目编号</th>
		                  <th class=gridViewHeader scope=col>项目名称</th>
		                  <th class=gridviewHeader scope=col>计费人数</th>
		                  <th class=gridviewHeader scope=col>预计收入</th>
		                  <th class=gridviewHeader scope=col>预计成本</th>
		                  <th class=gridviewHeader scope=col>预计报销</th>
		                  <th class=gridviewHeader scope=col>详细信息</th>
		             </tr>
	                <logic:empty name="ciList" scope="request" >
	  					 <tr> 
	  						<td style="color:#364c6d;" colspan="100">暂无数据!</td>
	  					</tr>
	  				</logic:empty>
	  				<logic:notEmpty name="ciList" scope="request">
	  					<logic:iterate id="ci" name="ciList">
			  				<tr OnMouseOver="CurrentColor=this.style.backgroundColor;this.style.backgroundColor='#7EAFCB'" OnMouseOut="this.style.backgroundColor=CurrentColor" style="background-color:#eeeeee;">
			                  <td class=gridViewItem style="height:25px">${ci.yearAndMonth}</td>
			                  <td class=gridViewItem>${ci.department}</td>
			                  <td class=gridViewItem>${ci.projectManager}</td>
			                  <td class=gridViewItem>${ci.proId}</td>
			                  <td class=gridViewItem>${ci.projectName}</td>
			                  <td class=gridViewItem>${ci.billingNumbers}</td>
			                  <td class=gridViewItem>${ci.predictionIncome}</td>
			                  <td class=gridViewItem>${ci.predictionCost}</td>
			                  <td class=gridViewItem>${ci.predictionExpenses}</td>
			                  <td class=gridViewItem><input type="button" style="color:#364c6d;width:45px" value="详情" onclick="detail('${ci.projectName}')"></td>
			                  </tr>
		  		    	</logic:iterate>
		  		    	<tr style="background-color:#eeeeee;">
		  		    		<td class=gridViewItem colspan="5" style="height:25px;">合计</td>
		  		    		<td class=gridViewItem>${caiiAll.billingNumbers}</td>
		                  	<td class=gridViewItem>${caiiAll.predictionIncome}</td>
		                 	<td class=gridViewItem>${caiiAll.predictionCost}</td>
		                 	<td class=gridViewItem>${caiiAll.predictionExpenses}</td>
		                 	<td class=gridViewItem>&nbsp;</td>
		  		    	</tr>
		  			</logic:notEmpty >
            </table>
          </div>
           </td>
        <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_rs.gif)"></td>
      </tr>
      
      <tr style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_fs.gif); BACKGROUND-REPEAT: repeat-x" height=10>
        <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_lf.gif)"></td>
        <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_fs.gif)"></td>
        <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_rf.gif)"></td>
      </TR>
  </table>
</div>
</html:form>
</body>
</html>
