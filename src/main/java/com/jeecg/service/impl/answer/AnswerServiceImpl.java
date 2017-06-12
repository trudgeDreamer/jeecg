package com.jeecg.service.impl.answer;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeecg.service.answer.AnswerServiceI;
import org.jeecgframework.core.common.service.impl.CommonServiceImpl;

@Service("answerService")
@Transactional
public class AnswerServiceImpl extends CommonServiceImpl implements AnswerServiceI {
	
}