<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Index.Master" CodeBehind="gallery.aspx.cs" Inherits="FikrGroupCms.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- // HEADER -->
    <!-- ****************** PAGE HEADER ******************* -->
    <div class="big-title">
        <div class="container container-full">
            <div class="row">
                <div class="col-md-6 text-uppercase">
                    <h1>الصور والفيديوهات</h1>
                </div>
                <div class="col-md-6">
                    <%-- <ul class="bread_crumb pull-right">
                            <li><a href="#">Home</a></li>
                            <li>Gallery</li>
                        </ul>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- // PAGE HEADER -->
    <!-- ****************** PAGE CONTENT ******************* -->
    <div class="page-content padding-100">
        <div class="container-fluid">
            <asp:ListView ItemType="EF.IndexTB" ID="lstGallary" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 col-sm-6">
                        <div class="gallery-item">
                            <%# ((int)Eval("SectionId") == 3) ? "<img src="+Eval("Image")+" class='img-responsive' alt='' /> <div class='gallery-item-overlay'> <a href="+Eval("Image")+" class='prettyPhoto'><i class='fa fa-search'></i></a> </div>" : "<iframe width='100%' height='100%'src='https://www.youtube.com/embed/tgbNymZ7vqY'></iframe>" %>
                          <%--  <% if(  = 3) { %>
                            <img src="<%#Eval("Image") %>" class="img-responsive" alt="" />
                            <div class="gallery-item-overlay">
                                <a href="<%#Eval("Image") %>" class="prettyPhoto"><i class="fa fa-search"></i></a>
                            </div>
                            <%}%>--%>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </div>
    <!--// PAGE CONTENT -->
    <!-- ****************** FOOTER ******************* -->
    <!--start wrapper-->
    <%--<div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <!--start service-->
                    <div class="gallary_page internal_page">
                        <ul class="demo_navigation">
                            <asp:ListView ID="lstGallary" runat="server">
                                <ItemTemplate>
                                    <li class="col-md-4 col-xs-12">
                                        <a href="<%#Eval("Image") %>" data-imagelightbox="e">
                                         <img src="<%#Eval("Image") %>" class="img-responsive img-thumbnail"></a>
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>

                        </ul>
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

    </div>--%>
    <!--end wrapper-->
    <!-- //bootstrap-pop-up -->
</asp:Content>

