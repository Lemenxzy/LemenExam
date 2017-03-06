//package com.bufoon.action;
//
//import java.io.IOException;
//import java.io.OutputStream;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.apache.struts2.ServletActionContext;
//
//import com.bufoon.entity.User;
//import com.bufoon.service.user.SubjectService;
//import com.bufoon.service.user.UserService;
//import com.opensymphony.xwork2.ActionSupport;
//
//public class TestAction extends ActionSupport {
//
//	private static final long serialVersionUID = 1L;
//
//	@Resource
//	private UserService userService;
//
//	@Resource
//	private SubjectService subjectService;
//
//	private String frequency;
//	private String subjectnum;
//	private String answer;
//
//	public void subject() {
//		// ��ȡresponse
//		HttpServletResponse response = ServletActionContext.getResponse();
//		// ��ȡsession
//		HttpSession session = ServletActionContext.getRequest().getSession();
//		String phonenumber = "";
//		if (session.getAttribute("phonenumber") != null)
//			phonenumber = session.getAttribute("phonenumber").toString();
//		String idcard = "";
//		if (session.getAttribute("idcard") != null)
//			idcard = session.getAttribute("idcard").toString();
//
//		//////////////////////////////////////////////////
//		//������
////		phonenumber="1";
////		idcard="1";
//		/////////////////////////////////////////////////
//		
//		if (!phonenumber.equals("") && !idcard.equals("")) {
//			// �绰��������֤�Ų�Ϊ��
//			User user = userService.findUserByNameAndPassword(phonenumber,
//					idcard);
//			if (user != null) {
//				// �û�����
//				// �ж��û��ڼ��δ��� �Ƿ�Ϊ��?
//				int intFrequency = Integer.parseInt(frequency);
//				String answers = "";
//				switch (intFrequency) {
//				case 3:
//					answers = user.getAnswer1();
//					if (answers == null)
//						answers = "";
//					answers = answers + answer + "#";
//					user.setAnswer1(answers);
//					if (subjectnum.equals("50"))
//						user = setHigherScore1(user);
//					break;
//				case 2:
//					answers = user.getAnswer2();
//					if (answers == null)
//						answers = "";
//					answers = answers + answer + "#";
//					user.setAnswer2(answers);
//					if (subjectnum.equals("50"))
//						user = setHigherScore2(user);
//					break;
//				case 1:
//					answers = user.getAnswer3();
//					if (answers == null)
//						answers = "";
//					answers = answers + answer + "#";
//					user.setAnswer3(answers);
//					if (subjectnum.equals("50"))
//						user = setHigherScore3(user);
//					break;
//				default:
//					break;
//				}
//				userService.updateUser(user);
//				try {
//					OutputStream o = response.getOutputStream();
//					o.write("success".getBytes());
//					o.close();
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			} else {
//				// �û�������
//				try {
//					OutputStream o = response.getOutputStream();
//					o.write("error".getBytes());
//					o.close();
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		} else {
//			// �绰��������֤��Ϊ��
//			try {
//				OutputStream o = response.getOutputStream();
//				o.write("error".getBytes());
//				o.close();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//	}
//
//	private User setHigherScore1(User user) {
//		int score = 0;
//		String answers = user.getAnswer1();
//		if (answers != null && !answers.equals("")) {
//			String[] ans = answers.split("#");
//			String[] subs = user.getTest1().split("#");
//			for (int i = 0; i < answers.length() / 2; i++) {
//				//�����ݿ����ҳ���ȷ�𰸽��жԱȣ����һ����score��1
//				if (subjectService.findSubjectById(Integer.parseInt(subs[i]))
//						.getRightanswer().equals(ans[i] + ".0")) {
//
//					score++;
//				}
//			}
//			user.setScore(getHighterSocre(user.getScore(), score));
//		} else {
//			user.setScore(getHighterSocre(user.getScore(), 0));
//		}
//
//		return user;
//	}
//
//	private User setHigherScore2(User user) {
//		int score = 0;
//		String answers = user.getAnswer2();
//		if (answers != null && !answers.equals("")) {
//			String[] ans = answers.split("#");
//			String[] subs = user.getTest2().split("#");
//			for (int i = 0; i < answers.length() / 2; i++) {
//				//�����ݿ����ҳ���ȷ�𰸽��жԱȣ����һ����score��1
//				if (subjectService.findSubjectById(Integer.parseInt(subs[i]))
//						.getRightanswer().equals(ans[i] + ".0")) {
//
//					score++;
//				}
//			}
//			user.setScore(getHighterSocre(user.getScore(), score));
//		} else {
//			user.setScore(getHighterSocre(user.getScore(), 0));
//		}
//		return user;
//	}
//
//	private User setHigherScore3(User user) {
//		int score = 0;
//		String answers = user.getAnswer3();
//		if (answers != null && !answers.equals("")) {
//			String[] ans = answers.split("#");
//			String[] subs = user.getTest3().split("#");
//			for (int i = 0; i < answers.length() / 2; i++) {
//				//�����ݿ����ҳ���ȷ�𰸽��жԱȣ����һ����score��1
//				if (subjectService.findSubjectById(Integer.parseInt(subs[i]))
//						.getRightanswer().equals(ans[i] + ".0")) {
//
//					score++;
//				}
//			}
//			user.setScore(getHighterSocre(user.getScore(), score));
//		} else {
//			user.setScore(getHighterSocre(user.getScore(), 0));
//		}
//		return user;
//	}
//
//	private int getHighterSocre(int userscore, int socre) {
//		return userscore > socre ? userscore : socre;
//	}
//
//	public String getFrequency() {
//		return frequency;
//	}
//
//	public void setFrequency(String frequency) {
//		this.frequency = frequency;
//	}
//
//	public String getSubjectnum() {
//		return subjectnum;
//	}
//
//	public void setSubjectnum(String subjectnum) {
//		this.subjectnum = subjectnum;
//	}
//
//	public String getAnswer() {
//		return answer;
//	}
//
//	public void setAnswer(String answer) {
//		this.answer = answer;
//	}
//
//}
