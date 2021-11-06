<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Personality.details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <!-- ****************** PAGE HEADER ******************* -->
            <div class="big-title">
                <div class="container container-full">
                    <div class="row">
                        <div class="col-md-6 text-uppercase">
                            <h1>تفاصيل</h1>
                        </div>
                        <div class="col-md-6">

                        </div>
                    </div>
                </div>
            </div>
            <!-- ****************** PAGE HEADER ******************* -->
            <!-- ****************** PAGE CONTENT ******************* -->
            <div id="content" class="site-content single-post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <article class="post type-post blog-entry">
                                    <div class="blog-entry-content">
                                        <div class="post-thumb">
                                            <a href="#">
                                                <img width="770" height="494" src="<%#Eval("Image") %>" class="img-responsive" alt="" /></a>
                                        </div>
                                        <div class="blog-entry-meta">
                                            <span class="categories-links">
                                                <i class="fa fa-clock-o"></i>
                                                <%#Eval("Date") %>  </span>
                                            <span class="author vcard"><i class="fa fa-user"></i>الادمن</span>
                                        </div>
                                        <hr>
                                        <h3 class="blog-entry-title"><%#Eval("ArTitle") %></h3>
                                        <div class="blog-entry-content">
                                            <p><%#Eval("ArDescription") %></p>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- ****************** PAGE CONTENT ******************* -->
            <!-- ****************** FOOTER ******************* -->
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
