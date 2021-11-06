<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="budget.aspx.cs" Inherits="Personality.budget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ****************** PAGE HEADER ******************* -->
    <div class="big-title">
        <div class="container container-full">
            <div class="row">
                <div class="col-md-6 text-uppercase">
                    <h1>الميزانيات</h1>
                </div>
                <div class="col-md-6">
                    <%--<ul class="bread_crumb pull-right">
                            <li><a href="#">Home</a></li>
                            <li>Blog - Grid</li>
                        </ul>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- ****************** PAGE CONTENT ******************* -->
    <!-- ****************** PAGE CONTENT ******************* -->
    <div id="content" class="site-content">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="content-contain col-md-8">
                    <main class="content">
                        <table class="table table-striped table-bordered">
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                    <tr>
                                        <td style="text-align:center">
                                            <%#Eval("ArTitle") %>
                                        </td>
                                        <td style="width: 30%;text-align:center">
                                            <a href="<%#Eval("Link") %>" class="btn btn-primary">تحميل </a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                            </asp:ListView>
                        </table>
                    </main>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
    <!--// PAGE CONTENT -->
</asp:Content>
