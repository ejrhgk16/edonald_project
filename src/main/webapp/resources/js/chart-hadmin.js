// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

$(document).ready(function(){
	document.getElementById('inlineMonth2').value= new Date().toISOString().slice(0, 7);
	graphData( 'day', false,  '');
	menuChart();
	eachMenuChart();
	

	

	
	$("#searchBtn").on("click", function(){
		var dateStandard  = $('input[name=dateStandard]:checked').val();
		console.log(dateStandard)
		var sex = $('input[name=sexCheckBox]').is(":checked");
		console.log(sex)
		var search = $("#search").val();
		 $("#search").val("");
		graphData(dateStandard, sex, search)
	})
	
	$('.myMenuChartForm').on('change',function(){
		menuChart();
	})	
	$('.myEachMenuChartForm').on('change',function(){

		eachMenuChart();
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

function menuChart(){
		var monthorday = $('input:radio[name="inlineRadioOptions"]:checked').val( );
		var gender = $("input:checkbox[id='inlineCheckbox1']:checked").val();
		var menu_code = $('.input-chart-text').val();
		if(!gender){
			gender = 'null';
		}else{
			
		}
		if(!menu_code){
			menu_code = 14;
		}
		var url = "/hadmin/menuchart.do?menu_code="+menu_code+"&gender="+gender+"&monthorday="+monthorday;
		$.ajax({
			url:url,
			type:'get',
			success:function(res){
				if(gender == 'gender'){
					var datasets = [{
						label: "남 " + res.label,
						backgroundColor: 'transparent',
						borderColor: 'blue',
						data: res.list1
					},{
						label: "여 " + res.label,
						backgroundColor: 'transparent',
						borderColor: 'orange',
						data: res.list2
					}];
				}else{
					var datasets = [{
						label: res.label,
						backgroundColor: 'transparent',
						borderColor: 'orange',
						data: res.list,
					}];
					
				}
				$('#myMenuChart').remove();
				$('.myMenuChartCanvas').append('<canvas id="myMenuChart" width="100%" height="30"></canvas>');
				menuChartUpdate(datasets,res.labels);
			},
			error:function(){
				alert('error');
			}
		})
		
}
function menuChartUpdate(datasets,labels){

	var ctx = document.getElementById("myMenuChart");
	
	var myMenuChart = new Chart(ctx, {
  		type: 'line',
		data: {
	    labels: labels,
	    datasets: datasets,
	  },						
		options: {
			    scales: {
			      xAxes: [{
			        gridLines: {
			          display: false
			        }
			      }],
			      yAxes: [{
			        ticks: {
						stepSize: 1,
						beginAtZero: true
					},
			        gridLines: {
			          color: "rgba(0, 0, 0, .125)",
			        }
			      }],
			    },
			  }
	});
}



function eachMenuChart(){
		var order_date =  $('#inlineMonth2').val()+'-01';
		var menu_type = $('#inlineSelect2').val();
		var user_gender = $('#inlineCheckbox2').is(":Checked");
		var url = "/hadmin/eachmenuchart.do?order_date="+order_date+"&menu_type="+menu_type+"&user_gender="+user_gender;
		$.ajax({
			url:url,
			type:'get',
			success:function(res){
				if(user_gender){
					var datasets = [{
						label: "남",
						backgroundColor: 'blue',
						borderColor: 'blue',
						data: res.list1
					},{
						label: "여",
						backgroundColor: 'orange',
						borderColor: 'orange',
						data: res.list2
					}];
				}else{
					var datasets = [{
						label: "판매량",
						backgroundColor: 'orange',
						borderColor: 'orange',
						data: res.list,
					}];
					
				}
				$('#myEachMenuChart').remove();
				$('.myEachMenuChartCanvas').append('<canvas id="myEachMenuChart" width="100%" height="30"></canvas>');
				eachMenuChartUpdate(datasets,res.labels);
			},
			error:function(){
				alert('error');
			}
		})
		
}
function eachMenuChartUpdate(datasets,labels){
	var ctx = document.getElementById("myEachMenuChart");
	
	var myEachMenuChart = new Chart(ctx, {
  		type: 'bar',
		data: {
	    labels: labels,
	    datasets: datasets,
	  },						
		options: {
			    scales: {
			      xAxes: [{
			        gridLines: {
			          display: false
			        }
			      }],
			      yAxes: [{
			        ticks: {
						stepSize: 1,
						beginAtZero: true
					},
			        gridLines: {
			          color: "rgba(0, 0, 0, .125)",
			        }
			      }],
			    },
			  }
	});
}


