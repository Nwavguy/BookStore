
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div id="page_nav">

    <c:if test="${requestScope.page.pageNo > 1}">
        <a href="${ requestScope.page.url }&pageNo=1">First</a>
        <a href="${ requestScope.page.url }&pageNo=${requestScope.page.pageNo-1}">prev</a>
    </c:if>
    <c:choose>
        <c:when test="${ requestScope.page.pageTotal <= 5 }">
            <c:set var="begin" value="1"/>
            <c:set var="end" value="${requestScope.page.pageTotal}"/>
        </c:when>
        <c:when test="${requestScope.page.pageTotal > 5}">
            <c:choose>
                <c:when test="${requestScope.page.pageNo <= 3}">
                    <c:set var="begin" value="1"/>
                    <c:set var="end" value="5"/>
                </c:when>
                <c:when test="${requestScope.page.pageNo > requestScope.page.pageTotal-3}">
                    <c:set var="begin" value="${requestScope.page.pageTotal-4}"/>
                    <c:set var="end" value="${requestScope.page.pageTotal}"/>
                </c:when>
                <c:otherwise>
                    <c:set var="begin" value="${requestScope.page.pageNo-2}"/>
                    <c:set var="end" value="${requestScope.page.pageNo+2}"/>
                </c:otherwise>
            </c:choose>
        </c:when>
    </c:choose>

    <c:forEach begin="${begin}" end="${end}" var="i">
        <c:if test="${i == requestScope.page.pageNo}">
            【${i}】
        </c:if>
        <c:if test="${i != requestScope.page.pageNo}">
            <a href="${ requestScope.page.url }&pageNo=${i}">${i}</a>
        </c:if>
    </c:forEach>


    <c:if test="${requestScope.page.pageNo < requestScope.page.pageTotal}">
        <a href="${ requestScope.page.url }&pageNo=${requestScope.page.pageNo+1}">next</a>
        <a href="${ requestScope.page.url }&pageNo=${requestScope.page.pageTotal}">Last</a>
    </c:if>

    ${ requestScope.page.pageTotal } Pages，${ requestScope.page.pageTotalCount } Records
    To <input value="${param.pageNo}" name="pn" id="pn_input"/>
    <input id="searchPageBtn" type="button" value="Go">

    <script type="text/javascript">

        $(function () {
            $("#searchPageBtn").click(function () {

                var pageNo = $("#pn_input").val();

                location.href = "${pageScope.basePath}${ requestScope.page.url }&pageNo=" + pageNo;

            });
        });

    </script>

</div>



