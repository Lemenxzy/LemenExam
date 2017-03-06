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
//			// 判断用户是否已经登录
//			if (user != null) {
//				System.out.println("答题次数-->" + user.getFrequency());
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
//				// 用户未登录
//				return ERROR;
//			}
//		}
//		System.out.println("username-->" + session.getAttribute("username"));
//		System.out.println("password-->" + session.getAttribute("password"));
//		System.out.println("identity-->" + session.getAttribute("identity"));
//		System.out.println("--------------我是分割线-------------------------");
//		return SUCCESS;
//	}
//	
//	private String frequency1(User user,HttpServletRequest request,int intState)
//	{
//		// 第一次答题
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
//		// 判断当前题目是否正确，用户是否有违规操作
//		if (intState == tempState) {
//			System.out.println("题号正确，用户无违规操作");
//			if (intState == 0) {
//				// 表示还没开始答题
//				user.setAnswer1("0");
//			} else if (intState == 50) {
//				// 50道 答题结束
//				user.setFrequency(1);
//				// 计算成绩
//				int score = getScore1(user);
//				// 取最高成绩
//				if (user.getScore() < score)
//					user.setScore(score);
//				request.setAttribute("score", score);
//				request.setAttribute("state", "finish");
//				return SUCCESS;
//			} else {
//				// 用户已经开始答题
//				String temps = user.getAnswer1();
//				// 判断输入是否为空
//				if (select == null) {
//					user.setAnswer1(temps + "#0");
//				} else {
//
//					user.setAnswer1(temps + "#" + select);
//				}
//			}
//			userService.updateUser(user);
//			// 取题目，向用户传题目数据
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
//			// 说明用户返回了
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
//		System.out.println("成绩为-->" + score);
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
