<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="examInfoList" title="考试题目功能模块" actionUrl="examInfoController.do?datagrid" idField="id" fit="true">
   <t:dgCol title="编号" field="id" hidden="true"></t:dgCol>
   <t:dgCol title="所属部门" field="sysOrgCode"   width="120"></t:dgCol>
   <t:dgCol title="所属公司" field="sysCompanyCode"   width="120"></t:dgCol>
   <t:dgCol title="流程状态" field="bpmStatus"   width="120"></t:dgCol>
   <t:dgCol title="选项A" field="optionA"   width="120"></t:dgCol>
   <t:dgCol title="选项B" field="optionB"   width="120"></t:dgCol>
   <t:dgCol title="选项C" field="optionC"   width="120"></t:dgCol>
   <t:dgCol title="选项D" field="optionD"   width="120"></t:dgCol>
   <t:dgCol title="答案" field="answer"   width="120"></t:dgCol>
   <t:dgCol title="操作" field="opt" width="100"></t:dgCol>
   <t:dgDelOpt title="删除" url="examInfoController.do?del&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>
   <t:dgToolBar title="录入" icon="icon-add" url="examInfoController.do?addorupdate" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="examInfoController.do?addorupdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="examInfoController.do?addorupdate" funname="detail"></t:dgToolBar>
  </t:datagrid>
  </div>
 </div>