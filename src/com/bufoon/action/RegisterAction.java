package com.bufoon.action;

import java.io.IOException;
import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bufoon.entity.User;
import com.bufoon.service.user.UserService;
import com.bufoon.util.Util;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;

	private String username;
	private String password;
	private String tel;
	private String name;

	public void isregister() {
		if (Util.isnotEmpty(username)) {
			User user = userService.findUserByIdentity(username);
			if (user == null) {
				setOutput("success");
			} else {
				setOutput("fail");
			}
		} else {
			setOutput("null");
		}
	}

	public void register() {
		if (Util.isnotEmpty(username) && Util.isnotEmpty(password)
				&& Util.isnotEmpty(tel) && Util.isnotEmpty(name)) {
			username = Util.StringFilter(username);
			tel = Util.StringFilter(tel);
			name = Util.StringFilter(name);
			System.out.println(username);
			System.out.println(tel);
			System.out.println(name);
			
			//
			User user = userService.findUserByIdentity(username);
			if (user == null) {
				// 可以注册
				user = new User();
				user.setUsername(username);
				user.setPassword(Util.md5Base64("li" + password));
				user.setName(name);
				user.setTel(tel);
				user.setScore(0);
				user.setPower(3);
				// 注册时随机生成三套试题
				user.setExam1(getSubjects(50, 87));
				user.setExam2(getSubjects(50, 87));
				user.setExam3(getSubjects(50, 87));
				userService.saveUser(user);
				user = null;
				System.out.println("register");
				setOutput("success");
			} else {
				// 不能注册
				setOutput("fail");
			}

		} else {
			setOutput("null");
		}

	}

	private void setOutput(String s) {
		HttpServletResponse response = ServletActionContext.getResponse();
		OutputStream o = null;
		try {
			o = response.getOutputStream();
			o.write(s.getBytes("UTF-8"));
			o.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (o != null)
				try {
					o.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}

	// num 要获取题目的个数，subjectnum 总题目的个数
	private String getSubjects(int num, int subjectnum) {
		int[] temps = new int[num];
		String subjects = "";
		int temp = 0;
		// 循环取num个随机数
		for (int i = 0; i < num; i++) {
			temp = (int) (1 + Math.random() * subjectnum);
			for (int j = 0; j < i; j++) {
				if (temps[j] == temp) {
					j = -1;
					temp = (int) (1 + Math.random() * subjectnum);
				}
			}
			temps[i] = temp;
		}

		subjects = temps[0] + "";
		for (int i = 1; i < num; i++) {
			subjects = subjects + "#" + temps[i];
		}
		// System.out.println(subjects);
		temps = null;
		return subjects;
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
