<%--
  Created by IntelliJ IDEA.
  User: WZ
  Date: 2020/6/9
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>研究生院导师信息</title>
    <link rel="stylesheet" href="css/userInfoTable.css">
</head>
<body>
    <div class="title">
        <h1>研究生院导师信息</h1>
    </div>
    <br>
    <div style="text-align: center " class="search-query">
        <b>按系别查询：</b>
        <select name="major" id="dept">
            <option value="all">所有导师</option>
            <c:forEach var="dept" items="${sessionScope.depts}">
                <option value="${dept.dno}">${dept.dname}</option>
            </c:forEach>
        </select>
        <button class="btn" onclick="searchTutorByDept()">查询</button>
        &nbsp;&nbsp;共${sessionScope.tutors.size()}条信息
    </div>
    <br>
    <table>
        <thead>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>职称</th>
            <th>专业</th>
            <%--<th>联系电话</th>
            <th>邮箱</th>--%>
            <th>人数上限</th>
            <th>目前已带人数</th>
            <th>删除导师</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="count" value="1" scope="page"/>
        <c:forEach var="tutor" items="${sessionScope.tutors}">
            <c:if test="${count % 2 == 1}">
                <tr>
            </c:if>
            <c:if test="${count % 2 == 0}">
                <tr class="a1">
            </c:if>
            <c:set var="count" value="${count + 1}" scope="page"/>
            <td>${tutor.tno}</td>
            <td><a href="tutorDetailInfo.do?type=tutor&tno=${tutor.tno}">${tutor.tname}</a></td>
            <td>${tutor.sex}</td>
            <td>${tutor.birth}</td>
            <td>${tutor.title}</td>
            <td>${sessionScope.majorDAO.getMajorByMno(tutor.mno).mname}</td>
            <%--<td>${tutor.tel}</td>
            <td>${tutor.email}</td>--%>
            <td>${tutor.ability}</td>
            <c:set var="currentStudentsCount" value="${sessionScope.tutorDAO.getCurrentStudentsCountByTno(tutor.tno)}"/>
            <td>${currentStudentsCount}</td>
            <c:if test="${currentStudentsCount == 0}">
                <td><a href="deleteTutor.do?type=tutor&tno=${tutor.tno}">删除</a></td>
            </c:if>
            <c:if test="${currentStudentsCount > 0}">
                <td>--</td>
            </c:if>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <script>
        function searchTutorByDept() {
            let dno = document.getElementById("dept").value;
            if ("all" === dno) {
                window.location.href = "supAdminTutorTable.do?type=tutor&dno=all";
            } else {
                window.location.href = "supAdminTutorTable.do?type=tutor&dno=" + dno;
            }
        }
    </script>
</body>
</html>
