

$(function(){
  $("#create-client-button").click(function(){
    create(); 
  });

});
function create(){ 
  form = $("#client_create_form")
  $("#agent_id").attr("value", $("#select1").val());
  $("#client_name").attr("value", $("#client-name").val());
  form.submit();
}
