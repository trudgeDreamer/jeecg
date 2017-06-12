<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
 <head>
  <title>考试题目功能模块</title>
  <t:base type="jquery,easyui,tools,DatePicker"></t:base>
 </head>
 <body style="overflow-y: hidden" scroll="no">
  <t:formvalid formid="formobj" dialog="true" usePlugin="password" layout="table" action="examInfoController.do?save">
			<input id="id" name="id" type="hidden" value="${examInfoPage.id }">
			<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
				<tr>
					<td align="right">
						<label class="Validform_label">
							所属部门:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="sysOrgCode" name="sysOrgCode" ignore="ignore"  value="${examInfoPage.sysOrgCode}" />
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
						<input class="inputxt" id="sysCompanyCode" name="sysCompanyCode" ignore="ignore"  value="${examInfoPage.sysCompanyCode}" />
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
						<input class="inputxt" id="bpmStatus" name="bpmStatus" ignore="ignore"  value="${examInfoPage.bpmStatus}" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<label class="Validform_label">
							选项A:
						</label>
					</td>
					<td class="value">
						<input class="inputxt" id="optionA" name="optionA"   value="${examInfoPage.optionA}" datatype="*" />
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
						<input class="inputxt" id="optionB" name="optionB"   value="${examInfoPage.optionB}" datatype="*" />
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
						<input class="inputxt" id="optionC" name="optionC"   value="${examInfoPage.optionC}" datatype="*" />
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
						<input class="inputxt" id="optionD" name="optionD"   value="${examInfoPage.optionD}" datatype="*" />
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
						<input class="inputxt" id="answer" name="answer"   value="${examInfoPage.answer}" datatype="*" />
						<span class="Validform_checktip"></span>
					</td>
				</tr>
			</table>
		</t:formvalid>
 </body>