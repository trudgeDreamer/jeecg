package com.jeecg.controller.paper;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.jeecgframework.core.common.controller.BaseController;
import org.jeecgframework.core.common.hibernate.qbc.CriteriaQuery;
import org.jeecgframework.core.common.model.json.DataGrid;
import org.jeecgframework.tag.core.easyui.TagUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jeecg.controller.answer.AnswerController;
import com.jeecg.entity.paperquestionrel.PaperquestionrelEntity;
import com.jeecg.entity.question.QuestionEntity;
import com.jeecg.service.paperquestionrel.PaperquestionrelServiceI;
import com.jeecg.service.question.QuestionServiceI;

@Controller
@RequestMapping("/paperController")
public class PaperController extends BaseController {

	private static final Logger logger = Logger.getLogger(AnswerController.class);

	@Autowired
	private QuestionServiceI questionService;
	
	@Autowired
	private PaperquestionrelServiceI paperquestionrelService;

	/**
	 * 答题 页面跳转
	 * 
	 * @return
	 */
	@RequestMapping(params = "list")
	public ModelAndView list(HttpServletRequest request,Model model) {
		//获取试题列表
		List<QuestionEntity> list = questionService.queryAll();
		model.addAttribute("questionList", list);
		return new ModelAndView("com/jeecg/paper/paperList");
	}

	// 初始化试卷
	@RequestMapping(params = "initPaper")
	public void initPaper(HttpServletRequest request) {
		List<Object> list = new ArrayList<Object>();
		list.add(1);
		List<QuestionEntity> question = questionService.findHql(
				"SELECT question FROM `exam` ORDER BY RAND() LIMIT ?", list);
		
	}
	
	@RequestMapping(params = "datagrid")
	public void datagrid(PaperquestionrelEntity paperquestionrel,HttpServletRequest request, HttpServletResponse response, DataGrid dataGrid) {
		CriteriaQuery cq = new CriteriaQuery(PaperquestionrelEntity.class, dataGrid);
		//查询条件组装器
		org.jeecgframework.core.extend.hqlsearch.HqlGenerateUtil.installHql(cq, paperquestionrel, request.getParameterMap());
		this.paperquestionrelService.getDataGridReturn(cq, true);
		TagUtil.datagrid(response, dataGrid);
	}
	
//	@RequestMapping()
//	public void getQuestion(HttpServletRequest request,Model model){
//		model.addAttribute(arg0, arg1);
//	}
	

	// public static void main(String[] args) {
	// List<Integer> list = randomCommon(1, 100, 10);
	// for(Integer i :list){
	// System.out.println(i);
	// }
	// }

}
