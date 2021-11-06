function ChangeUrl(page, url) {
    if (typeof (history.pushState) != "undefined") {
        var obj = { Page: page, Url: url };
        history.pushState(obj, obj.Page, obj.Url);
    } else {
        alert("Browser does not support HTML5.");
    }
}

function getUrlVars() {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++) {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}
function search(page) {
    var uri = '/'+controllerName+'/Index?searchString=' + $('#SearchString').val() + '&page=' + page;
    //ChangeUrl(page, uri);
    $.ajax({
        url: uri,
        async: false,
        success: function (result) {
            $('#divdata').html(result);
            // $("#FilterModal").modal("hide");
        }
    });
}
$(function () {
    //$("#SearchString").keyup(function () {
    //    search();
    //});
    //$(".filerdata").change(function () {
    //    search();
    //});

    $("#SearchString").keyup(function (e) {
        if (e.keyCode === 13) {
            search(1);
        }
    });
    //$("#btnfilterdata").click(
    //        function (e) {
    //            e.preventDefault();
    //            $('#Size').val('');
    //            $('#Description').val('');
    //            $('#Status').val('');
    //            $('#Customer').val('');
    //            $('#SearchString').val('');
    //            callselect2();
    //            var uri = '/'+controllerName+'/Index';
    //            ChangeUrl(null, uri);
    //            $.ajax({
    //                url: uri,
    //                async: false,
    //                success: function (result) {
    //                    $('#divata').html(result);
    //                }
    //            });
    //        }
    //);
    $('body').on('click', '#divdata .pagination a', function (event) {
        event.preventDefault();
        console.log('page');
        var searchString = $('#SearchString').val();
        if (searchString == undefined || searchString == '') {
            searchString = '';
        } else {
            searchString = '&searchString=' + searchString;
        }
        var url = $(this).attr('href') + searchString;
        var str = url.split('=');
        var pgnum = str[1];
        //   $('#pagenum').val(pgnum);
        console.log(url);
        search(pgnum);
        //$.ajax({
        //    url: url,
        //    success: function (result) {
        //        ChangeUrl('index', url);
        //        $('#divata').html(result);
        //    }
        //});
    });


});
$(document).on("click", ".open-view", function () {
    var id = $(this).data('id');

    $.ajax({
        url: '/'+controllerName+'/Details',
        dataType: "json",
        type: "POST",
        contentType: 'application/json; charset=utf-8',
        data: "{id:" + id + "}",
        async: true,
        processData: false,
        cache: false,
        success: function (data) {
            //  alert(JSON.stringify(data));
            $("#TYPE").html(data.TYPE);
            var sizeString = '';
            if (data.Size_Length !== null)
                sizeString += data.Size_Length.toString();

            if (data.Size_Width !== null && (data.Size_Length !== null))
                sizeString += "X" + data.Size_Width.toString();
            else
                sizeString += data.Size_Width;

            if (data.Size_Height !== null && (data.Size_Length !== null) || data.Size_Width !== null)
                sizeString += "X" + data.Size_Height.toString();
            else if (data.Size_Height !== null && data.Size_Length === null)
                sizeString += data.Size_Height.toString();
            $("#Size3").html(sizeString);
            $("#DDescription").html(data.Description);
            $("#DStatus").html(data.Status);
            $("#DCustomer").html(data.Customer);
            $("#DFirstUnit").html(data.unit);
            $("#Remarks").html(data.Remarks);
            $("#BerziCode").html(data.BerziCode);
            //    $('#ddltabletypes').prop('selectedIndex', 0);
        },
        error: function (xhr) {
            console.log(xhr);
        }
    });
});
$(document).on("click", ".Delete-Item", function (e) {
    e.preventDefault();
    var id = $(this).data('id');
    if (confirm("Are you sure you want to delete this item?")) {
        $.ajax({
            url: '/' + controllerName + '/Delete?id='+id+'',
            async: false,
            success: function (result) {
                var page = $('.pagination').find('li.active').find('a').html()
                search(page);
                jQuery.gritter.add({
                    title: 'عملية ناجحة',
                    text: 'تم الحذف',
                    //time: 2000,
                    class_name: 'growl-success',
                    image: '/img/screen.png',
                    sticky: false,
                    time: '1500',
                });
                // $("#FilterModal").modal("hide");
            },
            error: function (xhr) {
                console.log(xhr);
                jQuery.gritter.add({
                    title: 'خطا',
                    text: 'خطا ف عملية الحذف',
                    class_name: 'growl-warning',
                    image: '/img/screen.png',
                    sticky: false,
                    time: '1500'
                });
            }
        });
        //$.ajax({
        //    url: '/'+controllerName+'/Delete',
        //    dataType: "json",
        //    type: "GET",
        //    contentType: 'application/json; charset=utf-8',
        //    data: "{id:" + id + "}",
        //    async: true,
        //    processData: false,
        //    cache: false,
        //    success: function (data) {
               
        //    },
        //    error: function (xhr) {
        //        console.log(xhr);
        //        jQuery.gritter.add({
        //            title: 'خطا',
        //            text: 'خطا ف عملية الحذف',
        //            class_name: 'growl-warning',
        //            image: '/img/screen.png',
        //            sticky: false,
        //            time: '1500'
        //        });
        //    }
        //});
    };
});
$(document).on("click", ".Delete-block", function (e) {
    e.preventDefault();
    var id = $(this).data('id');
    var block = $(this).data('block');
    if (confirm("Are you sure?")) {
        $.ajax({
            url: '/' + controllerName + '/Delete',
            dataType: "json",
            type: "POST",
            contentType: 'application/json; charset=utf-8',
            data: "{id:" + id + ",block:" + block + "}",
            async: true,
            processData: false,
            cache: false,
            success: function (data) {
                var page = $('.pagination').find('li.active').find('a').html()
                search(page);
                if (block == 0) {
                    jQuery.gritter.add({
                        title: 'عملية ناجحة',
                        text: 'تم الحظر',
                        //time: 2000,
                        class_name: 'growl-success',
                        image: '/img/screen.png',
                        sticky: false,
                        time: '1500',
                    });
                }
                else {
                    jQuery.gritter.add({
                        title: 'عملية ناجحة',
                        text: 'تم الغاء الحظر',
                        //time: 2000,
                        class_name: 'growl-success',
                        image: '/img/screen.png',
                        sticky: false,
                        time: '1500',
                    });
                }
            },
            error: function (xhr) {
                console.log(xhr);
                jQuery.gritter.add({
                    title: 'خطا',
                    text: 'خطا ف عملية ',
                    class_name: 'growl-warning',
                    image: '/img/screen.png',
                    sticky: false,
                    time: '1500'
                });
            }
        });
    };
});