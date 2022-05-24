// Set new default font family and font color to mimic Bootstrap's default styling

// Pie Chart Example

$(document).ready(function(){
	Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#292b2c';

	var ctx = document.getElementById("myMenuChart");
	var myPieChart = new Chart(ctx, {
  		type: 'line',
		data: {
	    labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
	    datasets: [{
	          label: 'My First dataset',
	          backgroundColor: 'transparent',
	          borderColor: 'red',
	          data: [0, 10, 5, 2, 20, 30, 45]
	        }]
	  },
	});
	
	$('.input-chart-text').on('change',function(){
		
	})
	
})
