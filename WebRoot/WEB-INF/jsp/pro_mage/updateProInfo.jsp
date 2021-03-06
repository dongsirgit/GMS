<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
		td { 
			color:#364c6d; border-right: #bad6ec 1px solid; border-top: #bad6ec 1px solid; border-left: #bad6ec 1px solid; 
			line-height: 12px; border-bottom: #bad6ec 1px solid;white-space: nowrap; font-size:13px; padding-top:0.05cm;
			text-align:right
			}
		.btn { 
			    height:30px; width:80px;
		}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar.js"></script>
<script type="text/javascript">
</script>
  </head>
  
  <body>
  	<c:if test="${'yes'==success_msg}">
		<script type="text/javascript">
			parent.g_close_pop();
		</script>
	</c:if>
  		<div align="center">
		<font size="+3">修改项目信息</font>
	</div>
	<br />
	<br />
	<html:form action="proj.do?method=modifyInfo">
		<table border="1" align="center" style="background-color:#eeeeee">
			<tr>
				<td>
					项目编号：
					<html:text property="proId" size="15px" readonly="true"/>
				</td>
				<td>
					项目名称：
					<html:text property="proName" size="15px"/>
				</td>
				<td>
					事业部：
					<html:text property="careerdepartment" size="15px"/>
				</td>
			</tr>
			<tr>
				<td>
					实施部：
					<html:text property="implementDepartment" size="15px"/>
				</td>
				<td>
					项目经理：
					<html:text property="projectManager" size="15px"/>
				</td>
				<td>
					客户名称：
					<html:text property="customerName" size="15px"/>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					开始日期：
					<html:text property="beginDate" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
				</td>
				<td>
					结束日期：
					<html:text property="endDate" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="text-align: center">
					<html:submit styleClass="btn" value="确定"/>
					&nbsp;
					<html:reset styleClass="btn"  value="重填"/>
				</td>
			</tr>
		</table>
	</html:form>
  </body>
</html:html>
