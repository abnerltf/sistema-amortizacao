<%-- 
    Document   : tabela-price
    Created on : 6 de set de 2020, 19:29:38
    Author     : user
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
        <title>PRICE</title>
        <style>
            td {
                padding: 24px;
                text-align: center;
            }
        </style>
    </head>
    <body>
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
                       <th>Amortização</th>
                       <th>Juros</th>
                       <th>Saldo devedor</th>
                   </tr>
                   <% 
                    double juros = interest/100;
                    double parcela = loan * (Math.pow(1+juros, months)*juros)/(Math.pow(1+juros, months)-1);
                    for(int i = 0; i < months; i++) {    
                        double devedor = loan - parcela * i;
                        double valorJuros = devedor * juros;
                        DecimalFormat format = new DecimalFormat("#####.###");
                   %>
                   <tr>
                       <td><%= i+1 %></td>
                       <td><%= format.format(parcela) %></td>
                       <td><%= format.format(parcela - valorJuros) %></td>
                       <td><%= format.format(valorJuros) %></td>
                       <td><%= format.format(devedor) %></td>
                   </tr>
                   <% } %>
               </table>
        <% } %>
    </body>
</html>
