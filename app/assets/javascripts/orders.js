
$(function(){
  $("#create-order-button").click(function(){
    create_order();
  });
  $("#cfr_button").click(function(){
    cfr_statistic();
  });
  $("#trans_percent_button").click(function(){
    trans_percent_statistic();
  });
  $("#fob_percent_button").click(function(){
    fob_percent_statistic();
  });
})
function create_order(){
    form = $("#order_create_form");
    $("#goods_id").attr("value", $("#select2").val());
    $("#port_id").attr("value", $("#select4").val());
    $("#trans_price").attr("value", $("#order_trans_price").val());
    $("#fob_price").attr("value", $("#order_fob_price").val());
    $("#cfr_price").attr("value", $("#order_cfr_price").val());
    form.submit();
}
function cfr_statistic(){
  form = $("#cfr_form");
  $("#goods_id").attr("value", $("#select03").val());
  $("#port_id").attr("value", $("#select04").val());
  form.submit();
}
function trans_percent_statistic(){
  form = $("#trans_form");
  $("#goods_id").attr("value", $("#select03").val());
  $("#port_id").attr("value", $("#select04").val());
  form.submit();
}
function fob_percent_statistic(){
  form = $("#fob_form");
  $("#goods_id").attr("value", $("#select03").val());
  $("#port_id").attr("value", $("#select04").val());
  form.submit();
}
function render_line (series_array, xAxis, yAxis, title) {
    $('#line-container').highcharts({
      chart: {
        type: 'line'
      },
      title: {
        text: title 
      },
      subtitle: {
        text: ''
      },
      xAxis: {
        categories: []
      },
      yAxis: {
        title: {
          text: yAxis
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
