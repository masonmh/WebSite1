<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Home.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Rental Screening &amp; Application database&nbsp;&nbsp;
    </h2>
    <p>
        Please select from the following options:</p>
<p>
    <p>
        <a href="newapplicant.aspx"
            title="Screening Management">New Applicant S</a><a href="newapplicant.aspx">creening</a></p>
            <p>
        <a href="ScreeningFormStatus.aspx"
            title="Application Status">Application Status</a>.
    </p>
            <p>
        <a href="leaseinput.aspx"
            title="Create Lease">Create Lease</a>.
    </p>

    <p>
        <a href="DocumentCreation.aspx"
            title="Document Creation">Document Creation</a>.
    </p>
     <p>
    <a href="AdministrativeManagement.aspx"
            title="App and Lease Approval">App and Lease Approval</a>.
    </p>
    <p>
    <a href="TenantManagement.aspx"
            title="Tenant Management">Tenant Management</a>.
    </p>
<p>
        <a href="PropertyManagement.aspx"
            title="Property Management">Property Management</a>.
    </p>
</asp:Content>