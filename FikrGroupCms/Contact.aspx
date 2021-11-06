<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Personality.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <div class="big-title">
        <div class="container container-full">
            <div class="row">
                <div class="col-md-6 text-uppercase">
                    <h1>اتصل بنا</h1>
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
    <!-- end_header_internal_page -->
    <!-- ****************** CONTACT INFO ******************* -->
    <div class="padding-100">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="contact-info text-center">
                        <span class="pe-7s-map-marker"></span>
                        <h4>العنوان</h4>
                        <p id="spnAddress" runat="server"></p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="contact-info text-center">
                        <span class="pe-7s-call"></span>
                        <h4>الجوال</h4>
                        <p id="spnPhones" runat="server"></p>
                    </div>
                </div>

                <div class="col-sm-4">
                    <div class="contact-info text-center">
                        <span class="pe-7s-mail"></span>
                        <h4>البريد</h4>
                        <p id="spnEmail" runat="server"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ****************** GOOGLE MAP ******************* -->
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="internal_page contact_page">
                        <!-- map -->
                        <div class="form">
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label">الاسم</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input name="first_name" placeholder="الاسم" class="form-control" type="text" id="name" runat="server">
                                    </div>
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label">الايميل</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" placeholder="بريدك الالكترونى" class="form-control" type="text" id="email" runat="server">
                                    </div>
                                </div>
                                <asp:RegularExpressionValidator ValidationGroup="LocationInfoGroup" ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label">رقم التليفون</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input name="phone" placeholder="(+2)123 456 7980" class="form-control" type="text" id="phone" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group message_inbut_00">
                                <label for="comment">الرسالة</label>
                                <textarea class="form-control" rows="9" id="message" runat="server"></textarea>
                            </div>
                            <div class="form-group">
                                <asp:RequiredFieldValidator ValidationGroup="LocationInfoGroup" ID="RequiredFieldValidator3Ar"
                                    runat="server" ControlToValidate="message"
                                    ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                            </div>
                            <!-- Button -->
                            <div class="form-group">
                                <a href="#" class="more_00 transition btn btn-primary btn-block" validationgroup="LocationInfoGroup" runat="server" onserverclick="contactbtn_ServerClick">إرسال الأن</a>
                            </div>
                            <%-- </form>--%>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>

            </div>
        </div>

    </div>
    <!--end wrapper-->

</asp:Content>
