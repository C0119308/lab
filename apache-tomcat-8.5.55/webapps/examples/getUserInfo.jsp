<%@ page import="org.keycloak.KeycloakSecurityContext" %>
<%@ page import="org.keycloak.representations.IDToken" %>

<%

    KeycloakSecurityContext ksc = (KeycloakSecurityContext)session.getAttribute(KeycloakSecurityContext.class.getName());
    IDToken idToken = ksc.getIdToken();
%>

<ul>
<li>PREFERRED_USERNAME : <%=idToken.getPreferredUsername()%></li>
<li>EMAIL: <%=idToken.getEmail() %></li>
<li>GIVEN_NAME: <%=idToken.getGivenName()%></li>
<li>FAMILY_NAME: <%=idToken.getFamilyName()%></li>
</ul>

