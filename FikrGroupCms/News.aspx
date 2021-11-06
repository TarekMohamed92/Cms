<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Personality.News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ****************** PAGE HEADER ******************* -->
    <div class="big-title">
        <div class="container container-full">
            <div class="row">
                <div class="col-md-6 text-uppercase">
                    <h1>الفعاليات</h1>
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
    <div id="content" class="site-content">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="content">
                        <div>
                            <div class="blog-entry-content">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="wpb_wrapper">
                                            <div class="postcontent-type02">
                                                <asp:ListView ID="ListView1" runat="server">
                                                    <ItemTemplate>
                                                        <article class="col-md-6 post type-post blog-entry">
                                                            <div class="post-thumb">
                                                                <img src="<%#Eval("Image") %>" class="img-responsive" alt="" />
                                                            </div>
                                                            <div class="postcontent-gird">
                                                                <div class="postcontent-gird-content">
                                                                    <div class="blog-entry-meta">
                                                                        <%--<span class="categories-links"><i class="fa fa-folder-open"></i><a href="./blog.html">Anything</a>, <a href="./blog.html">Business</a> </span>--%>
                                                                        <span class="author vcard"><i class="fa fa-user"></i>الادمن</span>
                                                                    </div>
                                                                    <header class="blog-entry-header">
                                                                        <h5 class="blog-entry-title"><a href="details.aspx?id=<%#Eval("Id") %>" rel="bookmark"><%#Eval("ArTitle") %></a></h5>
                                                                    </header>
                                                                    <div class="blog-entry-content">
                                                                        <p> <%#Eval("ArDescription").ToString().Length <= 100 ? Eval("ArDescription") : Eval("ArDescription").ToString().Substring(0, 100)+"..." %></p>
                                                                    </div>
                                                                </div>
                                                                <div class="postcontent-gird-bottom">
                                                                    <span><i class="fa fa-clock-o"></i><%#Eval("Date") %></span>
                                                                    <%--<span class="comments-counts"><i class="fa fa-comment"></i>3 Comments</span>--%>
                                                                </div>
                                                            </div>
                                                        </article>

                                                    </ItemTemplate>
                                                </asp:ListView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--// PAGE CONTENT -->
</asp:Content>
