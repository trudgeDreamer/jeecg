<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>考试答案</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="answerController.do?save">
			<input id="id" name="id" type="hidden" value="${answerPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属部门:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="sysOrgCode" name="sysOrgCode" ignore="ignore"  value="${answerPage.sysOrgCode}" />
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
						<input class="inputxt" id="sysCompanyCode" name="sysCompanyCode" ignore="ignore"  value="${answerPage.sysCompanyCode}" />
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
						<input class="inputxt" id="bpmStatus" name="bpmStatus" ignore="ignore"  value="${answerPage.bpmStatus}" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							用户编号:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="userId" name="userId"   value="${answerPage.userId}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							试卷编号:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="paperId" name="paperId"   value="${answerPage.paperId}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							用户答案:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="answerOpt" name="answerOpt"   value="${answerPage.answerOpt}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							问题编号:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="questionId" name="questionId"   value="${answerPage.questionId}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>