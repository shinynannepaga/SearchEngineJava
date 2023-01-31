<%@page import="java.util.ArrayList"%>
<%@page import="com.Accio.HistoryResult"%>

<html>
    <head>
        <link rel = "stylesheet" type="text/css" href = "styles.css">
    </head>
    <body>

        <h1>Search Engine</h1>

       <form action = "Search">
       <input type = "text" name="keyword"/>
       <button type = "submit">Search</button>
       </form>

        <h1>History</h1>


       <div class = "resultTable">
            <table border=2>
                <tr>
                    <td>Keyword</td>
                    <td>Link</td>
                </tr>

                <%
                //get results from history servlet
                ArrayList<HistoryResult> results = (ArrayList<HistoryResult>)request.getAttribute("results");
                //iterate for every data present in results array
                for(HistoryResult result:results){
                %>

                <tr>
                    <td><%out.println(result.getKeyword());%></td>
                    <td><a href="<%out.println(result.getLink());%>"> <%out.println(result.getLink());%> </a></td>
                </tr>

                <%
                    }
                %>
            </table>
       </div>


    </body>
</html>
