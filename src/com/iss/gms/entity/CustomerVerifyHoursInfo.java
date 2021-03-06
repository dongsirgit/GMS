package com.iss.gms.entity;

import java.util.Date;

public class CustomerVerifyHoursInfo {
	//资源类型
	private String resourcesType;
	//项目名称
	private String projectName;	
	//项目编号
	private String projectId;
	//项目所属部门
	private String projectOfDepartment;
	//产品名称
	private String productName;
	//服务产品所属团队
	private String serviceProductsAttributiveTeam;
	//服务产品归属部门
	private String serviceProductsDepartment;	
	//供应商
	private String providers;
	//技术平台
	private String technologyPlatform;	
	//在场类型
	private String presenceOfType;
	//工作地点
	private String workPlace;
	//员工编号
	private String employeeId;
	//姓名
	private String employeeName;	
	//技术等级
	private String technologyGrade;	
	//工作日期
	private Date workDate;
	//正常工时
	private Float normalWorkingHours=0f;	
	//加班工时
	private Float overTimeHours=0f;
	//是否计费（加班工时）
	private String isBilling;
	//差异工时
	private Float gapHours=0f;
	private Date startDate;
	private Date endDate;
	
	public Float getGapHours() {
		return gapHours;
	}
	public void setGapHours(Float gapHours) {
		this.gapHours = gapHours;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getResourcesType() {
		return resourcesType;
	}
	public void setResourcesType(String resourcesType) {
		this.resourcesType = resourcesType;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getProjectId() {
		return projectId;
	}
	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}
	public String getProjectOfDepartment() {
		return projectOfDepartment;
	}
	public void setProjectOfDepartment(String projectOfDepartment) {
		this.projectOfDepartment = projectOfDepartment;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getServiceProductsAttributiveTeam() {
		return serviceProductsAttributiveTeam;
	}
	public void setServiceProductsAttributiveTeam(
			String serviceProductsAttributiveTeam) {
		this.serviceProductsAttributiveTeam = serviceProductsAttributiveTeam;
	}
	public String getServiceProductsDepartment() {
		return serviceProductsDepartment;
	}
	public void setServiceProductsDepartment(String serviceProductsDepartment) {
		this.serviceProductsDepartment = serviceProductsDepartment;
	}
	public String getProviders() {
		return providers;
	}
	public void setProviders(String providers) {
		this.providers = providers;
	}
	public String getTechnologyPlatform() {
		return technologyPlatform;
	}
	public void setTechnologyPlatform(String technologyPlatform) {
		this.technologyPlatform = technologyPlatform;
	}
	public String getPresenceOfType() {
		return presenceOfType;
	}
	public void setPresenceOfType(String presenceOfType) {
		this.presenceOfType = presenceOfType;
	}
	public String getWorkPlace() {
		return workPlace;
	}
	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}
	public String getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getTechnologyGrade() {
		return technologyGrade;
	}
	public void setTechnologyGrade(String technologyGrade) {
		this.technologyGrade = technologyGrade;
	}
	public Date getWorkDate() {
		return workDate;
	}
	public void setWorkDate(Date workDate) {
		this.workDate = workDate;
	}
	public Float getNormalWorkingHours() {
		return normalWorkingHours;
	}
	public void setNormalWorkingHours(Float normalWorkingHours) {
		this.normalWorkingHours = normalWorkingHours;
	}
	public Float getOverTimeHours() {
		return overTimeHours;
	}
	public void setOverTimeHours(Float overTimeHours) {
		this.overTimeHours = overTimeHours;
	}
	public String getIsBilling() {
		return isBilling;
	}
	public void setIsBilling(String isBilling) {
		this.isBilling = isBilling;
	}
}
