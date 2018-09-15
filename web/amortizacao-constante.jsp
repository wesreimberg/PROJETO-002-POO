<%-- 
    Document   : amortizacao-constante
    Created on : 02/09/2018, 14:42:08
    Author     : Weslley
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Amortização Constante - Grupo 04</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container py-5">
            <div class="row">
                <div class="col-md-6">
                    <h1>Amortização Constante</h1>
                    <form action="amortizacao-constante.jsp" method="GET">
                        <div class="form-group">
                            <label for="valor">Valor do empréstimo (R$): </label>
                            <input class="form-control" id="valor" type="number" step=".01" name="valor" placeholder="Digite o Empréstimo em Reais (R$)" title="Digite o Empréstimo em Reais (R$)" required>
                        </div>
                        <div class="form-group">
                            <label for="taxa">Taxa de juros (%): </label>
                            <input class="form-control" id="taxa" type="number" step=".01" name="taxa" placeholder="Digite a taxa em Porcentagem (%)" title="Digite a taxa em Porcentagem (%)" required>
                        </div>
                        <div class="form-group">
                            <label for="tempo">Tempo (Meses): </label>
                            <input class="form-control" id="tempo" type="number" step="1" name="tempo" placeholder="Digite o tempo em Meses" title="Digite o tempo em Meses" required>
                        </div>
                        <div class="form-group text-center">
                            <a class="btn btn-lg btn-default"  href="/PROJETO-002-POO/amortizacao-constante.jsp">Limpar</a>
                            <button class="btn btn-dark" texttype="submit" name="calcular">Calcular</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <h2>Resultado</h2>
                    <div class="table-responsive-sm">
                        <%  if(request.getParameter("calcular")!=null){
                                out.print("<table class = \"table table-striped table-bordered mw-100\">"
                                        + "<thead>"
                                        + "<tr>"
                                        + "<th class=\"text-center\">#</th>"
                                        + "<th class=\"text-center\">Prestação</th>"
                                        + "<th class=\"text-center\">Juros</th>"
                                        + "<th class=\"text-center\">Amortização</th>"
                                        + "<th class=\"text-center\">Saldo Devedor</th>"
                                        + "</tr></thead><tr>");
                                
                                    int tempo = Integer.parseInt(request.getParameter("tempo"));
                                    double juros = Double.parseDouble(request.getParameter("taxa"));
                                    double valor = Double.parseDouble(request.getParameter("valor"));
                                    double saldo;
                                    double amortizacao = valor/tempo;
                                    double prestacao = 0;
                                    double result1 = 0, result2 = 0, result3 = 0;
                                    DecimalFormat f = new DecimalFormat("###,###.##");
                                    //double saldo = 0;
                                    for (int i = 0; i < tempo; i++) {
                                        saldo = valor - (i * amortizacao);
                                        prestacao = amortizacao + (juros/100)*saldo;
                                        //saldo = valor-prestacao;
                                        out.print("<td>"+(i+1)+"</td>");
                                        out.print("<td>"+f.format(prestacao)+"</td>");
                                        out.print("<td>"+f.format(saldo*(juros/100))+"</td>");
                                        out.print("<td>"+f.format(amortizacao)+"</td>");
                                        out.print("<td>"+f.format(saldo-amortizacao)+"</td></tr>");
                                        result1 += prestacao;
                                        result2 += saldo*(juros/100);
                                        result3 +=amortizacao;
                                        
                                    }
                                    out.print("<tr><td>>></td><td>"+f.format(result1)+"</td>");
                                    out.print("<td>"+f.format(result2)+"</td>");
                                    out.print("<td>"+f.format(result3)+"</td>");
                                    out.print("<td>Total</td></tr>");
                                    out.print("</table>");
                        }  
                        %>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
