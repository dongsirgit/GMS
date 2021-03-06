package com.iss.gms.entity;

import java.util.Date;

public class EmployeeRelegationInfo {
	//员工编号
	private String employeeId;
	//员工编号(修改所用)
	private String employeeIdNew;
	//员工姓名
	private String employeeName;
	//项目总监
	private String projectDirector;
	//项目经理
	private String projectManager;
	//项目组长
	private String projectLeader;
	//等级
	private String grade;
	//状态
	private String workstaus;
	//业务线
	private String businessLine;
	//所属TS项目
	private String belongedTSproject;
	//所属TS项目编号
	private String belongedTSprojectId;
	//入场免费时间
	private Date admittancefreeDate;
	//入场计费时间
	private Date admittancebillingDate;
	//预计离场时间
	private Date outsceneestimateDate;
	//实际离场时间
	private Date outscenerealityDate;
	//开始时间
	private Date estimateLDateS;
	//结束时间
	private Date estimateLDateE;
	//修改用-新项目名称
	private String newProName;
	//修改用-新状态
	private String newWorkstatus;
	//人员变动
	private String empOperate;
	//所属公司
	private String company;
	//技能
	private String skill;
	//费率
	private String rate;
	
	
	public String getEmployeeIdNew() {
		return employeeIdNew;
	}
	public void setEmployeeIdNew(String employeeIdNew) {
		this.employeeIdNew = employeeIdNew;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getEmpOperate() {
		return empOperate;
	}
	public void setEmpOperate(String empOperate) {
		this.empOperate = empOperate;
	}
	public String getNewProName() {
		return newProName;
	}
	public void setNewProName(String newProName) {
		this.newProName = newProName;
	}
	public String getNewWorkstatus() {
		return newWorkstatus;
	}
	public void setNewWorkstatus(String newWorkstatus) {
		this.newWorkstatus = newWorkstatus;
	}
	private Float standardTotalHours;
	private Float customerSureTotalHours;
	private Float psaWelfareHoliaysTotalHours;
	private Float psaNotWelfareHoliaysTotalHours;
	private Float lastSwoppedTotalHours;
	private Float workoTimeAhughTotalHours;
	private Float workoTimeSubsidiesTotalHours;
	private Date byTheStatisticalDate;
	
	public String getBelongedTSprojectId() {
		return belongedTSprojectId;
	}
	public void setBelongedTSprojectId(String belongedTSprojectId) {
		this.belongedTSprojectId = belongedTSprojectId;
	}
	public Float getStandardTotalHours() {
		return standardTotalHours;
	}
	public void setStandardTotalHours(Float standardTotalHours) {
		this.standardTotalHours = standardTotalHours;
	}
	public Float getCustomerSureTotalHours() {
		return customerSureTotalHours;
	}
	public void setCustomerSureTotalHours(Float customerSureTotalHours) {
		this.customerSureTotalHours = customerSureTotalHours;
	}
	public Float getPsaWelfareHoliaysTotalHours() {
		return psaWelfareHoliaysTotalHours;
	}
	public void setPsaWelfareHoliaysTotalHours(Float psaWelfareHoliaysTotalHours) {
		this.psaWelfareHoliaysTotalHours = psaWelfareHoliaysTotalHours;
	}
	public Float getPsaNotWelfareHoliaysTotalHours() {
		return psaNotWelfareHoliaysTotalHours;
	}
	public void setPsaNotWelfareHoliaysTotalHours(
			Float psaNotWelfareHoliaysTotalHours) {
		this.psaNotWelfareHoliaysTotalHours = psaNotWelfareHoliaysTotalHours;
	}
	public Float getLastSwoppedTotalHours() {
		return lastSwoppedTotalHours;
	}
	public void setLastSwoppedTotalHours(Float lastSwoppedTotalHours) {
		this.lastSwoppedTotalHours = lastSwoppedTotalHours;
	}
	public Float getWorkoTimeAhughTotalHours() {
		return workoTimeAhughTotalHours;
	}
	public void setWorkoTimeAhughTotalHours(Float workoTimeAhughTotalHours) {
		this.workoTimeAhughTotalHours = workoTimeAhughTotalHours;
	}
	public Float getWorkoTimeSubsidiesTotalHours() {
		return workoTimeSubsidiesTotalHours;
	}
	public void setWorkoTimeSubsidiesTotalHours(Float workoTimeSubsidiesTotalHours) {
		this.workoTimeSubsidiesTotalHours = workoTimeSubsidiesTotalHours;
	}
	public Date getByTheStatisticalDate() {
		return byTheStatisticalDate;
	}
	public void setByTheStatisticalDate(Date byTheStatisticalDate) {
		this.byTheStatisticalDate = byTheStatisticalDate;
	}
	public Date getEstimateLDateS() {
		return estimateLDateS;
	}
	public void setEstimateLDateS(Date estimateLDateS) {
		this.estimateLDateS = estimateLDateS;
	}
	public Date getEstimateLDateE() {
		return estimateLDateE;
	}
	public void setEstimateLDateE(Date estimateLDateE) {
		this.estimateLDateE = estimateLDateE;
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
	public String getProjectDirector() {
		return projectDirector;
	}
	public void setProjectDirector(String projectDirector) {
		this.projectDirector = projectDirector;
	}
	public String getProjectManager() {
		return projectManager;
	}
	public void setProjectManager(String projectManager) {
		this.projectManager = projectManager;
	}
	public String getProjectLeader() {
		return projectLeader;
	}
	public void setProjectLeader(String projectLeader) {
		this.projectLeader = projectLeader;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Date getAdmittancefreeDate() {
		return admittancefreeDate;
	}
	public void setAdmittancefreeDate(Date admittancefreeDate) {
		this.admittancefreeDate = admittancefreeDate;
	}
	public Date getAdmittancebillingDate() {
		return admittancebillingDate;
	}
	public void setAdmittancebillingDate(Date admittancebillingDate) {
		this.admittancebillingDate = admittancebillingDate;
	}
	public Date getOutsceneestimateDate() {
		return outsceneestimateDate;
	}
	public void setOutsceneestimateDate(Date outsceneestimateDate) {
		this.outsceneestimateDate = outsceneestimateDate;
	}
	public Date getOutscenerealityDate() {
		return outscenerealityDate;
	}
	public void setOutscenerealityDate(Date outscenerealityDate) {
		this.outscenerealityDate = outscenerealityDate;
	}
	public String getWorkstaus() {
		return workstaus;
	}
	public void setWorkstaus(String workstaus) {
		this.workstaus = workstaus;
	}
	public String getBusinessLine() {
		return businessLine;
	}
	public void setBusinessLine(String businessLine) {
		this.businessLine = businessLine;
	}
	public String getBelongedTSproject() {
		return belongedTSproject;
	}
	public void setBelongedTSproject(String belongedTSproject) {
		this.belongedTSproject = belongedTSproject;
	}
	
	

}
