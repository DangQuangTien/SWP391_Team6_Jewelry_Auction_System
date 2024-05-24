<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<c:set var="targetUrl" value="${targetUrl}" />
<c:if test="${empty targetUrl}">
    <c:set var="targetUrl" value="home.jsp" />
</c:if>

<!-- Perform the redirection -->
<c:redirect url="${targetUrl}" />

