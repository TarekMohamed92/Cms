<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Index.Master" CodeBehind="consulting.aspx.cs" Inherits="FikrGroupCms.consulting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- header_internal_page -->
<section class="header_internal_page">
    <div class="overlay">
        <h2>الأستشارات</h2>
    </div>
</section>
<!-- end_header_internal_page -->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <!--start service-->
                                   <!--start consultation-->
               <section class="consultation internal_page">
                <div class="row">
                    <div class="col-md-12">
                        <div class="fqa">
                            <div class="panel-group" id="accordion">
                                <asp:ListView ID="lstConsult" runat="server">
                                            <ItemTemplate>
                                                <div class="panel panel-default" >
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%#Container.DisplayIndex%>"><%#Eval("ArTitle") %></a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapse<%#Container.DisplayIndex%>" class="panel-collapse collapse ">
                                                        <div class="panel-body">
                                                            <%#Eval("ArDescription") %>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </ItemTemplate>
                                        </asp:ListView>
<%--                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">أستشاره
                                            1</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse in">
                                        <div class="panel-body"> هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                            المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                            نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                            النص هو مثال لنص يمكن أن يستبدل في
                                            نفس المساحة .
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">أستشاره
                                            2</a>
                                        </h4>
                                    </div>
                                    <div id="collapse2" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص
                                            يمكن أن يستبدل في
                                            نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                            النص هو مثال لنص يمكن أن يستبدل في
                                            نفس المساحة .
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">أستشاره
                                            3</a>
                                        </h4>
                                    </div>
                                    <div id="collapse3" class="panel-collapse collapse">
                                        <div class="panel-body"> هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                            المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                            نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                            النص هو مثال لنص يمكن أن يستبدل في
                                            نفس المساحة .
                                        </div>
                                    </div>
                                </div>--%>
                            </div>

                        </div>
                    </div>
                    
                    </div>
                </section>
                <!--end consultation-->
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
