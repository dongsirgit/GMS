package com.iss.gms.entity;

import java.util.Date;

public class CustomerVerifyHoursInfo {
	//��Դ����
	private String resourcesType;
	//��Ŀ����
	private String projectName;	
	//��Ŀ���
	private String projectId;
	//��Ŀ��������
	private String projectOfDepartment;
	//��Ʒ����
	private String productName;
	//�����Ʒ�����Ŷ�
	private String serviceProductsAttributiveTeam;
	//�����Ʒ��������
	private String serviceProductsDepartment;	
	//��Ӧ��
	private String providers;
	//����ƽ̨
	private String technologyPlatform;	
	//�ڳ�����
	private String presenceOfType;
	//�����ص�
	private String workPlace;
	//Ա�����
	private String employeeId;
	//����
	private String employeeName;	
	//�����ȼ�
	private String technologyGrade;	
	//��������
	private Date workDate;
	//������ʱ
	private Float normalWorkingHours=0f;	
	//�Ӱ๤ʱ
	private Float overTimeHours=0f;
	//�Ƿ�Ʒѣ��Ӱ๤ʱ��
	private String isBilling;
	//���칤ʱ
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