// Set new default font family and font color to mimic Bootstrap's default styling

// Pie Chart Example

$(document).ready(function(){
	Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#292b2c';
	
	
	menuChart();
	
	
	
	$('.myMenuChartForm').on('change',function(){
		$('#myMenuChart').remove();
		$('.myMenuChartCanvas').append('<canvas id="myMenuChart" width="100%" height="50"></canvas>');
		menuChart();
	})
	
})

function menuChart(){
		var menuData = new Array();
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
		alert(monthorday+','+gender+','+menu_code);
		var url = "/sadmin/chart.do?menu_code="+menu_code+"&gender="+gender+"&monthorday="+monthorday;
		$.ajax({
			url:url,
			type:'get',
			success:function(res){
				$.each(res.list,function(index,item){
					menuData.push(item);
				})
				menuChartUpdate(menuData,res.labels,res.label);
			},
			error:function(){
				alert('error');
			}
		})
		
}
function menuChartUpdate(menuData,labels,label){

	var ctx = document.getElementById("myMenuChart");
	var myMenuChart = new Chart(ctx, {
  		type: 'line',
		data: {
	    labels: labels,
	    datasets: [{
	          label: label,
	          backgroundColor: 'transparent',
	          borderColor: 'orange',
	          data: menuData
	        }]
	  },
	});
}