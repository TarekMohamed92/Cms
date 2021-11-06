<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="Personality.Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ****************** PAGE HEADER ******************* -->
    <div class="big-title">
        <div class="container container-full">
            <div class="row">
                <div class="col-md-6 text-uppercase">
                    <h1>المشاريع</h1>
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
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <article class="post type-post status-publish sticky blog-entry">
                                    <div class="post-table">
                                        <div class="post-table-sub-content">
                                        </div>
                                        <div class="post-table-content">
                                            <div class="post-thumb">
                                                <a href="#">
                                                    <img src="<%#Eval("Image") %>" class="img-responsive" alt="" /></a>
                                            </div>
                                            <div class="blog-entry-meta">
                                                <span class="author vcard"><i class="fa fa-user"></i>الادمن</span>
                                            </div>
                                            <%-- <header class="blog-entry-header" style="visibility:hidden">--%>
                                            <h4 class="blog-entry-title"><%#Eval("ArTitle") %></h4>
                                            <br />
                                            <%--</header>--%>
                                            <div class="blog-entry-content">
                                                <p>
                                                    <%#Eval("ArDescription") %>
                                                </p>
                                            </div>
                                            <div>
                                                <a class="bttn skin-white" style="background: #1674D1;color: #FFF !important;" href="#" onclick="return openModal(this);" data-text="<%#Eval("id") %>">تبرع لصالح المشروع</a>
                                            </div>
                                        </div>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:ListView>
                    </main>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
    <!--// PAGE CONTENT -->
</asp:Content>
