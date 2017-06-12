<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>问题答案关联表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="paperquestionrelController.do?save">
			<input id="id" name="id" type="hidden" value="${paperquestionrelPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							试卷ID:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="paperId" name="paperId"   value="${paperquestionrelPage.paperId}" datatype="n" />
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
						<input class="inputxt" id="questionId" name="questionId" ignore="ignore"  value="${paperquestionrelPage.questionId}" datatype="n" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>