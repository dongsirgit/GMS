<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/tlds/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %> 
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %> 
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>员工基本信息管理</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/content.css">
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/popup.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/calendar.js"></script>
	<script type="text/javascript">
			//添加员工信息
          	function insertInfo(){
          		doOpenDlgScr("新增员工信息","<%=request.getContextPath()%>/empbi.do?method=toAdd",1100,450);
          	}
          	
          	//修改员工信息
          	function updateInfo(){
          		var chkboxs = document.getElementsByName("chk");
          		var id4update ;
          		var chkCount = 0;
          		for(var i=0;i<chkboxs.length;i++){
          			if(chkboxs[i].checked==true){
          				id4update=chkboxs[i].value;
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
          		doOpenDlgScr("修改员工信息","<%=request.getContextPath()%>/empbi.do?method=toUpdate&eid="+id4update,1080,450);
          	}
          	//删除员工基本信息
          	function delInfo(){
          		 //得到所有下拉框数组
	          	 var c = document.getElementsByName("chk");
	             //得到选中的信息标识
	             var eidGrp="";
	             //得到选中的总数
	             var count=0;
		         for(var i = 0;i<c.length;i++){
		             if(c[i].checked==true){
		                count++;
		                eidGrp+=c[i].value+",";
		              }
		         }
		         if(count>0){
		         	//document.forms[0].action="empbi.do?method=delInfo&eidGrp="+eidGrp;
            		//document.forms[0].submit(); 
            		window.location="empbi.do?method=delInfo&eidGrp="+eidGrp;
		         }else{
		         	alert("请选择记录!");
		         }
          	}
          	
          	//导入员工信息
          	function impInfo(){
          		doOpenDlgScr("导入员工信息","<%=request.getContextPath()%>/imp.do?method=toImp&status=empbi",400,200);
          	}
          	
          	//全选
		   	function selectAll(){
				var chked = document.getElementById("chkall").checked;
				var chks = document.getElementsByName("chk");
				for(var i=0;i<chks.length;i++){
					chks[i].checked=chked;
				}
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
  <html:form action="/empbi.do?method=search" method="post">
	<div >
  	<table cellSpacing=0 cellPadding=0 height="100%">
      <tr 
  style="BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/bg_header.gif); BACKGROUND-REPEAT: repeat-x; " 
  height=47>
        <td width=10><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span></td>
        <td><span 
      style="FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></span><span 
      style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(<%=request.getContextPath()%>/images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0px: ">员工基本信息管理</span><span 
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
			 		<html:text property="ename4b" styleClass="s4relquery"/>
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >入职日期:</font>
			 		<html:text property="empInDateS" styleClass="s4relquery" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
			 		<font style="color:black">-</font>
			 		<html:text property="empInDateE" styleClass="s4relquery" size="15px" onclick="SelectDate(this)" readonly="readonly"/>
			 		&nbsp;
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >部门:</font>
			 		<html:select property="department4emp">
			 			<html:option value="" styleClass="slt4dim">请选择</html:option>
			 			<logic:iterate id="dpt" name="dpts4emp">
			 				<html:option value="${dpt}" styleClass="slt4dim">${dpt}</html:option>
			 			</logic:iterate>
			 		</html:select>&nbsp;
			 		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >技能:</font>
			 		<html:select property="skill">
			 			<html:option value="" styleClass="slt4dim">请选择</html:option>
			 			<logic:iterate id="skl" name="skills">
			 				<html:option value="${skl}" styleClass="slt4dim">${skl}</html:option>
			 			</logic:iterate>
			 		</html:select>&nbsp;&nbsp;
            		<html:submit value="查询" styleClass="cmdField"/>&nbsp;&nbsp;&nbsp;
            		<c:if test="${resultCount!=null}">
            		<font style="color:#364c6d;  line-height: 12px; border-bottom: #bad6ec 1px solid; text-align: left" >
						共计<c:out value="${resultCount}"/>条
					</font></c:if>
			 </div>
			 <div style="width: 900px;overflow: auto;height: 85%;">
            <table class=gridView id=ctl00_ContentPlaceHolder2_GridView1 style=" BORDER-COLLAPSE: collapse;" width="250%">
              <tr >
                  <th class=gridViewHeader scope=col><input type="checkbox" id="chkall" onclick="selectAll();" /></th>
                  <th class=gridViewHeader scope=col>员工编号</th>
                  <th class=gridViewHeader scope=col>姓名</th>
                  <th class=gridViewHeader scope=col>中行姓名</th>
                  <th class=gridViewHeader scope=col>性别</th>
                  <th class=gridViewHeader scope=col>入职日期</th>
                  <th class=gridviewHeader scope=col>通用职位</th>
                  <th class=gridviewHeader scope=col>成本中心</th>
                  <th class=gridviewHeader scope=col>组织单位3</th>
                  <th class=gridviewHeader scope=col>人事范围</th>
                  <th class=gridviewHeader scope=col>工作地文本</th>
                  <th class=gridviewHeader scope=col>人事子范围</th>
                  <th class=gridviewHeader scope=col>司龄(月)</th>
                  <th class=gridviewHeader scope=col>工龄(年)</th>
                  <th class=gridviewHeader scope=col>员工组</th>
                  <th class=gridviewHeader scope=col>员工子组</th>
                  <th class=gridviewHeader scope=col>职级</th>
                  <th class=gridviewHeader scope=col>学历</th>
                  <th class=gridviewHeader scope=col>专业名称</th>
				  <th class=gridviewHeader scope=col>公司邮箱</th>	                  
                  <th class=gridviewHeader scope=col>手机号码</th>
                  <th class=gridviewHeader scope=col>证件类别</th>
                  <th class=gridviewHeader scope=col>证件号码</th>
                  <th class=gridviewHeader scope=col>组织单位4</th>
                  <th class=gridviewHeader scope=col>组织单位5</th>
                  <th class=gridviewHeader scope=col>组织单位6</th>
                  <th class=gridviewHeader scope=col>毕业日期</th>
                  <th class=gridviewHeader scope=col>毕业学校/城市</th>
                  <th class=gridviewHeader scope=col>更新时间</th>
                  <th class=gridviewHeader scope=col>所属公司</th>
                  <th class=gridviewHeader scope=col>合同工资</th>
                  <th class=gridviewHeader scope=col>社保</th>
                  <th class=gridviewHeader scope=col>第一技能</th>
                  <th class=gridviewHeader scope=col>第二技能</th>
                  <th class=gridviewHeader scope=col>技能说明</th>
<!--                  <th class=gridviewHeader scope=col>密码</th>-->
                </tr>
                <logic:empty name="lt" scope="request" >
  					 <tr>
  						<td style="color:#364c6d;" colspan="100">暂无数据!</td>
  					</tr>
  				</logic:empty>
  				<logic:notEmpty name="lt" scope="request">
  					<logic:iterate id="emp" name="lt">
		  				<tr OnMouseOver="CurrentColor=this.style.backgroundColor;this.style.backgroundColor='#7EAFCB'" OnMouseOut="this.style.backgroundColor=CurrentColor" style="background-color:#eeeeee;">
		  				 
		                  <td class=gridViewItem>
		                  	<input type="checkbox" name="chk" value="<bean:write name="emp" property="employeeId"/>"/>
		                  </td>
		                  <td class=gridViewItem><bean:write name="emp" property="employeeId"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="employeeName"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="chinaBankName"/></td>
		                  <td class=gridViewItem>
		                  	<c:if test="${emp.employeeGender == 0}">
  									男
  							</c:if>
  							<c:if test="${emp.employeeGender == 1}">
  									女
  							</c:if>
		                  </td>
		                  <td class=gridViewItem><bean:write name="emp" property="entryDate" format="yyyy-MM-dd"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="commonPosition"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="costCenter"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="organizationalUnit3"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="personnelRange"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="workPlaceText"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="personnelSubRange"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="drivingAgeMonth"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="workingAgeYear"/></td>
		                  <td class=gridViewItem>
			                  	<c:if test="${emp.employeeGroup == 0}">
	  									正式员工
	  							</c:if>
	  							<c:if test="${emp.employeeGroup == 1}">
	  									试用员工
	  							</c:if>
	  							<c:if test="${emp.employeeGroup == 2}">
	  									实习生
	  							</c:if>
		                  </td>
		                  <td class=gridViewItem>
		                  		<c:if test="${emp.employeeSubGroup == 0}">
	  									实施
	  							</c:if>
	  							<c:if test="${emp.employeeSubGroup == 1}">
	  									销售
	  							</c:if>
		                  	</td>
		                  <td class=gridViewItem>
		                  		<c:if test="${emp.rank == 0}">
	  									BU head
	  							</c:if>
	  							<c:if test="${emp.rank == 1}">
	  									部门总监
	  							</c:if>
	  							<c:if test="${emp.rank == 2}">
	  									客户总监
	  							</c:if>
	  							<c:if test="${emp.rank == 3}">
	  									项目经理
	  							</c:if>
	  							<c:if test="${emp.rank == 4}">
	  									项目组长
	  							</c:if>
	  							<c:if test="${emp.rank == 5}">
	  									客户经理
	  							</c:if>
		                  </td>
		                  <td class=gridViewItem><bean:write name="emp" property="educationa"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="specialtyName"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="companyMailBox"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="mobileNumber"/></td>
		                  <td class=gridViewItem>
		                  		<c:if test="${emp.credentialsType == 0}">
	  									身份证
	  							</c:if>
	  							<c:if test="${emp.credentialsType == 1}">
	  									护照
	  							</c:if>
	  							<c:if test="${emp.credentialsType == 2}">
	  									军官证
	  							</c:if>
		                  </td>
		                  <td class=gridViewItem><bean:write name="emp" property="credentialsNumber"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="organizationalUnit4"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="organizationalUnit5"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="organizationalUnit6"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="graduationDate" format="yyyy-MM-dd"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="graduationSchoolOrCity"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="updateDate" format="yyyy-MM-dd"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="itsaffiliates"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="contractWages"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="societyindemnification"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="firstSkill"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="secondSkill"/></td>
		                  <td class=gridViewItem><bean:write name="emp" property="skillDescription"/></td>
		               </tr>
  		    	</logic:iterate>
  			</logic:notEmpty >
            </table>
          </div>
          <div style="width: 900px">
	          <html:button property="aaa"   styleClass="btn4do" value="新增员工信息" onclick="insertInfo();"/>&nbsp;
	          <html:button property="aaa"   styleClass="btn4do" value="修改员工信息" onclick="updateInfo();"/>&nbsp;
	          <html:button property="aaa"   styleClass="btn4do" value="删除员工信息" onclick="delInfo();"/>&nbsp;
	          <html:button property="aaa"   styleClass="btn4do" value="导入员工信息" onclick="impInfo();"/>&nbsp;
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
