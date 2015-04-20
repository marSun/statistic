$(function(){
  $("#create-goods-button").click(function(){
    create(); 
  });

});
function create(){ 
  form = $("#goods_create_form")
  $("#goods_name").attr("value", $("#goods-name").val());
  form.submit();
}
