$(function(){
  $("#create-ports-button").click(function(){
    create(); 
  });

});
function create(){ 
  form = $("#ports_create_form")
  $("#ports_name").attr("value", $("#ports-name").val());
  form.submit();
}
