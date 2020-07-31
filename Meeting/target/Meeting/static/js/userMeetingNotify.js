$('#addMeetingRoombtn').click(
  function () {
    $("#addMeetingRoomName").val("");
    $("#addFloor").val("");
    $("#addRoomNumber").val("");
    $("#addCapacity").val("");
    $("input[type='checkbox'][value='adv']").prop('checked', false);
    $('#newMeetingRoom').modal('show');
});
// //通知详情
// $("#addtables").on('click', "button[name='addm']", function () {
//   $("#modifyshow").modal("show");
//   // $("#ll2").text($(this).parent().parent().index());
//   // var ss =
//   //   $(this).parent().parent().find("td");
//   // $("#alterMeetingRoomName").val(ss.eq(1).html());
//   // $("#alterFloor").val(ss.eq(2).html());
//   // $("#alterRoomNumber").val(ss.eq(3).html());
//   // $("#alterCapacity").val(ss.eq(4).html());   //$("#department").find("option[value="+dep+"]").attr("selected",true);
//   // $("input[type='checkbox'][value='dv']").prop('checked', false);
//   // var de = ss.eq(5).html();
//   // var arr = de.split(' ');
//   // for (var i = 0; i < arr.length; i++) {
//   //   $("input[type='checkbox'][name=" + arr[i] + "]").prop('checked', true);
//   // }
// })
// //确认隐藏
// // $('#addConfirm').click(function () {
// //   $('#newMeetingRoom').modal('hide');
// // }
// $('.modal-content').on('click','#addConfirm',function(){
// 	$('#newMeetingRoom').modal('hide');
// })

// //delete
// $("#addtables").on('click', "button[name='delm']", function () {
//   var hang = $(this).parent().parent();
//   hang.remove();
//
//   $('#adroomdelete').modal('show');
// })
// //删除确认
// $("#addeleteroomok").click(function () {
//   $("#adroomdelete").modal("hide");
// })
