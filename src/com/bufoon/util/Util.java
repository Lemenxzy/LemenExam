package com.bufoon.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import com.bufoon.service.user.SubjectService;
import com.bufoon.service.user.UserService;


import sun.misc.BASE64Encoder;

/**
 * 閫氱敤宸ュ叿绫�
 */
public class Util {

	/**
	 * 瀵瑰瓧绗︿覆杩涜MD5鍔犲瘑
	 * 
	 * @param str
	 * @return String
	 */
	public static String md5Encryption(String str) {
		String newStr = null;
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			BASE64Encoder base = new BASE64Encoder();
		
			newStr = base.encode(md5.digest(str.getBytes("UTF-8")));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return newStr;
	}

	/**
	 * 鍒ゆ柇瀛楃涓叉槸鍚︿负绌�
	 * 
	 * @param str
	 *            瀛楃涓�
	 * @return true锛氫负绌猴紱 false锛氶潪绌�
	 */
	public static boolean isNull(String str) {
		if (str != null && !str.trim().equals("")) {
			return false;
		} else {
			return true;
		}
	}

	/**
	 * 寰楀埌鎶涘紓甯哥殑淇℃伅
	 * 
	 * @param t
	 * @return
	 */
	public static String getTrace(Throwable t) {
		StringWriter stringWriter = new StringWriter();
		PrintWriter writer = new PrintWriter(stringWriter);
		t.printStackTrace(writer);
		StringBuffer buffer = stringWriter.getBuffer();
		return buffer.toString();
	}

	public static boolean isEmpty(String content) {
		return (content == null || content.equals("")) ? true : false;
	}

	public static boolean isnotEmpty(String content) {
		return !isEmpty(content);
	}

	public static String base64Encode(byte[] b) {
		if (b == null) {
			return null;
		}
		return new BASE64Encoder().encode(b);
	}

	/**
	 * md5加密 方法名：md5Base64<BR>
	 * 时间：2014年11月28日-上午12:51:12 <BR>
	 * 
	 * @param str
	 * @return String<BR>
	 * @exception <BR>
	 * @since 1.0.0
	 */
	public static String md5Base64(String str) {
		try {
			MessageDigest md5 = MessageDigest.getInstance("MD5");
			return base64Encode(md5.digest(str.getBytes()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String StringFilter(String str) {
		// 只允许字母和数字
		// String regEx = "[^a-zA-Z0-9]";
		// 清除掉所有特殊字符
		String regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]";
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(str);
		return m.replaceAll("").trim();
	}
	
	public static int[] StringtoInt(String str) {  
		  
	    int ret[] = new int[str.length()];   
	  
	    StringTokenizer toKenizer = new StringTokenizer(str, "#");   
	  
	    int i = 0;  
	  
	    while (toKenizer.hasMoreElements()) {   
	  
	      ret[i++] = Integer.valueOf(toKenizer.nextToken());  
	  
	    }   
	  
	   return ret;  
	  
	 }


	public static void main(String[] args) {
		System.out.println("111777999");
		ApplicationContext factory = new ClassPathXmlApplicationContext(
				"classpath:applicationContext.xml");
		UserService userService = (UserService) factory.getBean("userService");
		SubjectService subjectService = (SubjectService) factory
				.getBean("subjectService");

	}
}
