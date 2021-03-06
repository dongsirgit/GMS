<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %> 
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>员工假期管理</title>
   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/content.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/popup.js"></script>
	<script type="text/javascript">
			//验证必输项
			function vali(){
				var name ="";
				name = document.getElementById("ename").value;
				if("".equals(name) || name.length==0){
					alert('员工姓名/编号不能为空！');
				}
			}
			
          	//导入员工请假信息
          	function impInfo(){
          		doOpenDlgScr("导入员工请假信息","<%=request.getContextPath()%>/imp.do?method=toImp&status=evi",400,200);
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
     <script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar.js"></script>
  </head>
  
  <body class="bod">
  <html:form action="empvi.do?method=search">
	<div >
  	<table cellSpacing=0 cellPadding=0 height="100%">
      <tr 
  style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_header.gif); BACKGROUND-REPEAT: repeat-x; " 
  height=47>
        <td width=10><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span></td>
        <td><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span><span 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">员工假期管理</span><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span></td>
        <td 
    style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_rc.gif)" 
    width=10></td>
      </tr>
      <tr>
        <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_ls.gif)">&nbsp;</td>
        <td  style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white;width: 10px" vAlign=top align=left>
			 <div style="width:900px">
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >员工姓名/员工编号:</font>
			 		<html:text property="ename4vac" styleClass="s4relquery"/>&nbsp;&nbsp;&nbsp;
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >请假类型:</font>
			 		<html:select property="vacStyle" styleClass="s4relquery">
			 			<html:option value="" styleClass="s4relquery">请选择</html:option>
			 			<html:option value="年休假" styleClass="s4relquery">年休假</html:option>
			 			<html:option value="事假" styleClass="s4relquery">事假</html:option>
			 			<html:option value="病假" styleClass="s4relquery">病假</html:option>
			 			<html:option value="哺乳假" styleClass="s4relquery">哺乳假</html:option>
			 			<html:option value="产假" styleClass="s4relquery">产假</html:option>
			 			<html:option value="产检假" styleClass="s4relquery">产检假</html:option>
			 			<html:option value="婚假" styleClass="s4relquery">婚假</html:option>
			 			<html:option value="陪产假" styleClass="s4relquery">陪产假</html:option>
			 			<html:option value="丧事假" styleClass="s4relquery">丧事假</html:option>
			 		</html:select>&nbsp;&nbsp;&nbsp;
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >部门:</font>
			 		<html:select property="department4vac" styleClass="slt4dim">
			 			<html:option value="" styleClass="slt4dim">请选择</html:option>
			 			<logic:iterate id="dpt" name="dpts">
			 				<html:option value="${dpt}" styleClass="slt4dim">${dpt}</html:option>
			 			</logic:iterate>
			 			
			 		</html:select>&nbsp;&nbsp;&nbsp;
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >请假时间:</font>
			 		<html:text property="vacDateS" styleClass="s4relquery" size="15px" onclick="SelectDate(this)" readonly="readonly"/>-<html:text property="vacDateE" styleClass="s4relquery" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
			 		&nbsp;&nbsp;&nbsp;
            		<html:submit value="查询" styleClass="cmdField" onclick="vali();"/>
	         		<c:if test="${resultCount!=null}"><br/>
            		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >
						共计<c:out value="${resultCount}"/>条
					</font></c:if>
			 </div>
			<div style="width:900px; overflow: auto; height: 85%;">
           		 <table class=gridView id=ctl00_ContentPlaceHolder2_GridView1 style=" BORDER-COLLAPSE: collapse;width:100%" >
             		 <tr >
<!--		                  <th class=gridViewHeader scope=col>全选<input type="checkbox" id="checkAll" /></th>-->
		                  <th class=gridViewHeader scope=col>员工编号</th>
		                  <th class=gridViewHeader scope=col>姓名</th>
		                  <th class=gridViewHeader scope=col>部门编号</th>
		                  <th class=gridViewHeader scope=col>部门名称</th>
		                  <th class=gridViewHeader scope=col>请假类型名称</th>
		                  <th class=gridviewHeader scope=col>请假日期</th>
		                  <th class=gridviewHeader scope=col>总小时数</th>
		                  <th class=gridviewHeader scope=col>单据状态</th>
		                  <th class=gridviewHeader scope=col>审批通过时间</th>
		             </tr>
	                <logic:empty name="eviList" scope="request" >
	  					 <tr> 
	  						<td style="color:#364c6d;" colspan="100">暂无数据!</td>
	  					</tr>
	  				</logic:empty>
	  				<logic:notEmpty name="eviList" scope="request">
	  					<logic:iterate id="empVac" name="eviList">
			  				<tr OnMouseOver="CurrentColor=this.style.backgroundColor;this.style.backgroundColor='#7EAFCB'" OnMouseOut="this.style.backgroundColor=CurrentColor" style="background-color:#eeeeee;">
<!--			                  <td class=gridViewItem><input name="chk"  type="checkbox" id="${empVac.employeeId}" /></td>-->
			                  <td class=gridViewItem><bean:write name="empVac" property="employeeId"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="employeeName"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="departmentId"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="departmentName"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="leaveTypeName"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="psaDate" format="yyyy-MM-dd"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="totalNumberHours"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="receiptStatus"/></td>
			                  <td class=gridViewItem><bean:write name="empVac" property="approvedByDate"/></td>
			                  </tr>
		  		    	</logic:iterate>
		  			</logic:notEmpty >
            </table>
          </div>
          <div style="width: 900px">
	          <html:button property="aaa"  styleClass="btn4do" value="导入PAS请假信息" onclick="impInfo();"/>&nbsp;
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
