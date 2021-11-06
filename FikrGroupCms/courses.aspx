<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="courses.aspx.cs" Inherits="Personality.Products" %>

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
                    <div class="internal_page">
                        <asp:ListView ID="ListView1" runat="server">
                            <ItemTemplate>
                                <div class="col-md-4">
                                    <div class="block_course">
                                        <img src="<%#Eval("Image") %>" class="img-responsive">
                                        <h3><%#Eval("ArTitle") %></h3>
                                        <p>
                                            <%#Eval("ArDescription") %>
                                        </p>
                                        <span>السعر : <%#Eval("Icon") %> دولار</span>
                                        <div class="col-md-12 text-center btn_bl">
                                            <a class="more transition" href="/course_details.aspx?id=<%#Eval("Id") %>">المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
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
