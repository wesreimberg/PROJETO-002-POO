<%-- 
    Document   : CalcPrice
    Created on : 15/09/2018, 01:45:30
    Author     : Weslley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                            double Capital = 0;
                            double Taxa = 0;
                            double Saldodevedor = 0;
                            double Amortizacao = 0;
                            double Prestacao = 0;
                            int Tempo = 0;

                            try {
                                Capital = Double.parseDouble(request.getParameter("txtcapital"));
                            } catch (Exception e) {

                            }
                            try {
                                Taxa = Double.parseDouble(request.getParameter("txtjuros"));
                            } catch (Exception e) {
                            }
                            try {
                                Tempo = Integer.parseInt(request.getParameter("txtmeses"));
                            } catch (Exception e) {
                            }
                            Taxa = Taxa / 100;
                            double Linha1 = Capital * Taxa;
                            double x = Math.pow((1 + Taxa), Tempo);
                            double Linha2 = 1 - (1 / x);

                        %>


 <%if (Capital > 0 && Tempo > 0 && Taxa > 0) {%>
            <table border="1" class="tabela table">
                <thead class="thead-dark">
                <th>Total de Parcelas</th>
                <th>Saldo Devedor</th>
                <th>Valor da Prestação</th>
                <th>Juros</th>
                <th>Amortização</th>
                </thead>
                <%for (int i = 1; i <= Tempo; i++) {

                        double Juros = 0;

                        if (i == 1) {
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
                %>                
                <tr>
                    <td><%=i%></td>
                    <td><%=String.format("R$ %.2f", Saldodevedor)%></td>
                    <td><%=String.format("R$ %.2f", Prestacao)%></td>
                    <td><%=String.format("R$ %.2f", Juros)%></td>
                    <td><%=String.format("R$ %.2f", Amortizacao)%></td>
                </tr>
                <%}%>
                <%}%>
            </table>
    </body>
</html>
