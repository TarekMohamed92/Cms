<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start main slider-->
    <!-- // HEADER -->
    <!-- ****************** SLIDER REVOLUTION ******************* -->
    <div class="slider-content">
        <div id="rev_slider_11_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container bg-dark-gray">
            <!-- START REVOLUTION SLIDER 5.1.3 auto mode -->
            <div id="rev_slider_11_1" class="rev_slider fullwidthabanner" style="display: none;"
                data-version="5.1.3">
                <ul>
                    <asp:ListView ID="lstSlider" runat="server">
                        <ItemTemplate>
                            <li data-index="rs-<%#Eval("Id") %>"
                                data-transition="fade"
                                data-slotamount="default"
                                data-easein="default"
                                data-easeout="default"
                                data-masterspeed="default"
                                data-thumb="<%#Eval("Image") %>"
                                data-delay="11980"
                                data-rotate="0"
                                data-saveperformance="off"
                                data-title="Slide"
                                data-description="">
                                <!-- MAIN IMAGE -->
                                <img src="<%#Eval("Image") %>" alt="" width="1920" height="600"
                                    data-bgposition="center center"
                                    data-bgfit="cover"
                                    data-bgrepeat="no-repeat"
                                    data-bgparallax="off" class="rev-slidebg"
                                    data-no-retina>
                                <!-- LAYERS -->
                                <!-- LAYER NR. 1 -->
                                <div class="tp-caption Fashion-BigDisplay  " id="slide-29-layer-2"
                                    data-x="['center','center','center','center']"
                                    data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']"
                                    data-voffset="['-98','-98','-121','-125']"
                                    data-fontsize="['50','50','50','30']"
                                    data-width="['680','677','677','454']"
                                    data-height="['none','none','none','56']"
                                    data-whitespace="normal"
                                    data-transform_idle="o:1;"
                                    data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;s:1000;e:Power2.easeOut;"
                                    data-transform_out="opacity:0;s:1000;s:1000;"
                                    data-mask_in="x:0px;y:0px;"
                                    data-start="1000"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-responsive_offset="off"
                                    data-responsive="off"
                                    data-end="11000" style="z-index: 5; min-width: 680px; max-width: 680px; white-space: normal; font-size: 50px; line-height: 55px; color: rgba(255, 255, 255, 1.00); font-family: Lato; text-align: center; letter-spacing: 0.15em;">
                                    <span style="color: #1573D1"></span><%#Eval("ArTitle") %>
                                </div>
                                <div class="tp-caption Fashion-BigDisplay   " id="slide-29-layer-3"
                                    data-x="['center','center','center','center']"
                                    data-hoffset="['0','0','0','0']"
                                    data-y="['middle','middle','middle','middle']"
                                    data-voffset="['0','-8','0','-6']"
                                    data-fontsize="['20','22','22','14']"
                                    data-lineheight="['28','30','30','30']"
                                    data-fontweight="['400','400','400','300']"
                                    data-width="['843','834','625','272']"
                                    data-height="['57','none','101','122']"
                                    data-whitespace="normal"
                                    data-transform_idle="o:1;"
                                    data-transform_in="z:0;rX:0deg;rY:0;rZ:0;sX:2;sY:2;skX:0;skY:0;opacity:0;s:1000;e:Power2.easeOut;"
                                    data-transform_out="opacity:0;s:1000;s:1000;"
                                    data-mask_in="x:0px;y:0px;"
                                    data-start="1000"
                                    data-splitin="none"
                                    data-splitout="none"
                                    data-responsive_offset="off"
                                    data-responsive="off"
                                    data-end="11000" style="z-index: 6; min-width: 843px; max-width: 843px; max-width: 57px; max-width: 57px; white-space: normal; font-size: 20px; line-height: 28px; font-weight: 400; color: rgba(221, 221, 221, 1.00); font-family: Lato; text-align: center; letter-spacing: 0.05em;">
                                    <%#Eval("ArDescription") %>
                                </div>
                            </li>
                            <%-- <div class="item" style="background-image: url(<%#Eval("Image") %>);">
                                <div class="overlay">
                                    <div class="container caption">
                                        <h2 class="h1"><%#Eval("ArTitle") %></h2>
                                        <p><%#Eval("ArDescription") %></p>
                                    </div>
                                </div>
                            </div>--%>
                        </ItemTemplate>
                    </asp:ListView>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
        </div>
    </div>
    <!-- ICON BOX -->
    <!--end main slider-->
    <!-- ICON BOX -->
    <div class="padding-100" style="background: #1674D1">
        <div class="container">
            <div class="row surjithctly-icon-type3 ">
                <asp:ListView ID="ListViewAvoutList" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-4 text-center">
                            <div class="vc_icon_element vc_icon_element-align-center">
                                <div class="vc_icon_element-inner"><span class="fa <%#Eval("Icon") %>" style="color: #FFF !important"></span></div>
                            </div>
                            <h4 style="color: #FFF !important"><%#Eval("ArTitle") %></h4>
                            <p style="text-align: center; color: #FFF"><%#Eval("ArDescription") %></p>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    <!-- End ICON BOX -->
    <div class="padding-100">
        <div class="container">
            <div class="content-head text-center style2 space-bottom-50">
                <h2>من نحن</h2>
                <h1 id="txtAboutTitle" runat="server"></h1>
                <p id="txtAboutDesc" runat="server">
                </p>
            </div>
        </div>
    </div>
    <div class="padding-100 text-center">
        <div class="container">
            <div class="row">
                <div class="col-md-12 content-head style2">
                    <%--<h2 class="text-uppercase">Projects</h2>--%>
                    <h1>احدث الصور</h1>
                    <%--<p>We work with passion and that's the reason to release incredible arts. We love to work hard, create things and always aim to please every customers, even the hardest ones</p>--%>
                </div>
            </div>
        </div>
    </div>
    <div class="home-business-gallery container-fluid no-padding">
        <%--<div class="col-md-5 col-sm-12 no-padding">
                <div class="onepage-folio">
                    <img src="images/gallery/2/1.jpg" class="img-responsive" alt="">
                    <div class="onepage-folio-overlay">
                        <h4><a href="#">Stationery set</a></h4>
                        <p>Branding</p>
                        <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
            </div>--%>
        <div class="col-md-12 col-sm-12 no-padding">
            <asp:ListView ID="lstGallary" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 col-sm-6 no-padding">
                        <div class="onepage-folio">
                            <img src="<%#Eval("Image") %>" class="img-responsive" alt="">
                            <div class="onepage-folio-overlay">
                                <%--<h4 style=""><a href="#">Stationery set</a></h4>--%>
                                <p><%#Eval("ArTitle") %></p>
                                <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
            <%--                <div class="col-md-4 col-sm-6 no-padding">
                    <div class="onepage-folio">
                        <img src="images/gallery/2/3.jpg" class="img-responsive" alt="">
                        <div class="onepage-folio-overlay">
                            <h4><a href="#">Stationery set</a></h4>
                            <p>Branding</p>
                            <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 no-padding">
                    <div class="onepage-folio">
                        <img src="images/gallery/2/4.jpg" class="img-responsive" alt="">
                        <div class="onepage-folio-overlay">
                            <h4><a href="#">Stationery set</a></h4>
                            <p>Branding</p>
                            <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 no-padding">
                    <div class="onepage-folio">
                        <img src="images/gallery/2/5.jpg" class="img-responsive" alt="">
                        <div class="onepage-folio-overlay">
                            <h4><a href="#">Stationery set</a></h4>
                            <p>Branding</p>
                            <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 no-padding">
                    <div class="onepage-folio">
                        <img src="images/gallery/2/6.jpg" class="img-responsive" alt="">
                        <div class="onepage-folio-overlay">
                            <h4><a href="#">Stationery set</a></h4>
                            <p>Branding</p>
                            <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 no-padding">
                    <div class="onepage-folio">
                        <img src="images/gallery/2/7.jpg" class="img-responsive" alt="">
                        <div class="onepage-folio-overlay">
                            <h4><a href="#">Stationery set</a></h4>
                            <p>Branding</p>
                            <a href="#" class="ico"><i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>--%>
        </div>
    </div>

    <!-- BLOG -->
    <div class="home-blog bg-gray2">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 content-head style2 text-center">
                    <!--<h2>BLOG</h2>-->
                    <h1>اخر الفعاليات</h1>
                    <!--<p>Dedicated to blog &amp; feed your readers with awesome ideas, they will stay with you. Let's blog &amp; don't stop to be creative</p>-->
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="postcontent-type03">
                        <asp:ListView ID="lstNews" runat="server">
                            <ItemTemplate>
                                <article class="post type-post blog-entry" data-index="">
                                    <div class="recent-posts__item row">
                                        <div class="recent-posts__thumb col-md-6 <%# (Container.DisplayIndex %  2) == 0 ? "col-md-push-6" : "" %>">
                                            <a href="details.aspx?id=<%#Eval("Id") %>">
                                                <img src="<%#Eval("Image") %>" class="img-responsive" alt="" />
                                            </a>
                                        </div>
                                        <div class="recent-posts-desc col-md-6 <%# (Container.DisplayIndex %  2) == 0 ? "col-md-pull-6" : "" %>">
                                            <div class="dates">
                                                <span class="date"><%# Convert.ToDateTime(Eval("Date")).ToString("dd")%> </span>
                                                <span class="month"><%# Convert.ToDateTime(Eval("Date")).ToString("MMMM")%></span>
                                                <span class="year"><%# Convert.ToDateTime(Eval("Date")).ToString("yyyy")%></span>
                                            </div>
                                            <div class="post-meta">
                                                <!--<span class="post-com">
                                                <i class="fa fa-folder-open"></i> <a href="./blog.html">Anything</a>, <a href="./blog.html">Business</a>
                                            </span>-->
                                                <span class="author">
                                                    <i class="fa fa-user"></i>بواسطه الادمن
                                                </span>
                                            </div>
                                            <h4><a href="./blog-single-standard.html"><%#Eval("ArTitle") %></a></h4>
                                            <div class="blog-entry-excerpt">
                                                <p>
                                                    <%#Eval("ArDescription").ToString().Length <= 100 ? Eval("ArDescription") : Eval("ArDescription").ToString().Substring(0, 100)+"..." %>
                                                </p>
                                            </div>
                                            <a class="bttn" href="details.aspx?id=<%#Eval("Id") %>">قراءة المزيد</a>
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
    <!-- CALL TO ACTION -->
</asp:Content>
