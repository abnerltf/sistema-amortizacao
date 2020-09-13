<!DOCTYPE html>
<html lang="en">
<head>
  <title>Atividade de Amortiza��o</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
      .content {
          text-align: justify;
      }
      .navbar-collapse {
          justify-content: center;
      }
  </style>
</head>
<body>
    
    <%@include file="WEB-INF/jspf/header.jspf" %>

 <div class="col-sm-10 content">
      <h2>Americana</h2>
      <p>Tabela SAA � a sigla para Sistema Americano de Amortiza��o, � um sistema de amortiza��o de d�vidas onde os juros de um empr�stimo s�o pagos periodicamente, por�m a quita��o do empr�stimo se d� por meio de uma �nica parcela que dever� ser paga ao final do contrato. H� tamb�m a op��o dos juros serem capitalizados e pagos juntos com o valor principal no final do contrato. Por�m, nesse caso � preciso que seja especificado isso em contrato, caso contr�rio entende-se que os juros dever�o ser pagos mensalmente.</p>
      <br>
      <h2>Constante</h2>
      <p>O sistema de amortiza��o constante (SAC) � uma forma de amortiza��o de um empr�stimo por presta��es que incluem os juros, amortizando assim partes iguais do valor total do empr�stimo. Neste sistema o saldo devedor � reembolsado em valores de amortiza��o iguais. Desta forma, no sistema SAC o valor das presta��es � decrescente, j� que os juros diminuem a cada presta��o. O valor da amortiza��o � calculado, dividindo-se o valor do principal pelo n�mero de per�odos de pagamento, ou seja, de parcelas. Por sua vez, os juros s�o calculados sobre o saldo devedor, multiplicando-se a taxa pelo saldo. Finalmente, a soma da amortiza��o e dos juros resultam no valor da parcela. </p>
      <h2>Price</h2>
      <p>Tabela Price � um m�todo usado em amortiza��o de empr�stimo cuja principal caracter�stica � apresentar presta��es (ou parcelas) iguais. O m�todo foi apresentado em 1771 por Richard Price em sua obra "Observa��es sobre Pagamentos Remissivos".</p>
      <p>A tabela Price usa o regime de juros compostos para calcular o valor das parcelas de um empr�stimo e, dessa parcela, h� uma propor��o relativa ao pagamento de juros e amortiza��o do valor emprestado.</p> 
    </div>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
