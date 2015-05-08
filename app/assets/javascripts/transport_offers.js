$(function(){
  $("#create-trans-offer-button").click(function(){
    create_trans_offer();
  });
});
$(function(){
  form = $("#trans_offer_form");
  FormValidation.init(form);
});

function create_trans_offer(){
    form = $("#trans_offer_create_form");
    $("#company_id").attr("value", $("#select1").val());
    $("#goods_id").attr("value", $("#select2").val());
    $("#cabinet").attr("value", $("#select3").val());
    $("#port_id").attr("value", $("#select4").val());
    $("#price").attr("value", $("#trans_offer_price").val());
    $("#deliver_goods_at").attr("value", $("#date01").val());
    form.submit();
}
