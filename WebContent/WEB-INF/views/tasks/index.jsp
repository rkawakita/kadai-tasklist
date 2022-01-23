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

        <div id="pagination">
            ( 全　${tasks_count} 件)<br />
                 <c:if test="${page > 10 }">
                    <a href="${pageContext.request.contextPath}/index?page=${page -10}">&lt;&lt;</a>&nbsp;
                </c:if>
                <c:if test="${page  > 1 }">
                    <a href="${pageContext.request.contextPath}/index?page=${page -1}">&lt;</a>&nbsp;
                </c:if>
            <c:forEach var="i" begin="${(page < 5)?1:page-5 }" end="${(page + 5 > last_page)?last_page:page+5}">
                <c:choose>
                    <c:when test="${i == page }">
                        <c:out value="${i}" />&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/index?page=${i}"><c:out value="${i}"/></a>&nbsp;
                    </c:otherwise>
                </c:choose>
            </c:forEach>
                <c:if test="${page  < last_page }">
                    <a href="${pageContext.request.contextPath}/index?page=${page +1}">&gt;</a>&nbsp;
                </c:if>
                <c:if test="${page +10  < last_page }">
                    <a href="${pageContext.request.contextPath}/index?page=${page +10}">&gt;&gt;</a>&nbsp;
                </c:if>
         </div>


        <p><a href="${pageContext.request.contextPath}/new">新規タスクの登録</a></p>
    </c:param>
</c:import>