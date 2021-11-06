<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="Personality.Success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-xs-center">
        <h1 class="display-3 text-center" style="color:#27ae60">شكرا  لك </h1>
        <p class="lead text-center"><strong>عملية التبرع تمت بنجاح  </strong> </p>
        <p class="text-center " style="font-size: 15px;">عملية رقم <span style="color:red"><%= Request.QueryString["paymentId"].ToString()%></span></p>
        <hr>
        
        <p class="lead text-center">
            <a class="btn btn-primary btn-sm" href="/index.aspx" role="button">الصفحة الرئيسية</a>
        </p>
    </div>
</asp:Content>
