<%-- 
    Document   : amortizacao-americana
    Created on : 02/09/2018, 14:41:54
    Author     : Weslley
--%>

<%@page import="java.text.NumberFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Amortização Americana - Grupo 04</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container py-5 height-ajust">
            <div class="row">
                <div class="col-md-6">
                    <h1>Amortização Americana</h1>
                    <form action="amortizacao-americana.jsp" method="GET">
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
                        NumberFormat moeda = NumberFormat.getCurrencyInstance();
                        try {
                            int tempo = Integer.parseInt(request.getParameter("tempo"));
                            Double valor = Double.parseDouble(request.getParameter("valor"));
                            Double taxa = Double.parseDouble(request.getParameter("taxa"))/100;
                            double tj = 0;
                            double tp = 0;
                    %>
                    <h2>Resultado</h2>
                    <div class="table-responsive-sm">
                        <table class="table table-striped table-bordered mw-100">
                            <thead class="text-center">
                                <tr>
                                    <th>Mês</th>
                                    <th>Saldo Devedor</th>
                                    <th>Amortização</th>
                                    <th>Juros</th>
                                    <th>Prestação</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for (int i = 0; i <= tempo; i++) {%>
                                <tr>
                                    <td class="text-center"><%= i%></td>
                                    <td>
                                        <%-- Saldo Devedor --%>
                                        <% if (i == tempo) {%>
                                        <%= moeda.format(0)%>
                                        <%} else {%>
                                        <%=moeda.format(valor)%>
                                        <%}%>
                                    </td>
                                    <td>
                                        <%-- Amortização --%>
                                        <% if (i == tempo) {%>
                                        <%= moeda.format(valor)%>
                                        <% } else {%>
                                        <%= moeda.format(0)%>
                                        <% } %>
                                    </td>
                                    <td>
                                        <%-- Juros --%>
                                        <%if (i == 0) {%>
                                        <%= moeda.format(0)%>
                                        <%} else {%>
                                        <% tj = taxa * valor * tempo;%>
                                        <%= moeda.format(taxa * valor)%>
                                        <%--<%= (double)3/100 %>--%>
                                        <%}%>
                                    </td>
                                    <td>
                                        <%--Prestacao--%>
                                        <%if (i == 0) {%>
                                        <%= moeda.format(0)%>
                                        <% } else if (i < tempo) {%>
                                        <% tp = valor + tj;%>
                                        <%= moeda.format(taxa * valor)%>
                                        <%} else {%>
                                        <%= moeda.format(valor + (taxa * valor))%>
                                        <%}%>
                                    </td>
                                </tr>
                                <% }%>
                            <tfoot class="text-center">
                                <tr>
                                    <th colspan="2">TOTAL</th>
                                    <td><%=moeda.format(valor)%></td>
                                    <td><%=moeda.format(tj)%></td>
                                    <td><%=moeda.format(tp)%></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <%
                        } catch (Exception e) {
                            %>
                            <h3>Resultado</h3>
                            <%
                        }
                    %>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>