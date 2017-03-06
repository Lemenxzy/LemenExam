//package com.bufoon.action;
//
//import javax.annotation.Resource;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//
//import org.apache.struts2.ServletActionContext;
//
//import com.bufoon.entity.Subject;
//import com.bufoon.entity.User;
//import com.bufoon.service.user.SubjectService;
//import com.bufoon.service.user.UserService;
//import com.opensymphony.xwork2.ActionSupport;
//
//public class ExamAction extends ActionSupport {
//
//	private static final long serialVersionUID = 1L;
//
//	@Resource
//	private UserService userService;
//
//	@Resource
//	private SubjectService subjectService;
//
//	private String state;
//	private String select;
//
//	public String exam() {
//		HttpSession session = ServletActionContext.getRequest().getSession();
//		HttpServletRequest request = ServletActionContext.getRequest();
//		System.out.println("select is -->" + select);
//		if (state != null) {
//			int intState = Integer.parseInt(state);
//			System.out.println("intState-->" + intState);
//			if (session.getAttribute("username") == null
//					&& session.getAttribute("password") == null
//					&& session.getAttribute("identity") == null)
//				return ERROR;
//			User user = userService.findUserByNameAndPassword(session
//					.getAttribute("username").toString(),
//					session.getAttribute("password").toString(), session
//							.getAttribute("identity").toString());
//			// �ж��û��Ƿ��Ѿ���¼
//			if (user != null) {
//				System.out.println("�������-->" + user.getFrequency());
//				switch (user.getFrequency()) {
//				case 0:
//					return frequency1(user,request,intState);
//				case 1:
//					break;
//				case 2:
//					break;
//
//				default:
//					break;
//				}
//				
//			} else {
//				// �û�δ��¼
//				return ERROR;
//			}
//		}
//		System.out.println("username-->" + session.getAttribute("username"));
//		System.out.println("password-->" + session.getAttribute("password"));
//		System.out.println("identity-->" + session.getAttribute("identity"));
//		System.out.println("--------------���Ƿָ���-------------------------");
//		return SUCCESS;
//	}
//	
//	private String frequency1(User user,HttpServletRequest request,int intState)
//	{
//		// ��һ�δ���
//		String answer1 = null;
//		if (user.getAnswer1() != null) {
//			answer1 = user.getAnswer1();
//		}
//		int tempState;
//		if (answer1 == null)
//			tempState = 0;
//		else {
//			System.out.println("length" + answer1.length());
//			tempState = (answer1.length() + 1) / 2;
//		}
//		// �жϵ�ǰ��Ŀ�Ƿ���ȷ���û��Ƿ���Υ�����
//		if (intState == tempState) {
//			System.out.println("�����ȷ���û���Υ�����");
//			if (intState == 0) {
//				// ��ʾ��û��ʼ����
//				user.setAnswer1("0");
//			} else if (intState == 50) {
//				// 50�� �������
//				user.setFrequency(1);
//				// ����ɼ�
//				int score = getScore1(user);
//				// ȡ��߳ɼ�
//				if (user.getScore() < score)
//					user.setScore(score);
//				request.setAttribute("score", score);
//				request.setAttribute("state", "finish");
//				return SUCCESS;
//			} else {
//				// �û��Ѿ���ʼ����
//				String temps = user.getAnswer1();
//				// �ж������Ƿ�Ϊ��
//				if (select == null) {
//					user.setAnswer1(temps + "#0");
//				} else {
//
//					user.setAnswer1(temps + "#" + select);
//				}
//			}
//			userService.updateUser(user);
//			// ȡ��Ŀ�����û�����Ŀ����
//			int subjectNum = Integer.parseInt(user.getTest1()
//					.split("#")[tempState]);
//			System.out.println("subjectNum" + subjectNum);
//			Subject subject = subjectService
//					.findSubjectById(subjectNum);
//			if (subject != null) {
//				request.setAttribute("title", subject.getTitle());
//				request.setAttribute("optionA",
//						subject.getOptionA());
//				request.setAttribute("optionB",
//						subject.getOptionB());
//				request.setAttribute("optionC",
//						subject.getOptionC());
//				request.setAttribute("optionD",
//						subject.getOptionD());
//				request.setAttribute("state", tempState + 1 + "");
//			}
//		} else {
//			// ˵���û�������
//			int subjectNum = Integer.parseInt(user.getTest1()
//					.split("#")[tempState - 1]);
//			System.out.println("subjectNum" + subjectNum);
//			Subject subject = subjectService
//					.findSubjectById(subjectNum);
//			if (subject != null) {
//				request.setAttribute("title", subject.getTitle());
//				request.setAttribute("optionA",
//						subject.getOptionA());
//				request.setAttribute("optionB",
//						subject.getOptionB());
//				request.setAttribute("optionC",
//						subject.getOptionC());
//				request.setAttribute("optionD",
//						subject.getOptionD());
//				request.setAttribute("state", tempState + "");
//			}
//		}
//		
//		return SUCCESS;
//	}
//
//	private int getScore1(User user) {
//		int score = 0;
//
//		String[] subjects = user.getTest1().split("#");
//		String[] answers = user.getAnswer1().split("#");
//
//		for (int i = 1; i < answers.length; i++) {
////			System.out.println(subjectService.findSubjectById(
////					Integer.parseInt(subjects[i - 1])).getRightanswer()
////					+ "-----" + answers[i]);
//			if (subjectService
//					.findSubjectById(Integer.parseInt(subjects[i - 1]))
//					.getRightanswer().equals(answers[i]+".0")) {
//				
//				score++;
//			}
//		}
//
//		System.out.println("�ɼ�Ϊ-->" + score);
//		return score;
//	}
//
//	public String getState() {
//		return state;
//	}
//
//	public void setState(String state) {
//		this.state = state;
//	}
//
//	public String getSelect() {
//		return select;
//	}
//
//	public void setSelect(String select) {
//		this.select = select;
//	}
//
//}
