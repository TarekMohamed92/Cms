$(document).ready(function () {
    //console.log("ready!");
    $("#btnaddsts").click(
function () {
    $.ajax({
        url: '/CartonBrandTBs/CreateStates',
        dataType: "json",
        type: "POST",
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify({
            States_Name: document.getElementById('Sts_Name').value
        }),
        async: true,
        processData: false,
        cache: false,
        success: function (data) {
            alert(data);
            $('#States_FK').append($("<option></option>").attr("value", data).text(document.getElementById('Sts_Name').value));
            document.getElementById('Sts_Name').value = '';
            $("#StatesModal").modal("hide");
        },
        error: function (xhr) {
            console.log(xhr);
        }
    });
});
    $("#btndeletestatus").click(
      function () {
          if (confirm('Are you sure you want to delete this Status?')) {
              $.ajax({
                  url: '/CartonBrandTBs/DeleteStatus?id=' + $('#States_FK').val(),
                  dataType: "json",
                  type: "POST",
                  contentType: 'application/json; charset=utf-8',
                  async: true,
                  processData: false,
                  cache: false,
                  success: function (data) {
                      if (data == "1") {
                          $("#States_FK option[value='" + $('#States_FK').val() + "']").remove();
                          callselect2();
                      } else {
                          alert("Status Could Not Be Deleted.");
                      }
                  },
                  error: function (xhr) {
                      console.log(xhr);
                  }
              });
          }
      });
    $(".FillUnits1").change(
function () {
    secondunitchange();
    thirdunitchange();
    fourthunitchange();
});
    $(".FillUnits2").change(
        function () {
            secondunitchange();
        });
    $(".FillUnits3").change(
        function () {
            thirdunitchange();
        });
    $(".FillUnits4").change(
        function () {
            fourthunitchange();
        });

    function secondunitchange() {
        var secondunit = $("#ScondUnit :selected").val();
        $("#SecondUnitFactor").removeAttr("readonly");
        $("#SecondUnitFactor").val("0");
        var firstunit = $("#FirstUnit :selected").val();
        if (firstunit == 1 || firstunit == 2 || firstunit == 3) {
            if (secondunit > 0) {
                $.ajax({
                    url: '/RowMaterialsBrands/GetUnitData',
                    dataType: "json",
                    type: "POST",
                    contentType: 'application/json; charset=utf-8',
                    data: "{id:" + secondunit + "}",
                    async: true,
                    processData: false,
                    cache: false,
                    success: function (data) {
                        // alert(data);
                        if (firstunit == 1) {
                            $("#SecondUnitFactor").attr("value", data.FactorOfKilogram);
                        } else if (firstunit == 2) {
                            $("#SecondUnitFactor").attr("value", data.FactorOfGram);
                        } else if (firstunit == 3) {
                            $("#SecondUnitFactor").attr("value", data.FactorOfTon);
                        }
                        if (data.Fixed) {
                            $("#SecondUnitFactor").attr("readonly", "readonly");
                        }

                    },
                    error: function (xhr) {
                        console.log(xhr);
                    }
                });
            }
        }
    };

    function thirdunitchange() {
        var thirdunit = $("#ThirdUnit :selected").val();
        $("#ThirdUnitFactor").removeAttr("readonly");
        $("#ThirdUnitFactor").val("0");
        var firstunit = $("#FirstUnit :selected").val();
        if (firstunit == 1 || firstunit == 2 || firstunit == 3) {
            if (thirdunit > 0) {
                $.ajax({
                    url: '/RowMaterialsBrands/GetUnitData',
                    dataType: "json",
                    type: "POST",
                    contentType: 'application/json; charset=utf-8',
                    data: "{id:" + thirdunit + "}",
                    async: true,
                    processData: false,
                    cache: false,
                    success: function (data) {
                        // alert(data);
                        if (firstunit == 1) {
                            $("#ThirdUnitFactor").attr("value", data.FactorOfKilogram);
                        } else if (firstunit == 2) {
                            $("#ThirdUnitFactor").attr("value", data.FactorOfGram);
                        } else if (firstunit == 3) {
                            $("#ThirdUnitFactor").attr("value", data.FactorOfTon);
                        }
                        if (data.Fixed) {
                            $("#ThirdUnitFactor").attr("readonly", "readonly");
                        }
                    },
                    error: function (xhr) {
                        console.log(xhr);
                    }
                });
            }
        }
    };

    function fourthunitchange() {
        var fourthunit = $("#FourUnit :selected").val();
        $("#FourthUnitFactor").removeAttr("readonly");
        $("#FourthUnitFactor").val("0");
        var firstunit = $("#FirstUnit :selected").val();
        if (firstunit == 1 || firstunit == 2 || firstunit == 3) {
            if (fourthunit > 0) {
                $.ajax({
                    url: '/RowMaterialsBrands/GetUnitData',
                    dataType: "json",
                    type: "POST",
                    contentType: 'application/json; charset=utf-8',
                    data: "{id:" + fourthunit + "}",
                    async: true,
                    processData: false,
                    cache: false,
                    success: function (data) {
                        // alert(data);
                        if (firstunit == 1) {
                            $("#FourthUnitFactor").attr("value", data.FactorOfKilogram);
                        } else if (firstunit == 2) {
                            $("#FourthUnitFactor").attr("value", data.FactorOfGram);
                        } else if (firstunit == 3) {
                            $("#FourthUnitFactor").attr("value", data.FactorOfTon);
                        }
                        if (data.Fixed) {
                            $("#FourthUnitFactor").attr("readonly", "readonly");
                        }
                    },
                    error: function (xhr) {
                        console.log(xhr);
                    }
                });
            }
        }
    };
});
$("#btnaddsupplier").click(
function () {
    //   alert("btn1");
    $.ajax({
        url: '/RowMaterialsBrands/CreateSupplier',
        dataType: "json",
        type: "POST",
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify({
            Supplier_ID: 0,
            Supplier_Name: document.getElementById('SupplierNameT').value
        }),
        async: true,
        processData: false,
        cache: false,
        success: function (data) {
            //    alert(data);
            $('#ddlmultisupplier').append($("<option></option>").attr("value", data).text(document.getElementById('SupplierNameT').value));
            document.getElementById('SupplierNameT').value = '';
            $("#SupplierModal").modal("hide");
        },
        error: function (xhr) {
            console.log(xhr);
        }
    });


});
$("#btnadddesc").click(function () {
    $.ajax({
        url: '/CartonBrandTBs/CreateDesc',
        dataType: "json",
        type: "POST",
        contentType: 'application/json; charset=utf-8',
        data: JSON.stringify({
            CartonDescID: 0,
            CartonDescName: document.getElementById('desc_Name').value
        }),
        async: true,
        processData: false,
        cache: false,
        success: function (data) {
            $('#Description').append($("<option></option>").attr("value", data).text(document.getElementById('desc_Name').value));
            document.getElementById('desc_Name').value = '';
            $("#DescModal").modal("hide");
        },
        error: function (xhr) {
            console.log(xhr);
        }
    });
});
    $("#btndeletedesc").click(function () {
          if (confirm('Are you sure you want to delete this Description?')) {
              $.ajax({
                  url: '/CartonBrandTBs/DeleteDesc?id=' + $('#Description').val(),
                  dataType: "json",
                  type: "POST",
                  contentType: 'application/json; charset=utf-8',
                  async: true,
                  processData: false,
                  cache: false,
                  success: function (data) {
                      if (data == "1") {
                          $("#Description option[value='" + $('#Description').val() + "']").remove();
                          callselect2();
                      } else {
                          alert("Description Could Not Be Deleted.");
                      }
                  },
                  error: function (xhr) {
                      console.log(xhr);
                  }
              });
          }
      });
$(".StatusFK").change(function () {
    //  e.preventDefault();
    if ($(".StatusFK :selected").val() == 1) {
        $("#hdndiv").show("blind");

    } else {
        $("#hdndiv").hide("blind");
    }
});
