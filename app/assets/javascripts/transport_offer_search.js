$(function(){
  $("#submit_button").click(function(){
    search();
  })
})
function search(){
  var deliver_at = $("#date01").val();
  var cabinet = $("#select02").val();
  var goods_id = $("#select03").val();
  var port_id = $("#select04").val();

  $("#deliver_at").val(deliver_at);
  $("#cabinet").val(cabinet);
  $("#goods_id").val(goods_id);
  $("#port_id").val(port_id);

  f = $("#submit_form")

  f.submit();

}

function render_column(chart_data){
  $('#column-container').highcharts({
    chart: {
      type: 'column'
    },
    title: {
      text: '货运报价表'
    },
    subtitle: {
      text: ''
    },
    xAxis: {
      categories: [
        "货运公司"
      ]
    },
    yAxis: {
      min: 0,
      title: {
        text: '价格'
      }
    },
    tooltip: {
      headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
      pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' + '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
      footerFormat: '</table>',
      shared: true,
      useHTML: true
    },
    plotOptions: {
      column: {
        pointPadding: 0.2,
        borderWidth: 0
      }
    },
    series: chart_data
  });
}
