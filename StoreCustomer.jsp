<%-- 
    Document   : StoreCustomer
    Created on : Nov 14, 2023, 5:13:28 PM
    Author     : Nazsuha
--%>

<%@ page import = "edu.my.unikl.code.Customer" %>
<jsp:useBean id="customerId" scope="session" class="edu.my.unikl.code.Customer"/>
<jsp:useBean id="storeCustomerId" scope="application" class="edu.my.unikl.code.Customer" />
<html>
    <body>
        <%
            storeCustomerId.storeCustomer(customerId);
            out.println(customerId.getCustIdentityD() + "is now registered in the database");
            out.close();
        %>
    </body>
</html>
