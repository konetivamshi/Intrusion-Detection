package com.Intrusion.Interface;

import java.util.List;

import com.Intrusion.PojoClass.EmpSalaryPojo;
import com.Intrusion.PojoClass.ManagerPojo;
import com.Intrusion.PojoClass.ManagerUploadPojo;
import com.Intrusion.PojoClass.MeetingReportPojo;
import com.Intrusion.PojoClass.SplitPojo;
import com.Intrusion.PojoClass.TlBehaviour;
import com.Intrusion.PojoClass.TlRegisterPojo;
import com.Intrusion.PojoClass.UserReportPojo;
import com.Intrusion.PojoClass.UserUploadPojo;
import com.Intrusion.PojoClass.userRegistrationPojoClass;

public interface Interfce {
public  int UserRegistration(userRegistrationPojoClass urpc);
public List<String> UserLogin(userRegistrationPojoClass urpc);
public int EmpSalaryInsert(EmpSalaryPojo pojo);
public List<String> EmpLogin(TlRegisterPojo urpc);
public List<String> getDetails(EmpSalaryPojo pojo);
public List<String> getEmployeeDetails(userRegistrationPojoClass pojo);
public int delete(EmpSalaryPojo pojo);
public int Manregister(ManagerPojo pojo);
public List<String> ManagerLogin(ManagerPojo pojo);
public int ManagerUpload(ManagerUploadPojo pojo);
public List<String> getProect();
public int Meeting(MeetingReportPojo pojo);
public int Tlregister(TlRegisterPojo pojo);
public List<String> Tllogin(TlRegisterPojo pojo);
public int Tlsplit(SplitPojo pojo);
public List<String> getUserProject();
public int UserUpload(UserUploadPojo pojo);
public int UserReport(UserReportPojo pojo);
public List<String> UserModulesView();
public List<String> UserReportView();
public int TlBehaviour(TlBehaviour pojo);
public int UpdateProductView(String update);
public int UpdateSalaryDetailsView(String update);
public int UpdatepayslipDownload(String update);
public int UpdateSalaryDelete(String update);
public int UpdateProjectAllocation(String update);
public int UpdateMeetingReport(String update);
public int UpdateUserReportView(String update);
public int UpdateUserModulesView(String update);
public List<String> AdminBehaviour();
}
