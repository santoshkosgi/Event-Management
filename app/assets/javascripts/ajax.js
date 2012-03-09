$(document).ready(function () {
    $('#new_user_session').live("submit",function(e) {
        e.preventDefault()
        $.ajax({
          url: $('#new_user_session').attr('action'),
          dataType: "script",
          type: "post",
          data: $('#new_user_session').serialize()
        })
    })
  })
