<%@ page contentType="text/xml" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd">
<!--  created with Free Online Sitemap Generator www.xml-sitemaps.com  -->
<url>
    <loc>http://myvotes.in/</loc>
    <lastmod>2020-12-26T10:04:26+00:00</lastmod>
    <priority>1.00</priority>
</url>
<c:forEach items="${polls}" var="poll">
    <url>
        <loc>http://myvotes.in/poll/${poll.id}/${poll.title}</loc>
        <lastmod>2020-12-26T10:04:26+00:00</lastmod>
        <priority>0.80</priority>
    </url>
</c:forEach>
<c:forEach items="${videos}" var="video">
    <jsp:useBean id="dateObject" class="java.util.Date" />
    <jsp:setProperty name="dateObject" property="time" value="${video.updatedTimeStamp}" />
    <url>
        <loc>http://myvotes.in/watch/${video.id}/${video.title}</loc>
        <lastmod><fmt:formatDate value="${dateObject }" pattern="yyyy-MM-dd'T'HH:mm:ss.SSSZ" /></lastmod>
        <priority>0.80</priority>
    </url>
</c:forEach>
</urlset>