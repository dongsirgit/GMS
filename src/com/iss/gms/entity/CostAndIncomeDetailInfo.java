package com.iss.gms.entity;

public class CostAndIncomeDetailInfo {
	//Ա�����
	private String empId;
	//Ա������
	private String empName;
	//�ͻ�����
	private Float income=0f;
	//Ԥ������
	private String days;
	//�ͻ�����
	private String cusGrade;
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public Float getIncome() {
		return income;
	}
	public void setIncome(Float income) {
		this.income = income;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getCusGrade() {
		return cusGrade;
	}
	public void setCusGrade(String cusGrade) {
		this.cusGrade = cusGrade;
	}
	
	
}