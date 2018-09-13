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
        <div class="container py-5">
            <div class="row">
                <div class="col-md-6">
                    <h1>Tabela Price</h1>
                    <form action="" method="GET">
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
                    <h2>Resultado</h2>
                    <div class="table-responsive-sm">
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
                                <tr>
                                    <td>1</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            <tfoot>
                                <tr>
                                    <th>TOTAL</th>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                    <td class="text-center"></td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
