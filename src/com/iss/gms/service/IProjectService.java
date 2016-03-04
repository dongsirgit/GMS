package com.iss.gms.service;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.iss.gms.entity.EmployeeBasicInfo;
import com.iss.gms.entity.ProjectInfo;

public interface IProjectService {
	//������Ŀ���Ʋ�ѯ��Ŀ��Ϣ
	public List queryProInfoByName(String name)throws SQLException;
	//������Ŀ��Ϣ
	public void addProjectInfo(ProjectInfo pj)throws SQLException;
	//�޸���Ŀ��Ϣ
	public void modifyProjectInfo(ProjectInfo pj)throws SQLException;
	//ɾ����Ŀ��Ϣ
	public void removeProjectInfo(String pid)throws SQLException;
	//������Ŀ��Ų�ѯ��Ŀ��Ϣ
	public ProjectInfo queryProInfoById(String proId)throws SQLException;
	//�����·ݲ�ѯ���·�Χ�ڵ���Ŀ
	public List<ProjectInfo> queryProByMonth(Map<String, Date> fldates)throws SQLException;
	public List queryProInfoLike(ProjectInfo pi)throws SQLException;
	public List<String> queryProMgrs()throws SQLException;
	public List<String> querydpts4pro()throws SQLException;
}