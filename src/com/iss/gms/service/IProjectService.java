package com.iss.gms.service;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.iss.gms.entity.EmployeeBasicInfo;
import com.iss.gms.entity.ProjectInfo;

public interface IProjectService {
	//根据项目名称查询项目信息
	public List queryProInfoByName(String name)throws SQLException;
	//添加项目信息
	public void addProjectInfo(ProjectInfo pj)throws SQLException;
	//修改项目信息
	public void modifyProjectInfo(ProjectInfo pj)throws SQLException;
	//删除项目信息
	public void removeProjectInfo(String pid)throws SQLException;
	//根据项目编号查询项目信息
	public ProjectInfo queryProInfoById(String proId)throws SQLException;
	//根据月份查询该月范围内的项目
	public List<ProjectInfo> queryProByMonth(Map<String, Date> fldates)throws SQLException;
	public List queryProInfoLike(ProjectInfo pi)throws SQLException;
	public List<String> queryProMgrs()throws SQLException;
	public List<String> querydpts4pro()throws SQLException;
}
