<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>GAP管理系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	
	<LINK href="<%=request.getContextPath()%>/css/public.css" type="text/css" rel="stylesheet">
	<LINK href="<%=request.getContextPath()%>/css/login.css" type="text/css" rel="stylesheet">
	<style type="text/css">
		.style1 {font-family: "新宋体"}
	</style>
  </head>
  
  <body>
<div id=div1>
  <table id=login height="100%" cellSpacing=0 cellPadding=0 width=800 align=center>
    <tbody>
      <tr id=main>
        <td>
          <table height="100%" cellSpacing=0 cellPadding=0 width="100%">
            <tbody>
              <tr>
                <td colSpan=4 align="center">
                	<span class="STYLE1">
                		<font size="+4" style="letter-spacing:5px;color:gray; " >中行工时GAP管理系统</font>
                	</span>
                </td>
              </tr>
              <tr height=30>
                <td width=380>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
              </tr>
              <tr height=40>
                <td rowSpan=4>&nbsp;</td>
                <td>用户名：</td>
                <td>
                  <input class=textbox id=txtUserName name=txtUserName>
                </td>
                <td width=120>&nbsp;</td>
              </tr>
              <tr height=40>
                <td>密　码：</td>
                <td>
                  <input class=textbox id=txtUserPassword type=password name=txtUserPassword>
                </td>
                <td width=120>&nbsp;</td>
              </tr>
              <tr height=40>
               
              </tr>
              <tr height=40>
                <td></TD>
                <td align=right>
                  <input  id=btnLogin type=button class="button" value=" 登 录 " name=btnLogin onClick="window.location='toIndex.do?method=toIndex'">
                </td>
                <td width=120>&nbsp;</td>
              </tr>
              <tr height=110>
                <td colSpan=4>&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </td>
      </tr>
      <tr id=root height=104>
        <td>&nbsp;</td>
      </tr>
    </tbody>
  </table>
</div>
<div id=div2 style="DISPLAY: none"></div>
  </body>
</html>
