package com.jeecg.service.dao;

import java.util.List;

import org.jeecgframework.minidao.annotation.MiniDao;
import org.jeecgframework.minidao.annotation.Sql;

import com.jeecg.entity.question.QuestionEntity;

@MiniDao
public interface QuestionDao {
	@Sql("select * from exam")
	public List<QuestionEntity> getPaper();
}
