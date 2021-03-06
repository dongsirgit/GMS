<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/tlds/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tlds/struts-tiles.tld" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<style type=text/css> 
{
	font-size: 12px
}
#menuTree A {
	color: #566984; text-decoration: none
}
</style>
<script src="<%=request.getContextPath()%>/js/TreeNode.js" type=text/javascript></script>
<script src="<%=request.getContextPath()%>/js/Tree.js" type=text/javascript></script>
</head>
<body style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg.gif); BACKGROUND-REPEAT: repeat-x">
<table height="77%" cellSpacing=0 cellPadding=0 width="19%">
  <tbody>
    <tr>
      <td width=10 height=29><IMG src="<%=request.getContextPath()%>/images/bg_left_tl.gif"></td>
      <td style="FONT-SIZE: 18px; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_left_tc.gif); COLOR: white; FONT-FAMILY: system">
      	
      </td>
      <td width=10><img src="<%=request.getContextPath()%>/images/bg_left_tr.gif"></td>
    </tr>
    <tr>
      <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_left_ls.gif)"></td>
      <td id=menuTree style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 10px; HEIGHT: 100%; BACKGROUND-COLOR: white" vAlign=top>
      </td>
      <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_left_rs.gif)"></td>
    </tr>
    <tr>
      <td width=10><img src="<%=request.getContextPath()%>/images/bg_left_bl.gif"></td>
      <td style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_left_bc.gif)"></td>
      <td width=10><img src="<%=request.getContextPath()%>/images/bg_left_br.gif"></td>
    </tr>
  </tbody>
</table>
<script type=text/javascript>
	var tree = null;
	var fun1 = new TreeNode('员工管理');
	var fun2 = new TreeNode('员工基本信息管理', '<%=request.getContextPath()%>/empbi.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun1.add(fun2);
	var fun14 = new TreeNode('员工归属信息管理', '<%=request.getContextPath()%>/empri.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun1.add(fun14);
	var fun3 = new TreeNode('员工假期管理', '<%=request.getContextPath()%>/empvi.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun1.add(fun3);
	var fun4 = new TreeNode('员工离职管理', '<%=request.getContextPath()%>/empdi.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun1.add(fun4);
	var fun15 = new TreeNode('客户报价管理', '<%=request.getContextPath()%>/cstmPri.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun1.add(fun15);
	
	var fun6 = new TreeNode('员工角色管理', '', 'tree_node.gif', null, 'tree_node.gif', null);
//	fun1.add(fun6);
	
	
	var fun7 = new TreeNode('工时管理');
	var fun8 = new TreeNode('标准工时管理', '<%=request.getContextPath()%>/hoursworkStd.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun7.add(fun8);
	var fun9 = new TreeNode('客户确认工时管理', '<%=request.getContextPath()%>/customer.do?method=toImp', 'tree_node.gif', null, 'tree_node.gif', null);
	fun7.add(fun9);
	var fun10 = new TreeNode('GAP工时核查','<%=request.getContextPath()%>/gapch.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun7.add(fun10);
	//var fun11 = new TreeNode('冲销GAP工时', '', 'tree_node.gif', null, 'tree_node.gif', null);
	
	var fun5 = new TreeNode('项目管理');
	var fun17 = new TreeNode('项目管理','<%=request.getContextPath()%>/proj.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun5.add(fun17);
	var fun12 = new TreeNode('成本管理');
	var fun13 = new TreeNode('系统查询');
	
	var fun15 = new TreeNode('员工工时对账单', '<%=request.getContextPath()%>/wt4chk.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun13.add(fun15);
	var fun16 = new TreeNode('收入成本预测管理', '<%=request.getContextPath()%>/costPre.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun13.add(fun16)
	var fun17 = new TreeNode('加班可补贴工时查询', '<%=request.getContextPath()%>/hoursOT.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun13.add(fun17)
	var fun18 = new TreeNode('员工归属汇总表', '<%=request.getContextPath()%>/empRelSta.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun13.add(fun18)
	var fun19 = new TreeNode('客户收入查询', '<%=request.getContextPath()%>/cusIc.do?method=initPage', 'tree_node.gif', null, 'tree_node.gif', null);
	fun13.add(fun19)
	
	tree1 = new Tree(fun1);
	tree1.show('menuTree')
	
	tree2 = new Tree(fun7);
	tree2.show('menuTree')
	
	tree3 = new Tree(fun5);
	tree3.show('menuTree')
	
	tree4 = new Tree(fun13);
	tree4.show('menuTree')
	
<!--	tree5 = new Tree(fun12);-->
<!--	tree5.show('menuTree')-->
</script>
</body>
</html>