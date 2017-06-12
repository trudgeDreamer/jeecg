<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>试题答案关联表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="paper_question_relController.do?save">
			<input id="id" name="id" type="hidden" value="${paper_question_relPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属部门:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="sysOrgCode" name="sysOrgCode" ignore="ignore"  value="${paper_question_relPage.sysOrgCode}" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属公司:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="sysCompanyCode" name="sysCompanyCode" ignore="ignore"  value="${paper_question_relPage.sysCompanyCode}" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							流程状态:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="bpmStatus" name="bpmStatus" ignore="ignore"  value="${paper_question_relPage.bpmStatus}" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							试卷ID:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="paperId" name="paperId"   value="${paper_question_relPage.paperId}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							问题问题:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="questionId" name="questionId" ignore="ignore"  value="${paper_question_relPage.questionId}" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>