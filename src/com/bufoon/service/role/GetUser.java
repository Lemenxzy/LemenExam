package com.bufoon.service.role;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


import com.bufoon.entity.Subject;
import com.bufoon.entity.User;
import com.bufoon.util.JDBCTool;

public class GetUser {

	/**
	 * 
	 */

	// @Autowired
	// private UserService userService;
	//
	// @Autowired
	// private SubjectService subjectService;

	public static User findpower(int id) {
		// Session session = SessionFactoryUtils.getSession(getSessionFactory(),
		// true);
		// // ApplicationContext factory = new ClassPathXmlApplicationContext(
		// // "classpath:applicationContext.xml");
		// // UserService userService=(UserService) factory
		// // .getBean("userService");
		// System.out.println("111");
		// User user = (User) session.get(User.class, id);
		// System.out.println("findpower");
		User user = new User();
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;

		try {
			// 1. ��ȡ Connection
			conn = JDBCTool.getConnection();

			// 2. ��ȡ Statement
			statement = conn.createStatement();

			// 3. ׼�� SQL
			String sql = "SELECT ID,EXAM1,EXAM2,EXAM3,POWER " + "FROM user" + " WHERE id = " + id;

			// 4. ִ�в�ѯ, �õ� ResultSet
			rs = statement.executeQuery(sql);

			// 5. ���� ResultSet
			while (rs.next()) {
				user.setId(rs.getInt(1));
				user.setExam1(rs.getString("exam1"));
				user.setExam2(rs.getString("exam2"));
				user.setExam3(rs.getString("exam3"));
				user.setPower(rs.getInt("power"));
//				System.out.println("power" + rs.getInt("power"));
//				System.out.println("exam1" + rs.getString("exam1"));
//				System.out.println("exam2" + rs.getString("exam2"));
//				System.out.println("exam3" + rs.getString("exam3"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. �ر���ݿ���Դ.
			JDBCTool.release(rs, statement, conn);
		}
		return user;
	}

	public static Subject findContents(int nbone) {
		// Session session = SessionFactoryUtils.getSession(getSessionFactory(),
		// true);
		// // ApplicationContext factory = new ClassPathXmlApplicationContext(
		// // "classpath:applicationContext.xml");
		// // SubjectService subjectService=(SubjectService) factory
		// // .getBean("subjectService");
		// Subject subject = (Subject) session.get(Subject.class, nbone);

		Subject subject = new Subject();
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;

		try {
			// 1. ��ȡ Connection
			conn = JDBCTool.getConnection();

			// 2. ��ȡ Statement
			statement = conn.createStatement();

			// 3. ׼�� SQL
			String sql = "SELECT * " + "FROM subject" + " WHERE id = " + nbone;

			// 4. ִ�в�ѯ, �õ� ResultSet
			rs = statement.executeQuery(sql);

			// 5. ���� ResultSet
			while (rs.next()) {
				subject.setId(rs.getInt(1));
				subject.setTitle(rs.getString("title"));
				subject.setOptionA(rs.getString("optionA"));
				subject.setOptionB(rs.getString("optionB"));
				subject.setOptionC(rs.getString("optionC"));
				subject.setOptionD(rs.getString("optionD"));
				subject.setPicurl(rs.getString("picurl"));
//				System.out.println("find subject");

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. �ر���ݿ���Դ.
			JDBCTool.release(rs, statement, conn);
		}
		return subject;
	}

}
