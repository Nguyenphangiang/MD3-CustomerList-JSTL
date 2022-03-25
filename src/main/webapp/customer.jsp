<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/25/2022
  Time: 2:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<style>
    table,td,th{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 50px;
        margin: 0;
    }
</style>
<body>
<%!
    List<Customer> customers = new ArrayList<>();
%>
<%
    customers.add(new Customer("Nguyen Cao Ky","30/10/1990","Ha Noi","https://www.google.com/imgres?imgurl=https%3A%2F%2Ffile.tinnhac.com%2Fresize%2F600x-%2F2021%2F11%2F18%2F20211118173603-d5e2.jpg&imgrefurl=https%3A%2F%2Ftinnhac.com%2Flich-su-8-meme-noi-tieng-dinh-dam-cua-viet-nam-tu-chi-im-di-den-70-tuoi-toi-chua-tung-thay-truong-hop-nay-148791.html&tbnid=QciHEV-2TPHUnM&vet=12ahUKEwi6n_eU6-D2AhVEZ5QKHXtZBPYQMygBegUIARC5AQ..i&docid=FbznJLAmXYUeOM&w=600&h=637&q=meme&ved=2ahUKEwi6n_eU6-D2AhVEZ5QKHXtZBPYQMygBegUIARC5AQ"));
    customers.add(new Customer("Tran Kim Nhat","10/9/1991","Hai Phong","https://i.bloganchoi.com/bloganchoi.com/wp-content/uploads/2020/10/meme-hai-huoc-moi-nhat-141.jpg?fit=400%2C20000&quality=95&ssl=1"));
    customers.add(new Customer("Sang A Pao","20/8/1992","Ha Giang","https://kenh14cdn.com/thumb_w/660/203336854389633024/2020/12/21/confusednickyoung-16085260310741369924969.jpg"));
    customers.add(new Customer("Nguyen Quoc Tuan","21/7/1993","Ha Noi","https://xuconcept.com/wp-content/uploads/2021/11/anh-meme-hai-huoc.jpg"));
    customers.add(new Customer("Hoang Cam Tu","1/6/1994","Ha Noi","https://kenh14cdn.com/2018/10/19/photo-1-15399608173151918722731.png"));
    request.setAttribute("customerList",customers);
%>
<table>
    <c:if test="${customerList.size() >= 5}">
        <p> co nhieu khach hang lam</p>
    </c:if>
    <tr>
        <td>Name</td>
        <td>Date Of Birth</td>
        <td>Address</td>
        <td>Picture</td>
    </tr>
    <c:forEach var = "customer" items="${customerList}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}" width="120" height="120"></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
