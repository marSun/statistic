function search(){form=$("#submit_form"),$("#agent_id").attr("value",$("#select01").val()),$("#client_id").attr("value",$("#select02").val()),$("#goods_id").attr("value",$("#select03").val()),$("#port_id").attr("value",$("#select04").val()),form.submit()}function get_clients(){url="/clients/"+$("#select01").val()+"/get_clients.json",$.get(url,function(data){select=$("#select02"),select.empty(),json=eval(data.result);for(var i=0;i<json.length;i++)option=json[i],select.append("<option value="+option.id+">"+option.name+"</option>")})}function render_line(t){$("#line-container").highcharts({chart:{type:"line"},title:{text:"\u62a5\u4ef7\u7edf\u8ba1\u8868"},subtitle:{text:""},xAxis:{categories:["1\u6708","2\u6708","3\u6708","4\u6708","5\u6708","6\u6708","7\u6708","8\u6708","9\u6708","10\u6708","11\u6708","12\u6708"]},yAxis:{title:{text:"\u4ef7\u683c"}},tooltip:{enabled:!0,formatter:function(){return"<b>"+this.series.name+"</b><br>"+this.x+": "+this.y+"\xb0C"}},plotOptions:{line:{dataLabels:{enabled:!0},enableMouseTracking:!1}},series:t})}$(function(){$("ul.nav.nav-list li").removeClass("active"),$("#offer_statistic").addClass("active")}),$(function(){get_clients(),$("#select01").change(function(){get_clients()}),$("#submit_button").click(function(){search()})});