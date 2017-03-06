package com.bufoon.action;

import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.json.JSONException;
import org.json.JSONObject;

import com.bufoon.entity.User;
import com.bufoon.service.user.SubjectService;
import com.bufoon.service.user.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class RecordScoreAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	@Resource
	private UserService userService;

	@Resource
	private SubjectService subjectService;

	private String answers;
	private String time;

	private int tempscore;

	public void recordscord() {
		System.out.println("recordscord");
		System.out.println("answers--" + answers);
		// int frequency = 0;
		// if (power != null)
		// frequency = Integer.parseInt(power);
		// System.out.println("power--" + power);
		HttpSession session = ServletActionContext.getRequest().getSession();
		System.out.println(session.getAttribute("username") + "111"
				+ session.getAttribute("password"));
		if (session.getAttribute("userId") != null) {
			User user = userService.findUserById(Integer.parseInt(session
					.getAttribute("userId").toString()));
			if (user != null) {
				int frequency = user.getPower() + 1;
				JSONObject jsonObject;
				String ans = "";
				try {
					jsonObject = new JSONObject(answers);
					for (int i = 1; i <= jsonObject.length(); i++) {
						ans = ans + jsonObject.get(i + "") + "#";
					}
					System.out.println("ans--" + ans);
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				switch (frequency) {
				case 3:
					user.setAnswer1(ans);
					user.setTime1(Integer.parseInt(time));
					user = setHigherScore1(user);
					userService.updateUser(user);
					break;
				case 2:
					user.setAnswer2(ans);
					user.setTime2(Integer.parseInt(time));
					user = setHigherScore2(user);
					userService.updateUser(user);
					break;
				case 1:
					user.setAnswer3(ans);
					user.setTime3(Integer.parseInt(time));
					user = setHigherScore3(user);
					userService.updateUser(user);
					break;
				default:
					break;
				}

				setOutput(tempscore + "");

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

	private User setHigherScore1(User user) {
		int score = 0;
		String answers = user.getAnswer1();
		if (answers != null && !answers.equals("")) {
			String[] ans = answers.split("#");
			String[] subs = user.getExam1().split("#");
			System.out.println("ans.length" + ans.length);
			for (int i = 0; i < ans.length; i++) {
				// ����ݿ����ҳ���ȷ�𰸽��жԱȣ����һ����score��1
				if (subjectService.findSubjectById(Integer.parseInt(subs[i]))
						.getRightanswer().equals(ans[i] + ".0")) {

					score++;
				}
			}
			if (getHighterSocre(user.getScore(), score)) {
				user.setScore(user.getScore());
			} else {
				user.setHighexam(1);
				user.setScore(score);
			}
		} else {

		}
		tempscore = score;
		return user;
	}

	private User setHigherScore2(User user) {
		int score = 0;
		String answers = user.getAnswer2();
		if (answers != null && !answers.equals("")) {
			String[] ans = answers.split("#");
			String[] subs = user.getExam2().split("#");
			System.out.println("ans.length" + ans.length);
			for (int i = 0; i < ans.length; i++) {
				// ����ݿ����ҳ���ȷ�𰸽��жԱȣ����һ����score��1
				if (subjectService.findSubjectById(Integer.parseInt(subs[i]))
						.getRightanswer().equals(ans[i] + ".0")) {

					score++;
				}
			}
			if (getHighterSocre(user.getScore(), score)) {
				user.setScore(user.getScore());
			} else {
				user.setHighexam(2);
				user.setScore(score);
			}
		} else {

		}
		tempscore = score;
		return user;
	}

	private User setHigherScore3(User user) {
		int score = 0;
		String answers = user.getAnswer3();
		if (answers != null && !answers.equals("")) {
			String[] ans = answers.split("#");
			String[] subs = user.getExam3().split("#");
			System.out.println("ans.length" + ans.length);
			for (int i = 0; i < ans.length; i++) {
				// ����ݿ����ҳ���ȷ�𰸽��жԱȣ����һ����score��1
				if (subjectService.findSubjectById(Integer.parseInt(subs[i]))
						.getRightanswer().equals(ans[i] + ".0")) {

					score++;
				}
			}
			if (getHighterSocre(user.getScore(), score)) {
				user.setScore(user.getScore());
			} else {
				user.setHighexam(3);
				user.setScore(score);
			}
		} else {

		}
		tempscore = score;
		return user;
	}

	private boolean getHighterSocre(int userscore, int socre) {
		return userscore > socre ? true : false;
	}

	public String getAnswers() {
		return answers;
	}

	public void setAnswers(String answers) {
		this.answers = answers;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
