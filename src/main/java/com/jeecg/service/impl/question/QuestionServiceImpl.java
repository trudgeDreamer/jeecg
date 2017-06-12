package com.jeecg.service.impl.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeecg.demo.dao.JeecgMinidaoDao;
import com.jeecg.entity.question.QuestionEntity;
import com.jeecg.service.dao.QuestionDao;
import com.jeecg.service.question.QuestionServiceI;

import org.jeecgframework.core.common.service.impl.CommonServiceImpl;

@Service("questionService")
@Transactional
public class QuestionServiceImpl extends CommonServiceImpl implements QuestionServiceI {
	
	@Autowired
	private QuestionDao questionDao;
	@Override
	public List<QuestionEntity> queryAll() {
		return questionDao.getPaper();
	}
	
}