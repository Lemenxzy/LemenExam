package com.bufoon.service.user.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bufoon.dao.BaseDAO;
import com.bufoon.entity.Subject;
import com.bufoon.service.user.SubjectService;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService{

	@Resource
	private BaseDAO<Subject> baseDAO;
	
	@Override
	public List<Subject> findAllList() {
		// TODO Auto-generated method stub
		return baseDAO.find(" from Subject s order by s.id");
	}

	@Override
	public Subject findSubjectById(int id) {
		// TODO Auto-generated method stub
		return baseDAO.get(Subject.class, id);
	}

}
