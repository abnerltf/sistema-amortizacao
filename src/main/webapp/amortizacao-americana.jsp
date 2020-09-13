<%-- 
    Document   : americana
    Created on : 11 de set de 2020, 23:09:44
    Author     : cassio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Calculo amortizacao americano</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Tabela de Amortização Americana</h1>
        
        <form>
            <label for="emprestimo">Empréstimo:</label><br>
            <input type="number" name="emprestimo"><br><br>
            
            <label for="juros">Taxa de Juros(%):</label><br>
            <input type="number" value="1" name="juros"><br><br>
            
            <label for="parcela">Período:</label><br>
            <input type="number" value="6" name="parcela"><br><br>
           
            
            <input type="submit" value="Calcular">
        </form>
            <% try{
                int n = Integer.parseInt(request.getParameter("parcela"));
                float emprestimo = Float.parseFloat(request.getParameter("emprestimo"));
                float juros = Float.parseFloat(request.getParameter("juros"))/100;
                float valor_juros = emprestimo*juros; %>
            
                <table  class="table">
                    <tr>
                        <th style="width:40px">n.</th>
                        <th>Parcela</th>
                        <th>Amortização</th>
                        <th>Juros(R$)</th>
                        <th>Saldo devedor</th>
                    </tr>
                
               <% for(int i=1; i<n; i++){%>
                    <tr>
                        <td><%= i%></td>
                        <td><%= valor_juros%></td>
                        <td><%= "0.0"%></td>
                        <td><%= valor_juros%></td>
                        <td><%= emprestimo%></td>
                    </tr>
                    <% }%>
                    
                    <tr>
                        <td><%= n %></td>
                        <td><%= emprestimo + valor_juros %></td>
                        <td><%= emprestimo%></td>
                        <td><%= valor_juros%></td>
                        <td>0.0</td>
                    </tr>
                    
                    <tr>
                        <td>-</td>
                        <td><%= emprestimo + (valor_juros*n) %></td>
                        <td><%= emprestimo%></td>
                        <td><%= valor_juros*n%></td>

                        <td><b>&#8656   TOTAIS</b></td> 
                    </tr>
                    
                    <td colspan="5"><b>PARCELA = AMORTIZAÇÃO + JUROS</b></td>
                </table>
            <%   
                
            } catch (Exception e) {int n = 0;
            }%>
            <br><br> 
            <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
