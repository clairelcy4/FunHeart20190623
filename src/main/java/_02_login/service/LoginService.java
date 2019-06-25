package _02_login.service;

import _a0_fun_Init.model.MemberBean;

// 定義進行登入時系統必須執行的功能
public interface LoginService {
	public MemberBean checkIDPassword(String ossanId, String password) ;
}
