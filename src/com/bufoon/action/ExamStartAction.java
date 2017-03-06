package com.bufoon.action;

import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bufoon.entity.User;
import com.bufoon.service.user.UserService;
import com.bufoon.util.Util;
import com.opensymphony.xwork2.ActionSupport;

public class ExamStartAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;

	private String userid;

	public void examstart() {
		System.out.println("examstart--");
		HttpSession session = ServletActionContext.getRequest().getSession();
		if (Util.isnotEmpty(userid)) {
			User user = userService.findUserById(Integer.parseInt(userid));
			if (user != null) {
				int power = user.getPower();
				if (power > 0) {
					power--;
					user.setPower(power);
					session.setAttribute("power", power);
					userService.updateUser(user);
					setOutput("success");
				} else {
					setOutput("null");
				}
			} else {
				setOutput("unull");
			}
		} else {
			setOutput("unull");
		}
	
	}

	private void setOutput(String s) {
		HttpServletResponse response = ServletActionContext.getResponse();
		try {
			OutputStream o = response.getOutputStream();
			o.write(s.getBytes("UTF-8"));
			o.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

}
