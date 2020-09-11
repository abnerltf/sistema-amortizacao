<%-- 
    Document   : amortizacao-constante
    Created on : 10/09/2020, 20:54:53
    Author     : Vinic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DecimalFormat" %>
<%
    boolean error = false;
    double months = 0, loan = 0, interest = 0;
 
    try {
        months = Integer.valueOf(request.getParameter("months"));
        loan = Integer.valueOf(request.getParameter("loan"));
        interest = Integer.valueOf(request.getParameter("interest"));
    } catch (Exception e) {
        error = true;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabela Sistema de Amortização Constante (SAC)</h1>
        
        <form method="POST">
            <input name="loan" placeholder="Empréstimo">
            <input name="interest" placeholder="juros">
            <input name="months" placeholder="Número de meses">
            <input type="submit">
        </form>
        
        <% if (!error) { %>
               <table>
                   <tr>
                       <th>Mês</th>
                       <th>Parcela</th>
                   </tr>
                   <% 
                    double juros = interest/100;
                    double amortizacao = loan / months;
                    for(int i = 0; i < months; i++) {    
                        double parcela = amortizacao + juros*(loan-i*amortizacao);
                        DecimalFormat format = new DecimalFormat("#####.##");
                   %>
                   <tr>
                       <td><%= i+1 %></td>
                       <td><%= format.format(parcela) %></td>
                   </tr>
                   <% } %>
               </table>
        <% }%>
    </body>
</html>
