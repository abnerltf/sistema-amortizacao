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
            
                <table style="width:30%" border="1" align="center">
                    <tr>
                        <th style="width:40px">n.</th>
                        <th>Parcela</th>
                        <th>Amortização</th>
                        <th>Juros(R$)</th>
                        <th>Saldo devedor</th>
                    </tr>
                
               <% for(int i=1; i<n; i++){%>
                    <tr>
                        <td align="center"><%= i%></td>
                        <td align="center"><%= valor_juros%></td>
                        <td align="center"><%= "0.0"%></td>
                        <td align="center"><%= valor_juros%></td>
                        <td align="center"><%= emprestimo%></td>
                    </tr>
                    <% }%>
                    
                    <tr>
                    <td align="center"><%= n %></td>
                            <td align="center"><%= emprestimo + valor_juros %></td>
                            <td align="center"><%= emprestimo%></td>
                            <td align="center"><%= valor_juros%></td>
                            <td align="center">0.0</td>
                    </tr>
                    
                    <tr>
                            <td align="center">-</td>
                            <td align="center"><%= emprestimo + (valor_juros*n) %></td>
                            <td align="center"><%= emprestimo%></td>
                            <td align="center"><%= valor_juros*n%></td>
                            
                            <td align="center"><b>&#8656   TOTAIS</b></td>
                            
                    </tr><td align="center" colspan="5"><b>PARCELA = AMORTIZAÇÃO + JUROS</b></td>
                </table>
            <%   
                
            } catch (Exception e) {int n = 0;
            }%>
            <br><br>
        <a href="index.jsp">Voltar</a>  
    </body>
</html>
