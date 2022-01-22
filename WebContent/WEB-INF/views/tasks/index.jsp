<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush  != null}">
            <div id="flush_success">
                <c:out value="${flush}" />
            </div>
        </c:if>
        <h2>タスク一覧</h2>

        <table>
            <thead>
                <th>id</th>
                <td>タスク</td>
            </thead>
            <tbody>
                <c:forEach var="task" items="${tasks }">
                    <tr>
                        <th>
                            <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                                <c:out value="${task.id}"/>
                            </a>
                        </th>
                        <td>
                            <c:out value="${task.content}" />
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <p><a href="${pageContext.request.contextPath}/new">新規タスクの登録</a></p>
    </c:param>
</c:import>