$(document).ready(function () {
  $("#shoutbutton").click(function () {
    var message = $("#msg").val();
    $.ajax({
      type: "POST",
      url: "reply.php",
      data: { msg: message },
      success: function (response) {
        $("#data").html(response);
      },
    });
  });
});
