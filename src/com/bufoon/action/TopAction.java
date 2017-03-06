package com.bufoon.action;

import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bufoon.entity.User;
import com.bufoon.service.user.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class TopAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;

	public void top() {
		HttpSession session = ServletActionContext.getRequest().getSession();
		if (session.getAttribute("userId") != null) {
			User user = userService.findUserById(Integer.parseInt(session
					.getAttribute("userId").toString()));

			// ////////////////////////////////////////////////////
			// User user = userService.findUserById(1);// ������
			// ////////////////////////////////////////////////////

			if (user != null) {
				int top = getTop(user);
				setOutput("higher score:" + user.getScore() + "  top:" + top);
			} else {

			}
		} else {

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

	private int getTop(User user) {
		int topnum = 1;

		List<User> users = userService.findAllList();
		if (user.getHighexam() != null)
			for (int i = 0; i < users.size(); i++) {
				if (users.get(i).getScore() > user.getScore()) {
					topnum++;
				} else if (users.get(i).getScore() == user.getScore()) {
					int time = 1000;
					int timefouser = 1000;
					//
					switch (users.get(i).getHighexam()) {
					case 1:
						time = users.get(i).getTime1();
						break;
					case 2:
						time = users.get(i).getTime2();
						break;
					case 3:
						time = users.get(i).getTime3();
						break;
					}

					//
					switch (user.getHighexam()) {
					case 1:
						timefouser = user.getTime1();
						break;
					case 2:
						timefouser = user.getTime2();
						break;
					case 3:
						timefouser = user.getTime3();
						break;
					}
					// System.out.println("timeforuser---" + timefouser);
					// System.out.println("time---" + time);
					//
					if (timefouser > time) {
						topnum++;
					}
				}

			}
		else
			topnum = users.size();

		return topnum;
	}

}
