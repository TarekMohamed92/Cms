<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="service_details.aspx.cs" Inherits="FikrGroupCms.service_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <section class="header_internal_page">
        <div class="overlay">
            <h2>الدورات</h2>
        </div>
    </section>
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <!--start service-->
                    <asp:ListView ID="lstServices" runat="server">
                        <ItemTemplate>
                            <!--start service-->
                            <div class="services_de internal_page">
                                <h2><%#Eval("ArTitle") %></h2>
                                <img src="<%#Eval("Image") %>" class="img-thumbnail" alt="">
                                <p>
                                    <%#Eval("ArDescription") %>
                                </p>
                            </div>
                            <!--end service-->
                        </ItemTemplate>
                    </asp:ListView>

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

</asp:Content>
