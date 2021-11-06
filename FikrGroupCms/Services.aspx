<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Personality.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <section class="header_internal_page">
        <div class="overlay">
            <h2>خدماتنا</h2>
        </div>
    </section>
    <!-- end_header_internal_page -->
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <!--start service-->
                    <div class="services internal_page">
                        <div class="row">
                            <asp:ListView ID="lstServices" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="single-service transition">
                                            <i class="fa fa-diamond"></i>
                                            <h4><%#Eval("ArTitle") %> </h4>

                                            <p>
                                                <%#Eval("ArDescription") %>
                                            </p>
                                            <a href="/service_details.aspx?id=<%#Eval("Id") %>">المزيد</a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                    <!--end service-->
                </div>
                <div class="col-md-4">
                    <div class="advertisement">
                        <div class="advertis">
                            <h4><i class="fa fa-television" aria-hidden="true"></i>أعلانات</h4>
                        </div>
                        <asp:ListView ID="lstAdvertise" runat="server">
                            <ItemTemplate>
                                <div class="img">
                                    <img src="<%#Eval("Image") %>">
                                </div>
                            </ItemTemplate>
                        </asp:ListView>

                        <div class="social-media">
                            <asp:ListView ID="lstSocial" runat="server">
                                <ItemTemplate>
                                    <a href="<%#Eval("Link") %>">
                                        <div class="fa <%#Eval("Icon") %>"></div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </div>
    <!--end wrapper-->

    <!-- //bootstrap-pop-up -->
</asp:Content>
