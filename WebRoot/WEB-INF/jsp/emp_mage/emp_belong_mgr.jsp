<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %> 
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>员工归属信息管理</title>
   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/content.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/popup.js"></script>
	<script type="text/javascript">
			
			//添加员工归属信息
          	function insertInfo(){
          		doOpenDlgScr("新增员工归属信息","<%=request.getContextPath()%>/empri.do?method=toAdd",1000,400);
          	}
          	//修改员工归属信息
          	function updateInfo(){
          		var chkboxs = document.getElementsByName("chk");
          		var str ;
          		var chkCount = 0;
          		for(var i=0;i<chkboxs.length;i++){
          			if(chkboxs[i].checked==true){
          				str=chkboxs[i].id;
          				chkCount++;
          			}
          			if(chkCount>1){
          				alert("只能选择修改一条数据，请重新操作！");
          				return;
          			}
          		}
          		if(chkCount==0){
          			alert("请选择一条数据进行操作！");
          			return;
          		}
          		doOpenDlgScr("修改员工归属信息","<%=request.getContextPath()%>/empri.do?method=toUpdate&str="+str,1000,400);
          	}
          	//删除归属信息
          	function delInf(){
          		var chkboxs = document.getElementsByName("chk");
          		var msg="" ;
          		var chkCount = 0;
          		for(var i=0;i<chkboxs.length;i++){
          			if(chkboxs[i].checked==true){
          				msg+=chkboxs[i].id+"_-_";
          				chkCount++;
          			}
          		}
          		if(chkCount==0){
          			alert("请至少选择一条数据进行操作！");
          			return;
          		}
          		document.getElementById("msg4del").value=msg;
          		document.getElementById("relForm").action="<%=request.getContextPath()%>/empri.do?method=deleteRelInfo";
          		document.getElementById("relForm").submit();
          	}
          	//导入员工归属信息
          	function impInfo(){
          		doOpenDlgScr("导入员工归属信息","<%=request.getContextPath()%>/imp.do?method=toImp&status=eri",400,200);
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
			
			function selectAll(){
				var chked = document.getElementById("chkall").checked;
				var chks = document.getElementsByName("chk");
				for(var i=0;i<chks.length;i++){
					chks[i].checked=chked;
				}
			}
          </script>
     <script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar.js"></script>
  </head>
  
  <body class="bod">
  
  <html:form styleId="relForm" action="empri.do?method=search">
  	<html:hidden styleId="msg4del" property="msg4del" value=""/>
	<div >
  	<table cellSpacing=0 cellPadding=0 height="100%">
      <tr 
  style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_header.gif); BACKGROUND-REPEAT: repeat-x; " 
  height=47>
        <td width=10><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span></td>
        <td><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span><span 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">员工归属信息管理</span><span 
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
			 		<html:text property="ename4rel" styleClass="s4relquery"/>
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >预计离场时间:</font>
			 		<html:text property="estimateLDateS4rel" styleClass="s4relquery" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >-</font>
			 		<html:text property="estimateLDateE4rel" styleClass="s4relquery" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >项目经理:</font>
			 		<html:select property="ProMgr4rel"  styleClass="s4relquery">
				 		<html:option value=""  styleClass="s4relquery">请选择</html:option>
				 		<logic:notEmpty name="proMgrList" scope="request">
				 			<logic:iterate id="mgr" name="proMgrList" >
				 				<html:option  styleClass="s4relquery" value="${mgr}">${mgr}</html:option>
				 			</logic:iterate>
				 		</logic:notEmpty>
				 	</html:select>
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >业务线:</font>
			 		<html:select property="bl4Rel"  styleClass="s4relquery">
				 		<html:option value=""  styleClass="s4relquery">请选择</html:option>
				 		<logic:notEmpty name="blList4Rel" scope="request">
				 			<logic:iterate id="bl4Rel" name="blList4Rel" >
				 				<html:option  styleClass="s4relquery" value="${bl4Rel}">
				 					<c:choose>
					 					<c:when test="${bl4Rel=='0'}">总体部</c:when>
					 					<c:when test="${bl4Rel=='1'}">上海分行</c:when>
					 					<c:when test="${bl4Rel=='2'}">信息中心</c:when>
					 					<c:when test="${bl4Rel=='3'}">山东</c:when>
					 					<c:when test="${bl4Rel=='4'}">电子渠道</c:when>
					 					<c:when test="${bl4Rel=='5'}">国际结算</c:when>
					 					<c:when test="${bl4Rel=='6'}">信息管理</c:when>
					 					<c:when test="${bl4Rel=='7'}">投资代理</c:when>
					 					<c:when test="${bl4Rel=='8'}">质量管理</c:when>
					 					<c:when test="${bl4Rel=='9'}">核心业务</c:when>
					 					<c:when test="${bl4Rel=='10'}">上海</c:when>
					 					<c:when test="${bl4Rel=='11'}">深圳</c:when>
					 					<c:when test="${bl4Rel=='12'}">成都</c:when>
					 					<c:when test="${bl4Rel=='13'}">上海银商</c:when>
				 						<c:otherwise><c:out value="${bl4Rel}"/></c:otherwise>
				 					</c:choose>
				 				</html:option>
				 			</logic:iterate>
				 		</logic:notEmpty>
				 	</html:select>
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >状态:</font>
			 		<html:select property="status4rel" styleClass="s4relquery">
			 			<html:option value="" styleClass="s4relquery">请选择</html:option>
			 			<html:option value="0" styleClass="s4relquery">长期休假</html:option>
			 			<html:option value="1" styleClass="s4relquery">未到岗</html:option>
			 			<html:option value="2" styleClass="s4relquery">计费</html:option>
			 			<html:option value="3" styleClass="s4relquery">结束</html:option>
			 			<html:option value="4" styleClass="s4relquery">闲置</html:option>
			 			<html:option value="5" styleClass="s4relquery">离职</html:option>
			 			<html:option value="6" styleClass="s4relquery">借调外部</html:option>
			 			<html:option value="7" styleClass="s4relquery">借入</html:option>
			 			<html:option value="8" styleClass="s4relquery">现场储备</html:option>
			 			<html:option value="9" styleClass="s4relquery">公司储备</html:option>
			 			<html:option value="10" styleClass="s4relquery">调离</html:option>
			 			<html:option value="11" styleClass="s4relquery">借调</html:option>
			 			<html:option value="12" styleClass="s4relquery">下包商</html:option>
			 			<html:option value="13" styleClass="s4relquery">管理</html:option>
			 			<html:option value="14" styleClass="s4relquery">销售</html:option>
			 			<html:option value="15" styleClass="s4relquery">售前</html:option>
			 			<html:option value="16" styleClass="s4relquery">调休</html:option>
			 		</html:select>
            		<html:submit value="查询" styleClass="cmdField" onclick="vali();"/>
            		&nbsp;&nbsp;&nbsp;
            		<c:if test="${resultCount!=null}">
            		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >
						共计<c:out value="${resultCount}"/>条
					</font></c:if>
			 </div>
			<div style="width:900px; overflow: auto; height: 85%;">
           		 <table class=gridView id=ctl00_ContentPlaceHolder2_GridView1 style=" BORDER-COLLAPSE: collapse;width:100%" >
             		 <tr >
		                  <th class=gridViewHeader scope=col><input type="checkbox" id="chkall" onclick="selectAll();" /></th>
		                  <th class=gridviewHeader scope=col>所属公司</th>
		                  <th class=gridViewHeader scope=col>项目总监</th>
		                  <th class=gridViewHeader scope=col>项目经理</th>
		                  <th class=gridViewHeader scope=col>项目组长</th>
		                  <th class=gridViewHeader scope=col>等级</th>
		                  <th class=gridViewHeader scope=col>员工编号</th>
		                  <th class=gridviewHeader scope=col>姓名</th>
		                  <th class=gridviewHeader scope=col>状态</th>
		                  <th class=gridviewHeader scope=col>人员变动</th>
		                  <th class=gridviewHeader scope=col>业务线</th>
		                  <th class=gridviewHeader scope=col>所属TS项目</th>
		                  <th class=gridviewHeader scope=col>技能</th>
		                  <th class=gridviewHeader scope=col>入场免费时间</th>
		                  <th class=gridviewHeader scope=col>入场计费时间</th>
		                  <th class=gridviewHeader scope=col>预计离场时间</th>
		                  <th class=gridviewHeader scope=col>实际离场时间</th>
		             </tr>
	                <logic:empty name="eriList" scope="request" >
	  					 <tr> 
	  						<td style="color:#364c6d;" colspan="100">暂无数据!</td>
	  					</tr>
	  				</logic:empty>
	  				<logic:notEmpty name="eriList" scope="request">
	  					<logic:iterate id="empRel" name="eriList">
			  				<tr OnMouseOver="CurrentColor=this.style.backgroundColor;this.style.backgroundColor='#7EAFCB'" OnMouseOut="this.style.backgroundColor=CurrentColor" style="background-color:#eeeeee;">
			                  <td class=gridViewItem><input name="chk"  type="checkbox" id="${empRel.employeeId},${empRel.belongedTSproject},${empRel.workstaus}" /></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="company"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="projectDirector"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="projectManager"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="projectLeader"/></td>
			                  <td class=gridViewItem>
			                  <c:if test="${empRel.grade=='0'}">初级</c:if>
			                  <c:if test="${empRel.grade=='1'}">中级</c:if>
			                  <c:if test="${empRel.grade=='2'}">高级</c:if>
			                  </td>
			                  <td class=gridViewItem><bean:write name="empRel" property="employeeId"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="employeeName"/></td>
			                  <td class=gridViewItem>
			                  <c:if test="${empRel.workstaus=='0'}">长期休假</c:if>
			                  <c:if test="${empRel.workstaus=='1'}">未到岗</c:if>
			                  <c:if test="${empRel.workstaus=='2'}">计费</c:if>
			                  <c:if test="${empRel.workstaus=='3'}">结束</c:if>
			                  <c:if test="${empRel.workstaus=='4'}">闲置</c:if>
			                  <c:if test="${empRel.workstaus=='5'}">离职</c:if>
			                  <c:if test="${empRel.workstaus=='6'}">借调外部</c:if>
			                  <c:if test="${empRel.workstaus=='7'}">借入</c:if>
			                  <c:if test="${empRel.workstaus=='8'}">现场储备</c:if>
			                  <c:if test="${empRel.workstaus=='9'}">公司储备</c:if>
			                  <c:if test="${empRel.workstaus=='10'}">调离</c:if>
			                  <c:if test="${empRel.workstaus=='11'}">借调</c:if>
			                  <c:if test="${empRel.workstaus=='12'}">下包商</c:if>
			                  <c:if test="${empRel.workstaus=='13'}">管理</c:if>
			                  <c:if test="${empRel.workstaus=='14'}">销售</c:if>
			                  <c:if test="${empRel.workstaus=='15'}">售前</c:if>
			                  <c:if test="${empRel.workstaus=='16'}">调休</c:if>
			                  
			                  </td>
			                  <td class=gridViewItem>
			                  <c:if test="${empRel.empOperate=='0'}">入职</c:if>
			                  <c:if test="${empRel.empOperate=='1'}">调入</c:if>
			                  <c:if test="${empRel.empOperate=='2'}">离职</c:if>
			                  <c:if test="${empRel.empOperate=='3'}">调出</c:if>
			                  </td>
			                  <td class=gridViewItem>
			                  <c:choose>
				 					<c:when test="${empRel.businessLine=='0'}">总体部</c:when>
				 					<c:when test="${empRel.businessLine=='1'}">上海分行</c:when>
				 					<c:when test="${empRel.businessLine=='2'}">信息中心</c:when>
				 					<c:when test="${empRel.businessLine=='3'}">山东</c:when>
				 					<c:when test="${empRel.businessLine=='4'}">电子渠道</c:when>
				 					<c:when test="${empRel.businessLine=='5'}">国际结算</c:when>
				 					<c:when test="${empRel.businessLine=='6'}">信息管理</c:when>
				 					<c:when test="${empRel.businessLine=='7'}">投资代理</c:when>
				 					<c:when test="${empRel.businessLine=='8'}">质量管理</c:when>
				 					<c:when test="${empRel.businessLine=='9'}">核心业务</c:when>
				 					<c:when test="${empRel.businessLine=='10'}">上海</c:when>
				 					<c:when test="${empRel.businessLine=='11'}">深圳</c:when>
				 					<c:when test="${empRel.businessLine=='12'}">成都</c:when>
				 					<c:when test="${empRel.businessLine=='13'}">上海银商</c:when>
			 						<c:otherwise><c:out value="${empRel.businessLine}"/></c:otherwise>
			 					</c:choose>
			                  </td>
			                  <td class=gridViewItem><bean:write name="empRel" property="belongedTSproject"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="skill"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="admittancefreeDate" format="yyyy-MM-dd"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="admittancebillingDate" format="yyyy-MM-dd"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="outsceneestimateDate" format="yyyy-MM-dd"/></td>
			                  <td class=gridViewItem><bean:write name="empRel" property="outscenerealityDate" format="yyyy-MM-dd"/></td>
			                  </tr>
		  		    	</logic:iterate>
		  			</logic:notEmpty >
            </table>
          </div>
          <div style="width: 900px">
	          <html:button property="aaa" styleClass="btn4do" value="新增员工归属信息" onclick="insertInfo();"/>&nbsp;
	          <html:button property="aaa" styleClass="btn4do" value="修改员工归属信息" onclick="updateInfo();"/>&nbsp;
	          <html:button property="aaa" styleClass="btn4do" value="删除员工归属信息" onclick="delInf();"/>&nbsp;
	          <html:button property="aaa" styleClass="btn4do" value="导入员工归属信息" onclick="impInfo();"/>&nbsp;
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
