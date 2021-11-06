<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="course_details.aspx.cs" Inherits="FikrGroupCms.course_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <section class="header_internal_page">
        <div class="overlay">
            <h2>الدورات</h2>
        </div>
    </section>
    <!-- end_header_internal_page -->
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>
                            <!--start service-->
                            <div class="services_de internal_page">
                                <h2><%#Eval("ArTitle") %></h2>
                                <span class="date_de">
                                    <i class="fa fa-calendar-check-o"></i>
                                    <%#Eval("Date") %>
                                </span>
                                <img src="assets/images/team/2.jpg" class="img-thumbnail" alt="">
                                <p>
                                    <%#Eval("ArDescription") %>
                                </p>
                                <div class="col-md-12 text-center">
                                    <%--<a class="more transition" href="">اشترك الأن </a>--%>
                                </div>
                            </div>
                            <!--end service-->
                        </ItemTemplate>
                    </asp:ListView>

                    <%--    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="block_course">
                            <img src="assets/images/team/3.jpg" class="img-responsive">
                            <h3>يكتب العنوان هنا</h3>
                            <p>هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                النص هو مثال لنص يمكن أن يستبدل في
                            نفس المساحة .</p>
                            <span>السعر : 50 دولار</span>
                            <div class="col-md-12 text-center btn_bl">
                                <a class="more transition" href="course_details.html"> المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>--%>
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
