var viewportmeta = document.querySelector('meta[name="viewport"]');
if (viewportmeta) {
  if (screen.width < 375) {
    var newScale = screen.width / 375;
    viewportmeta.content =
      "width=375, minimum-scale=" +
      newScale +
      ", maximum-scale=1.0, user-scalable=no, initial-scale=" +
      newScale +
      "";
  } else {
    viewportmeta.content =
      "width=device-width, maximum-scale=1.0, initial-scale=1.0";
  }
}

// console.log(localStorage.getItem("darkMode"));
if (localStorage.getItem("darkMode") === "on") {
  document.body.classList.add("dark");
  document.addEventListener("DOMContentLoaded", function () {
    document.querySelector(".js-switch-theme input").checked = true;
  });
}

$(document).ready(function () {
  var clipboard = new Clipboard(".btn-clipboard");
  clipboard.on("success", function (e) {
    toastr.success("Copied");
  });
  // Clipboard

  var clipboard2 = new Clipboard(".clipboard-btn");

  clipboard2.on("success", function (e) {
    setTooltip(e.trigger, "Copied!");
    hideTooltip(e.trigger);
  });

  clipboard2.on("error", function (e) {
    setTooltip(e.trigger, "Failed!");
    hideTooltip(e.trigger);
  });

  if ($("#qr-code-image").length > 0) {
    var qrcode = new QRCode("qr-code-image", {
      width: 200,
      height: 200,
      colorDark: "#000000",
      colorLight: "#ffffff",
    });

    qrcode.clear();
    qrcode.makeCode($("#qr-code-image").data("text"));
  }
});

// dropdown
// (function () {
//   var dropdown = $(".js-dropdown");
//   dropdown.each(function () {
//     var item = $(this);
//     head = item.find(".js-dropdown-head"),
//     body = item.find(".js-dropdown-body");

//     head.on("click", function (e) {
//       e.stopPropagation();
//       e.preventDefault();
//       if (!item.hasClass("active")) {
//         dropdown.removeClass("active");
//         item.addClass("active");
//       } else {
//         dropdown.removeClass("active");
//       }
//     });
//     body.on("click", function (e) {
//       e.stopPropagation();
//     });
//     $("body").on("click", function () {
//       dropdown.removeClass("active");
//     });
//   });
// })();
function showHidePassword(current_selector, target_id) {
  selector = $("#" + target_id);
  if (selector.attr("type") == "password") {
    selector.attr("type", "text");
    current_selector.find(".icon-eye").removeClass("hide");
    current_selector.find(".icon-eye-flash").addClass("hide");
  } else {
    selector.attr("type", "password");
    current_selector.find(".icon-eye").addClass("hide");
    current_selector.find(".icon-eye-flash").removeClass("hide");
  }
}

$(document).ready(function () {
  if ($("#payment_request_xgt_project_id").length > 0) {
    var current = $("#payment_request_xgt_project_id");
    var options = current.find("option");
    var selected = options.filter(":selected");
    var rate = selected.data("rate");
    var fee = selected.data("fee");
    var amount_per_lot = selected.data("amount_per_lot");
    var payment_request_lot = $("#payment_request_lot").val();
    calc_purchase(rate, fee, amount_per_lot, payment_request_lot);
    $(document).on("change", "#payment_request_xgt_project_id", function () {
      var current = $("#payment_request_xgt_project_id");
      var options = current.find("option");
      var selected = options.filter(":selected");
      var rate = selected.data("rate");
      var fee = selected.data("fee");
      var amount_per_lot = selected.data("amount_per_lot");
      var payment_request_lot = $("#payment_request_lot").val();
      calc_purchase(rate, fee, amount_per_lot, payment_request_lot);
    });
    $(document).on("change", "#payment_request_lot", function () {
      var current = $("#payment_request_xgt_project_id");
      var options = current.find("option");
      var selected = options.filter(":selected");
      var rate = selected.data("rate");
      var fee = selected.data("fee");
      var payment_request_lot = $("#payment_request_lot").val();
      var amount_per_lot = selected.data("amount_per_lot");
      calc_purchase(rate, fee, amount_per_lot, payment_request_lot);
    });
  }
});

function calc_purchase(rate, fee, amount_per_lot, payment_request_lot) {
  $("#payment_request_amount_eth").val(
    (
      parseInt(amount_per_lot) *
      parseInt(payment_request_lot) *
      rate *
      fee
    ).toFixed(6)
  );
  $("#payment_request_amount_xgt").val(
    parseInt(amount_per_lot) * parseInt(payment_request_lot)
  );
}

$(document).ready(function () {
  $("#btn_upload").on("click", function () {
    $("#photo_upload").on("change", function () {
      var image = window.URL.createObjectURL(this.files[0]);
      $("#photo_preview").attr("src", image);
      $("#btn_discard_photo").show();
    });
  });

  $("#btn_discard_photo").on("click", function (event) {
    event.preventDefault();
    // $("#photo_upload").remove();
    $("#photo_preview").attr("src", $(this).attr("data-image"));
    $("#photo_upload").val("");
    $("#btn_discard_photo").hide();
  });
});
