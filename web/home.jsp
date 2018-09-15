<%-- 
    Document   : home
    Created on : 02/09/2018, 14:42:19
    Author     : Weslley
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Grupo 04</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container py-5 height-ajust">
            <div class="row">
                <div class="col-md-6">
                    <h1 class="display-3">Grupo 04</h1>
                    <article>
                        <h2>Projeto 02</h2>
                        <p>Esse projeto tem como objetivo possibilitar cálculos de amortização constante, amortização america e tabela price.</p>
                    </article>
                </div>
                <div class="col-md-6">
                    <h2>Integrantes</h2>
                    <ul class="list-group bg-white">
                        <li class="list-group-item">
                            <i class="fab fa-github-square"></i>
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHiSURBVFhH7da9SlxBGMbxxQgSSCFaaUxlqYXegV5AogkJAVG09zsmlbcQcgMiiCZN6pik0MJCL0G0EkEQBMXvwiTG/0POwMswJzNztNwHfnD2nHnf2d0zZ2dr9dSTmWeYxE/s4LKg4x+YgMY8eDqwiN/4G/ELGtuOB8kgLhCa7H9U8wL3ygz+IDRBCtVOo1IGcItQ4xx6E9nfhO65Fpdr8hFPMIb94twRtgs61jld0xiN/VSckzNkrQktIlcsw3B5jFAzndM1l1HYHgtIih4jf7VXuY9aP7aHno6kR3QKtlCeIze6736fcUTzHbZoDVWzDtvrG6LZhS2aRdW8g+2l3tGcwxbZBZibEdhe6h3NNWxR5R8S4i/EK0TjnnNnCVWzDNtrD9GswhYdoxm5acEJbK+kRfgBtki+oAGpeYSv8Pu8RzRPoR8NFWzhsDjeQB/UvCyN6Mcm7MSinm1IymeoSH8yVKTJXSNts3PwMw8tMjfOt4Lk6FvQBqJC7Qt6E9p09Fq7Wzf89MJOaGVvRspbaDvWvtADrQFN3IpQmhCaXD1eo1L0HKvBAYbQiS6UJTS59pZ75Q3c7XDKYsecovIn96P7p0V0A32qsuiaxmhs8orPiRbny3+HwbyCxtRTT2JqtTvjCPRG1o8EDAAAAABJRU5ErkJggg==">
                            <a href="https://github.com/caiofugii">Caio Fugii</a>
                        </li>
                        <li class="list-group-item">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHiSURBVFhH7da9SlxBGMbxxQgSSCFaaUxlqYXegV5AogkJAVG09zsmlbcQcgMiiCZN6pik0MJCL0G0EkEQBMXvwiTG/0POwMswJzNztNwHfnD2nHnf2d0zZ2dr9dSTmWeYxE/s4LKg4x+YgMY8eDqwiN/4G/ELGtuOB8kgLhCa7H9U8wL3ygz+IDRBCtVOo1IGcItQ4xx6E9nfhO65Fpdr8hFPMIb94twRtgs61jld0xiN/VSckzNkrQktIlcsw3B5jFAzndM1l1HYHgtIih4jf7VXuY9aP7aHno6kR3QKtlCeIze6736fcUTzHbZoDVWzDtvrG6LZhS2aRdW8g+2l3tGcwxbZBZibEdhe6h3NNWxR5R8S4i/EK0TjnnNnCVWzDNtrD9GswhYdoxm5acEJbK+kRfgBtki+oAGpeYSv8Pu8RzRPoR8NFWzhsDjeQB/UvCyN6Mcm7MSinm1IymeoSH8yVKTJXSNts3PwMw8tMjfOt4Lk6FvQBqJC7Qt6E9p09Fq7Wzf89MJOaGVvRspbaDvWvtADrQFN3IpQmhCaXD1eo1L0HKvBAYbQiS6UJTS59pZ75Q3c7XDKYsecovIn96P7p0V0A32qsuiaxmhs8orPiRbny3+HwbyCxtRTT2JqtTvjCPRG1o8EDAAAAABJRU5ErkJggg==">
                            <a href="https://github.com/mateusvidalmarinho">Mateus Vidal Marinho</a>
                        </li>
                        <li class="list-group-item">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHiSURBVFhH7da9SlxBGMbxxQgSSCFaaUxlqYXegV5AogkJAVG09zsmlbcQcgMiiCZN6pik0MJCL0G0EkEQBMXvwiTG/0POwMswJzNztNwHfnD2nHnf2d0zZ2dr9dSTmWeYxE/s4LKg4x+YgMY8eDqwiN/4G/ELGtuOB8kgLhCa7H9U8wL3ygz+IDRBCtVOo1IGcItQ4xx6E9nfhO65Fpdr8hFPMIb94twRtgs61jld0xiN/VSckzNkrQktIlcsw3B5jFAzndM1l1HYHgtIih4jf7VXuY9aP7aHno6kR3QKtlCeIze6736fcUTzHbZoDVWzDtvrG6LZhS2aRdW8g+2l3tGcwxbZBZibEdhe6h3NNWxR5R8S4i/EK0TjnnNnCVWzDNtrD9GswhYdoxm5acEJbK+kRfgBtki+oAGpeYSv8Pu8RzRPoR8NFWzhsDjeQB/UvCyN6Mcm7MSinm1IymeoSH8yVKTJXSNts3PwMw8tMjfOt4Lk6FvQBqJC7Qt6E9p09Fq7Wzf89MJOaGVvRspbaDvWvtADrQFN3IpQmhCaXD1eo1L0HKvBAYbQiS6UJTS59pZ75Q3c7XDKYsecovIn96P7p0V0A32qsuiaxmhs8orPiRbny3+HwbyCxtRTT2JqtTvjCPRG1o8EDAAAAABJRU5ErkJggg==">
                            <a href="https://github.com/Renansouza0161">Renan</a>
                        </li>
                        <li class="list-group-item">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHiSURBVFhH7da9SlxBGMbxxQgSSCFaaUxlqYXegV5AogkJAVG09zsmlbcQcgMiiCZN6pik0MJCL0G0EkEQBMXvwiTG/0POwMswJzNztNwHfnD2nHnf2d0zZ2dr9dSTmWeYxE/s4LKg4x+YgMY8eDqwiN/4G/ELGtuOB8kgLhCa7H9U8wL3ygz+IDRBCtVOo1IGcItQ4xx6E9nfhO65Fpdr8hFPMIb94twRtgs61jld0xiN/VSckzNkrQktIlcsw3B5jFAzndM1l1HYHgtIih4jf7VXuY9aP7aHno6kR3QKtlCeIze6736fcUTzHbZoDVWzDtvrG6LZhS2aRdW8g+2l3tGcwxbZBZibEdhe6h3NNWxR5R8S4i/EK0TjnnNnCVWzDNtrD9GswhYdoxm5acEJbK+kRfgBtki+oAGpeYSv8Pu8RzRPoR8NFWzhsDjeQB/UvCyN6Mcm7MSinm1IymeoSH8yVKTJXSNts3PwMw8tMjfOt4Lk6FvQBqJC7Qt6E9p09Fq7Wzf89MJOaGVvRspbaDvWvtADrQFN3IpQmhCaXD1eo1L0HKvBAYbQiS6UJTS59pZ75Q3c7XDKYsecovIn96P7p0V0A32qsuiaxmhs8orPiRbny3+HwbyCxtRTT2JqtTvjCPRG1o8EDAAAAABJRU5ErkJggg==">
                            <a href="https://github.com/samaraoliveiram">Samara</a>
                        </li>
                        <li class="list-group-item">
                            <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHiSURBVFhH7da9SlxBGMbxxQgSSCFaaUxlqYXegV5AogkJAVG09zsmlbcQcgMiiCZN6pik0MJCL0G0EkEQBMXvwiTG/0POwMswJzNztNwHfnD2nHnf2d0zZ2dr9dSTmWeYxE/s4LKg4x+YgMY8eDqwiN/4G/ELGtuOB8kgLhCa7H9U8wL3ygz+IDRBCtVOo1IGcItQ4xx6E9nfhO65Fpdr8hFPMIb94twRtgs61jld0xiN/VSckzNkrQktIlcsw3B5jFAzndM1l1HYHgtIih4jf7VXuY9aP7aHno6kR3QKtlCeIze6736fcUTzHbZoDVWzDtvrG6LZhS2aRdW8g+2l3tGcwxbZBZibEdhe6h3NNWxR5R8S4i/EK0TjnnNnCVWzDNtrD9GswhYdoxm5acEJbK+kRfgBtki+oAGpeYSv8Pu8RzRPoR8NFWzhsDjeQB/UvCyN6Mcm7MSinm1IymeoSH8yVKTJXSNts3PwMw8tMjfOt4Lk6FvQBqJC7Qt6E9p09Fq7Wzf89MJOaGVvRspbaDvWvtADrQFN3IpQmhCaXD1eo1L0HKvBAYbQiS6UJTS59pZ75Q3c7XDKYsecovIn96P7p0V0A32qsuiaxmhs8orPiRbny3+HwbyCxtRTT2JqtTvjCPRG1o8EDAAAAABJRU5ErkJggg==">
                            <a href="https://github.com/wesreimberg">Weslley Reimberg</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
