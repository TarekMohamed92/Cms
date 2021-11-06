<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Personality.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- /banner -->
<%--    <div class="banner1">
        <div class="wthree_banner1_info">
            <h3><span>نبذة </span>عن الشركة</h3>
        </div>
    </div>--%>
        <div class="big-title">
        <div class="container container-full">
            <div class="row">
                <div class="col-md-6 text-uppercase">
                    <h1>من نحن</h1>
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
    <!-- //banner -->
    <!-- courses -->
    <div class="team">
        <div class="container">
            <div class="w3_agile_team_grid">
                <div class="w3_agile_team_grid_left">
                    <br /><br />
                    <h3 class="w3l_header w3_agileits_header" id="htitle" runat="server">لمحة عن الشركة</h3>
                    <p class="sub_para_agile"></p>
                </div>
            </div>
            <div class="agile_team_grids_top">
                <div class="col-md-12 w3ls_banner_bottom_left w3ls_courses_left">
                    <div class="w3ls_courses_left_grids">
                        <div class="w3ls_courses_left_grid">
                            <h3></h3>
                            <p id="ptext" runat="server"></p>
                        </div>
                        <div class="w3ls_courses_left_grid">
                            <h3></h3>
                            <p></p>
                        </div>
                        <div class="w3ls_courses_left_grid">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                </div>
                <%--<div class="col-md-6 agileits_courses_right">
                    <img src="" id="imgcareer" runat="server" alt=" " class="img-responsive" />
                </div>--%>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //courses -->

    <!-- bootstrap-pop-up -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    Funding
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <section>
                    <div class="modal-body">
                        <img src="images/10.jpg" alt=" " class="img-responsive" />
                        <p>
                            Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i>
                        </p>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up -->

    <!-- stats-bottom-banner -->
     <div class="stats-bottom-banner">
        <div class="container">
            <h3 id="hsectiontitle" runat="server"></h3>
            <p id="psectiondescription" runat="server">
            </p>
        </div>
    </div>
    <!-- //stats-bottom-banner -->
    <!-- bootstrap-pop-up -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="signin-form profile">

                    <div class="modal-body">
                        <img src="images/g1.jpg" alt=" " class="img-responsive" />
                        <p>
                            Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up -->
</asp:Content>
