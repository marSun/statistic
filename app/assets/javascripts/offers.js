$(function(){
  $("ul.nav.nav-list li").removeClass("active");
  $("#offer-submenu").addClass("in");
  $("#offer_new").addClass("active");
});
$(function(){
  $("#create-offer-button").click(function(){
    create_offer();
  });
});
$(function(){
  form = $("#offer_form");
  FormValidation.init(form);
});

function create_offer(){
    form = $("#offer_create_form");
    $("#agent_id").attr("value", $("#select1").val());
    $("#client_id").attr("value", $("#select2").val());
    $("#goods_id").attr("value", $("#select3").val());
    $("#port_id").attr("value", $("#select4").val());
    $("#offer_price").attr("value", $("#price").val());
    form.submit();
}
