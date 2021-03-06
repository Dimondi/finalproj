<%@ page import="api.models.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="api.services.EventService" %>
<%@ page import="api.services.FetchService" %><%--
  Created by IntelliJ IDEA.
  User: didef
  Date: 15.11.2020
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<link href="https://fonts.googleapis.com/css?family=Julius+Sans+One&display=swap" rel="stylesheet">
<div class="lib">
        <%
//        if(session.getAttribute("username")==null) {
//            response.sendRedirect("../auth.jsp");
//        }
//        FetchService fetchService = new FetchService();
//        ArrayList<Event> events = fetchService.fetchEvents(1,1);
    %>

    <form style="position: absolute; right: 0;top:0;" method="get" action="<%=request.getContextPath()%>/logout">
        <input class="btn btn-info mt" type="submit" value="Logout">
    </form>

    <div id="app" class="container">
        <h3 class="mt-3">Add event</h3>
        <hr>
        <form method="post" action="<%=request.getContextPath()%>/AddEventServlet">
            <div class="row">

                <div class="col">
                    <label>Event name</label> <h6 style="color: red" id="regisErr2"></h6>
                    <input type="text" class="form-control" name="name" id="name">
                </div>

                <div class="col">
                    <label>Event description</label> <h6 style="color: red" id="regisErr3"></h6>
                    <input type="text" class="form-control" name="description" id="description">
                </div>

                <div class="col">
                    <label>Event image</label> <h6 style="color: red" id="regisErr1"></h6>
                    <input type="text" class="form-control" name="image" id="image">
                </div>

                <div class="col">
                    <label>Club</label> <h6 style="color: red" ></h6>
                    <input type="text" class="form-control" name="club" id="club">
                </div>

                <div class="col">
                    <label>Major</label> <h6 style="color: red" ></h6>
                    <input type="text" class="form-control" name="major" id="major">
                </div>

            </div>
            <button class="btn btn-info mt-2" id="btn_add">Add event</button>
        </form>
        <hr>


<%--        <div class="row">--%>
<%--            <div class="col">--%>
<%--                <table id="user-table" class="display table-bordered nowrap" cellspacing="0" width="100%">--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>Event name</th>--%>
<%--                        <th>Event description</th>--%>
<%--                        <th>Created date</th>--%>
<%--                        <th>Event club</th>--%>
<%--                        <th>Event major</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                    <% for(Event event : events){%>--%>
<%--                    <tr>--%>
<%--                        <th><%= event.getName() %></th>--%>
<%--                        <th><%= event.getDescription() %></th>--%>
<%--                        <th><%= event.getCreated_at() %></th>--%>
<%--                        <th><%= event.getClub() %></th>--%>
<%--                        <th><%= event.getMajor() %></th>--%>
<%--                        <form method="post" action="<%=request.getContextPath()%>/clubs">--%>
<%--                            <th>--%>
<%--                                <input style="display: none;" name="book_id" value="<%=event.getId()%>">--%>
<%--                                <button style="width: 100%;" class="btn btn-info mt-0" id="change">Details</button>--%>
<%--                            </th>--%>
<%--                        </form>--%>
<%--                    </tr>--%>
<%--                    <% } %>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
<%--    <script src="${pageContext.request.contextPath}/js/eventsPage_js.js"></script>--%>
</body>
</html>
