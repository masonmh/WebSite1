<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="DocumentCreation.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Document Creation&nbsp;&nbsp;
    </h2>
    
    <p>
       Select the Form Below that you would like to print out.  Once selected, open the document and select your applicant or lease, save the created lease in the appropriate location and print out.  
       Modifications to the document are not permitted.</p>

<p><a href="./documents/AppVerification.doc">Rental Application Verification</a>
<p>
</p>
<p><a href="./documents/AppScreen.doc">Application Screening</a>
</p>
<p><a href="./documents/lease.doc">Cash Only Lease</a>
   </p>    
</asp:Content>