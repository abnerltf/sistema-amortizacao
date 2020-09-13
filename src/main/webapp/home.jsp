<!DOCTYPE html>
<html lang="en">
<head>
  <title>Atividade de Amortização</title>
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
      <p>Tabela SAA é a sigla para Sistema Americano de Amortização, é um sistema de amortização de dívidas onde os juros de um empréstimo são pagos periodicamente, porém a quitação do empréstimo se dá por meio de uma única parcela que deverá ser paga ao final do contrato. Há também a opção dos juros serem capitalizados e pagos juntos com o valor principal no final do contrato. Porém, nesse caso é preciso que seja especificado isso em contrato, caso contrário entende-se que os juros deverão ser pagos mensalmente.</p>
      <br>
      <h2>Constante</h2>
      <p>O sistema de amortização constante (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo. Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada prestação. O valor da amortização é calculado, dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas. Por sua vez, os juros são calculados sobre o saldo devedor, multiplicando-se a taxa pelo saldo. Finalmente, a soma da amortização e dos juros resultam no valor da parcela. </p>
      <h2>Price</h2>
      <p>Tabela Price é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. O método foi apresentado em 1771 por Richard Price em sua obra "Observações sobre Pagamentos Remissivos".</p>
      <p>A tabela Price usa o regime de juros compostos para calcular o valor das parcelas de um empréstimo e, dessa parcela, há uma proporção relativa ao pagamento de juros e amortização do valor emprestado.</p> 
    </div>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
