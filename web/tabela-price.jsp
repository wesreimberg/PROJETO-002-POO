<%-- 
    Document   : tabela-price
    Created on : 02/09/2018, 14:41:37
    Author     : Weslley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Tabela Price - Grupo 04</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container py-5 height-ajust">
            <div class="row">
                <div class="col-md-6">
                    <h1>Tabela Price</h1>
                    <form action="tabela-price.jsp" method="GET">
                        <div class="form-group">
                            <label for="valor">Valor do empréstimo (R$): </label>
                            <input class="form-control" id="valor" type="number" step="0.5" name="valor" placeholder="Digite o Empréstimo em Reais (R$)" title="Digite o Empréstimo em Reais (R$)" required>
                        </div>
                        <div class="form-group">
                            <label for="taxa">Taxa de juros (%): </label>
                            <input class="form-control" id="taxa" type="number" step="0.5" name="taxa" placeholder="Digite a taxa em Porcentagem (%)" title="Digite a taxa em Porcentagem (%)" required>
                        </div>
                        <div class="form-group">
                            <label for="tempo">Tempo (Meses): </label>
                            <input class="form-control" id="tempo" type="number" step="1" name="tempo" placeholder="Digite o tempo em Meses" title="Digite o tempo em Meses" required>
                        </div>
                        <div class="form-group text-center">
                            <button class="btn btn-lg btn-default" type="reset">Limpar Campos</button>
                            <button class="btn btn-lg btn-dark" type="submit">Calcular</button>
                        </div>
                    </form>
                </div>
                <div class="col-md-6">
                    <%
                        double Capital = 0;
                        double Taxa = 0;
                        double Saldodevedor = 0;
                        double Amortizacao = 0;
                        double Prestacao = 0;
                        int Tempo = 0;

                        try {
                            Capital = Double.parseDouble(request.getParameter("valor"));
                        } catch (Exception e) {

                        }
                        try {
                            Taxa = Double.parseDouble(request.getParameter("taxa"));
                        } catch (Exception e) {
                        }
                        try {
                            Tempo = Integer.parseInt(request.getParameter("tempo"));
                        } catch (Exception e) {
                        }
                        Taxa = Taxa / 100;
                        double Linha1 = Capital * Taxa;
                        double x = Math.pow((1 + Taxa), Tempo);
                        double Linha2 = 1 - (1 / x);
                        double totalPrestacao = 0;
                        double totalJuros = 0;
                        double totalAmortizacao = 0;
                        double totalSaldoDevedor = 0;
                    %>
                    <h2>Resultado</h2>
                    <div class="table-responsive-sm">
                        <%if (Capital > 0 && Tempo > 0 && Taxa > 0) {%>
                        <table class="table table-striped table-bordered mw-100">
                            <thead>
                                <tr>
                                    <th>Mês</th>
                                    <th class="text-center">Prestação</th>
                                    <th class="text-center">Juros</th>
                                    <th class="text-center">Amortização</th>
                                    <th class="text-center">Saldo Devedor</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%for (int i = 0; i <= Tempo; i++) {
                                    
                                        double Juros = 0;

                                        if (i == 0) {
                                            Saldodevedor = Capital;
                                            Prestacao = 0;
                                            Juros = 0;
                                            Amortizacao = 0;
                                        } else {
                                            Prestacao = Linha1 / Linha2;
                                            Juros = Saldodevedor * Taxa;
                                            Saldodevedor = (Saldodevedor + Juros) - Prestacao;
                                            Amortizacao = Prestacao - Juros;
                                        }
                                        totalPrestacao += Prestacao;
                                        totalJuros += Juros;
                                        totalAmortizacao += Amortizacao;
                                        totalSaldoDevedor += Saldodevedor;
                                %>                
                                <tr>
                                    <td><%=i%></td>
                                    <td><%=String.format("R$ %.2f", Prestacao)%></td>
                                    <td><%=String.format("R$ %.2f", Juros)%></td>
                                    <td><%=String.format("R$ %.2f", Amortizacao)%></td>
                                    <td><%=String.format("R$ %.2f", Saldodevedor)%></td>
                                </tr>
                                <%}%>
                            <tfoot class="text-center"
                                <tr>
                                    <th>TOTAL</th>
                                    <td><%=String.format("R$ %.2f", totalPrestacao)%></td>
                                    <td><%=String.format("R$ %.2f", totalJuros)%></td>
                                    <td><%=String.format("R$ %.2f", totalAmortizacao)%></td>
                                    <td><%=String.format("R$ %.2f", totalSaldoDevedor)%></td>
                                </tr>
                            </tfoot>
                        </table>
                        <% } %>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
