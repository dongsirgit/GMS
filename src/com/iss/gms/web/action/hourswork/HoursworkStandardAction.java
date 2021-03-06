package com.iss.gms.web.action.hourswork;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.apache.struts.validator.LazyValidatorForm;

import com.iss.gms.entity.EmployeeRelegationInfo;
import com.iss.gms.entity.EmployeeVacationInfo;
import com.iss.gms.entity.HoursWorkStandardInfo;
import com.iss.gms.service.HoursWorkService;
import com.iss.gms.service.IEmployeeService;

public class HoursworkStandardAction extends DispatchAction{
	private HoursWorkService hoursWorkService;
	public void setHoursWorkService(HoursWorkService hoursWorkService) {
		this.hoursWorkService = hoursWorkService;
	}
	private static final Log log = LogFactory.getLog(HoursworkStandardAction.class);
	DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
	//��ѯ
	public ActionForward initPage(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		return mapping.findForward("success");
	}

	//��ѯ
	public ActionForward search(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		try{
			LazyValidatorForm lzform = (LazyValidatorForm)form;
			String dateS = (String)lzform.get("stdDateS"); 
			String dateE = (String)lzform.get("stdDateE"); 
			HoursWorkStandardInfo hwsi = new HoursWorkStandardInfo();
			if(dateE!=null&&dateE.trim().length()>0){
				Date endDate = fmt.parse(dateE);
				hwsi.setEndDate(endDate);
			}
			if(dateS!=null&&dateS.trim().length()>0){
				Date startDate = fmt.parse(dateS);
				hwsi.setStartDate(startDate);
			}
			List lt =hoursWorkService.queryStdHourswork(hwsi);
			if(lt!=null){
				request.setAttribute("hwsiList", lt);
				HoursWorkStandardInfo hwis4count = new HoursWorkStandardInfo();
				if(lt.size()>0){
					hwis4count = hoursWorkService.queryCountOfEveryType(hwsi);
				}
				request.setAttribute("hwis4count", hwis4count);
				request.setAttribute("resultCount", lt.size());
				return mapping.findForward("success");
			}else{
				return mapping.findForward("error");
			}
		} catch (Exception e) {
			e.printStackTrace();
			log.error(e.getMessage());
			return mapping.findForward("error");
		}
	}
	
	
}
