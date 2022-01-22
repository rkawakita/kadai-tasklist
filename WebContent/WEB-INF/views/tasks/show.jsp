<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>id: ${task.id}のタスク詳細ページ</h2>
        <table>
            <tbody>
                <tr>
                    <th>タスク</th><td><c:out value="${task.content}" /></td>
                </tr>
                <tr>
                    <th>作成日時</th><td><fmt:formatDate value="${task.created_at}" /></td>
                </tr>
                <tr>
                    <th>更新日時</th><td><fmt:formatDate value="${task.updated_at}" /></td>
                </tr>
            </tbody>
        </table>
        <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">編集する</a></p>
        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
    </c:param>
</c:import>