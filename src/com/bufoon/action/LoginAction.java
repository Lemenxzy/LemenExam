package com.bufoon.action;



import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.bufoon.entity.User;
import com.bufoon.service.user.SubjectService;
import com.bufoon.service.user.UserService;
import com.bufoon.util.Util;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;

	@Resource
	private SubjectService subjectService;

	private String username;
	private String password;

	public void login() {
		System.out.println("username" + username);
//		System.out.println("password" + password);
		HttpServletResponse response = ServletActionContext.getResponse();
		if (Util.isnotEmpty(username) && Util.isnotEmpty(password)) {
			User user = userService.findUserByNameAndPassword(username,
					Util.md5Base64("li" + password));
			if (user != null) {
				user.setPassword(null);
				HttpSession session = ServletActionContext.getRequest()
						.getSession();
				session.setAttribute("user", user);
				session.setAttribute("name", user.getName());
				session.setAttribute("power", user.getPower());
				session.setAttribute("userId", user.getId());
				session.setAttribute("tel", user.getTel());
				session.setAttribute("username", user.getUsername());
				try {
					OutputStream o = response.getOutputStream();
					o.write("success".getBytes("UTF-8"));
					o.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} else {
				try {
					OutputStream o = response.getOutputStream();
					o.write("fail".getBytes("UTF-8"));
					o.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else {
			try {
				OutputStream o = response.getOutputStream();
				o.write("null".getBytes("UTF-8"));
				o.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// if (username != null && !username.equals("") && password != null
		// && !password.equals("") && identity != null
		// && !identity.equals("")) {
		// User user = userService.findUserByNameAndPassword(username,
		// password, identity);
		// if (user != null) {
		// // ��ȡsession����
		// HttpSession session = ServletActionContext.getRequest()
		// .getSession();
		// session.setAttribute("username", username);
		// session.setAttribute("password", password);
		// session.setAttribute("identity", identity);
		// HttpServletRequest request = ServletActionContext.getRequest();
		// request.setAttribute("state", "0");
		// return SUCCESS;
		// } else {
		// return ERROR;
		// }
		// } else {
		// return ERROR;
		// }
		// HttpServletResponse response = ServletActionContext.getResponse();
		// HttpServletRequest request = ServletActionContext.getRequest();
		// java.util.List<Subject> lits = subjectService.findAllList();
		// OutputStream o;
		// try {
		// o = response.getOutputStream();
		// o.write("succeed".getBytes());
		// o.close();
		// } catch (IOException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }

		// User user = userService.findUserByNameAndPassword(username,
		// password);
		// if (user != null) {
		// request.setAttribute("username", username);
		// return SUCCESS;
		// } else {
		// return ERROR;
		// }

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


}
