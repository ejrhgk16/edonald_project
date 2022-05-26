// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

$(document).ready(function(){
	graphData( 'day', false,  '');
	
	
	$("#searchBtn").on("click", function(){
		var dateStandard  = $('input[name=dateStandard]:checked').val();
		console.log(dateStandard)
		var sex = $('input[name=sexCheckBox]').is(":checked");
		console.log(sex)
		var search = $("#search").val();
		 $("#search").val("");
		graphData(dateStandard, sex, search)
	})
	
	
})

 function graphData(dateStandard, sex, search){
	var url =  "/hadmin/chart/getData?dateStandard="+dateStandard+"&sex="+sex+"&search="+search;
	$.ajax({
		type : "GET",
		url : url,
		success : function(res){
			if(sex){
					if(search){
					var storename = res.storeName+" 매출차트";
					$(".salesChartName").text(storename);
				}else{
					$(".salesChartName").text("전체매출차트");
				}
				multiLinechart(res.labels, res.mDataList, res.wDataList);
			}else{
				if(search){
					var storename = res.storeName+" 매출차트";
					console.log(storename)
					$(".salesChartName").text(storename);
				}else{
					$(".salesChartName").text("전체매출차트");
				}
				singleLinechart(res.labels, res.dataList )
			}
			
		}
	})
}



function singleLinechart(labels, chartdata){
$("#myAreaChart").remove();
$(".salesChart").append('<canvas id="myAreaChart" width="100%" height="30"></canvas>');
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: labels,
    datasets: [{
      label: "매출(단위:원)",
      lineTension: 0.3,
      backgroundColor: "rgba(255,255,255,0.2)",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 4,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: chartdata,
    }],
  },
options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
      }],
      yAxes: [{
        ticks: {
          min: 0,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
    legend: {
      
    }
  }

});
}

function multiLinechart(labels, chartdataM, chartdataW){
$("#myAreaChart").remove();
$(".salesChart").append('<canvas id="myAreaChart" width="100%" height="30"></canvas>');
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: labels,
    datasets: [{
      label: "남 매출액(단위:원)",
      lineTension: 0.3,
      backgroundColor: "rgba(255,255,255,0.2)",
      borderColor: "rgba(2,117,216,1)",
      pointRadius: 4,
      pointBackgroundColor: "rgba(2,117,216,1)",
      pointBorderColor: "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor: "rgba(2,117,216,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: chartdataM,
    },
{
	   label: "여 매출액(단위:원)",
      lineTension: 0.3,
       backgroundColor: "rgba(255,255,255,0.2)",
      borderColor: "rgba(255,0,0,1)",
      pointRadius: 5,
      pointBackgroundColor: "rgb(255,0,0,1)",
      pointBorderColor:  "rgba(255,255,255,0.8)",
      pointHoverRadius: 5,
      pointHoverBackgroundColor:  "rgb(255,0,0,1)",
      pointHitRadius: 50,
      pointBorderWidth: 1,
      data: chartdataW,
}], 
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          maxTicksLimit: 5
        },
        gridLines: {
          color: "rgba(0, 0, 0, .125)",
        }
      }],
    },
  }
});
}








