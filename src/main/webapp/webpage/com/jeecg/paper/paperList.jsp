<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
  <script src="plug-in/ztree/js/jquery-1.4.4.min.js"></script>
 <head>
  	<title>问题答案关联表</title>
 </head>
<div>
	<c:if test="${questionList==null || fn:length(questionList) == 0}">
		<tr>
			<td colspan="4">暂无数据</td>
		</tr>
	</c:if>
	<c:forEach items="${questionList}" var="item" varStatus="status">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-xs-6 col-sm-3">
					${status.count}、${item.question }
				</div>
				<div class="radio">
					<label> 
						<input type="radio" name="${item.id }" id="${item.id }" value="A" onchange="submit(id,value)">A、${item.optionA }
					</label>
				</div>
				<div class="radio">
					<label> 
						<input type="radio" name="${item.id }" id="${item.id }" value="B" onchange="submit(id,value)">B、${item.optionB }
					</label>
				</div>
				<div class="radio">
					<label> 
						<input type="radio" name="${item.id }" id="${item.id }" value="C" onchange="submit(id,value)">C、${item.optionC }
					</label>
				</div>
				<div class="radio">
					<label> 
						<input type="radio" name="${item.id }" id="${item.id }" value="D" onchange="submit(id,value)">D、${item.optionD }
					</label>
				</div>
			</div>
		</div>
	</c:forEach>
</div>
<script>
	function submit(id,value){
		$.ajax({
	        type: "post",
	        url: "<%=basePath%>/userController.do?getUserInfo",
	        dataType: "json",
	        success: function (data ,textStatus, jqXHR)
	        {
	        	alert(data.userKey);
	        }
	     });
		alert('${user.userName}');
	}
</script>
</html>
