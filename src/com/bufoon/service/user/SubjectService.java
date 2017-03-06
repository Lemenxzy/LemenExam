package com.bufoon.service.user;

import java.util.List;

import com.bufoon.entity.Subject;


public interface SubjectService {
	
	public List<Subject> findAllList();
	
	public Subject findSubjectById(int id);

}
