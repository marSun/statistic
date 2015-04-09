  $(function(){
    $("ul.nav.nav-list li").removeClass("active");
    $("#offer_statistic").addClass("active");
  })
  $(function(){
   get_clients(); 
   $("#select01").change(function(){
     get_clients();
   });
   $("#submit_button").click(function(){
     search();
   });
  });

  function search(){
    form = $("#submit_form");
    $("#agent_id").attr("value", $("#select01").val());
    $("#client_id").attr("value", $("#select02").val());
    $("#goods_id").attr("value", $("#select03").val());
    $("#port_id").attr("value", $("#select04").val());
    form.submit();
  }
  
  function get_clients(){
    url = "/clients/" + $("#select01").val() + "/get_clients.json"
    $.get(url, function(data){
      select = $("#select02");
      select.empty();
      json = eval(data.result);
      for(var i=0;i<json.length;i++){
        option = json[i]
        select.append("<option value=" + option.id + ">" + option.name + "</option>")
      }
      
    });
  
  }
  function render_line (series_array) {
    $('#line-container').highcharts({
      chart: {
        type: 'line'
      },
      title: {
        text: '报价统计表'
      },
      subtitle: {
        text: ''
      },
      xAxis: {
        categories: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月']
      },
      yAxis: {
        title: {
          text: '价格'
        }
      },
      tooltip: {
        enabled: true,
        formatter: function() {
          return '<b>'+ this.series.name +'</b><br>'+this.x +': '+ this.y +'°C';
        }
      },
      plotOptions: {
        line: {
          dataLabels: {
            enabled: true
          },
          enableMouseTracking: false
        }
      },
      series: series_array
    });
  }


