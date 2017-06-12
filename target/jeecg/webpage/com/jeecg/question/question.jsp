<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>考试信息表</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="questionController.do?save">
			<input id="id" name="id" type="hidden" value="${questionPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							选项A:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="optionA" name="optionA"   value="${questionPage.optionA}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							选项B:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="optionB" name="optionB"   value="${questionPage.optionB}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							选项C:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="optionC" name="optionC"   value="${questionPage.optionC}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							选项D:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="optionD" name="optionD"   value="${questionPage.optionD}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							答案:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="answer" name="answer"   value="${questionPage.answer}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							问题:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="question" name="question"   value="${questionPage.question}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>