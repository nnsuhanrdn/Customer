<%-- 
    Document   : GetRegistrationData
    Created on : Nov 14, 2023, 5:12:57 PM
    Author     : Nazsuha
--%>

    <%@ page import = "edu.my.unikl.code.Customer" %>
    <jsp:useBean id="customerId" scope="session" class="edu.my.unikl.code.Customer" />
    <jsp:setProperty name="customerId" property="*" />
    
    <html>
    <body>
        <h1>Entry Form - Please Enter Customer Information</h1>
         <%
            if (customerId.getCustIdentityD() == null) {
                out.println("Customer ID is required");
                return;
            }
        %>
            
            <p> Entered the following data </p>
            <p> CUSTOMER ID : <%= customerId.getCustIdentityD() %></p>
            <p> Discount code (Only M,N,K allowed): <%= customerId.getDiscountCode()%> </p><!-- comment -->
            <p> Name : <%= customerId.getName() %> </p>
            <p> Telephone: <%= customerId.getTelephone() %> </p>
            <p> Email: <%= customerId.getEmail() %> </p>
            <p> Fax: <%= customerId.getFax() %> </p>
            <p> Address Line 1: <%= customerId.getAddressLine1() %> </p>
            <p> Address Line 2: <%= customerId.getAddressLine2() %> </p>
            <p> City: <%= customerId.getCity() %> </p>
            <p>State: <%= customerId.getState() %></p>
            <p> Zip: <%= customerId.getZip() %> </p>
            <p> Credit Limit: <%= customerId.getCreditLimit() %> </p>

            <form action="StoreCustomer.jsp" method="POST">
                <input type="submit" value="Confirm" />
            </form>

    </body>
</html>
