package com.jeecg.service.question;

import java.util.List;

import org.jeecgframework.core.common.service.CommonService;

import com.jeecg.entity.question.QuestionEntity;

public interface QuestionServiceI extends CommonService{
	
	public List<QuestionEntity> queryAll();
}
