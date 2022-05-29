<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/jacascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<style>
.table tr {
    cursor: pointer;
}
.hiddenRow {
    padding: 0 4px !important;
    background-color: #eeeeee;
    font-size: 13px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	console.log('1');
	$('.accordian-body').on('show.bs.collapse', function () {
		console.log('2');
	    $(this).closest("table").find(".collapse.in").not(this);
	})	
})
</script>
</head>
<body>
<table class="table table-condensed" style="border-collapse:collapse;">
    <thead>
        <tr>
            <th>#</th>
            <th>Date</th>
            <th>Description</th>
            <th>Credit</th>
            <th>Debit</th>
            <th>Balance</th>
        </tr>
    </thead>
    <tbody>
        <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle">
            <td>1</td>
            <td>05 May 2013</td>
            <td>Credit Account</td>
            <td class="text-success">$150.00</td>
            <td class="text-error"></td>
            <td class="text-success">$150.00</td>
        </tr>
        <tr >
            <td colspan="6" class="hiddenRow"><div class="accordian-body collapse" id="demo1"> Demo Content1 </div> </td>
        </tr>
		
        <tr data-toggle="collapse" data-target="#demo2" class="accordion-toggle">
            <td>2</td>
            <td>05 May 2013</td>
            <td>Credit Account</td>
            <td class="text-success">$11.00</td>
            <td class="text-error"></td>
            <td class="text-success">$161.00</td>
        </tr>
        <tr>
            <td colspan="6" class="hiddenRow"><div id="demo2" class="accordian-body collapse">Demo Content2</div></td>
        </tr>
		
        <tr data-toggle="collapse" data-target="#demo3" class="accordion-toggle">
            <td>3</td>
            <td>05 May 2013</td>
            <td>Credit Account</td>
            <td class="text-success">$500.00</td>
            <td class="text-error"></td>
            <td class="text-success">$661.00</td>
        </tr>
        <tr>
            <td colspan="6"  class="hiddenRow"><div id="demo3" class="accordian-body collapse">Demo Content3</div></td>
        </tr>

        <tr data-toggle="collapse" data-target="#demo4" class="accordion-toggle">
            <td>4</td>
            <td>05 May 2013</td>
            <td>Credit Account</td>
            <td class="text-success">$500.00</td>
            <td class="text-error"></td>
            <td class="text-success">$661.00</td>
        </tr>
        <tr>
            <td colspan="6"  class="hiddenRow"><div id="demo4" class="accordian-body collapse">Demo Content4</div></td>
        </tr>

        <tr data-toggle="collapse" data-target="#demo5" class="accordion-toggle">
            <td>5</td>
            <td>05 May 2013</td>
            <td>Credit Account</td>
            <td class="text-success">$500.00</td>
            <td class="text-error"></td>
            <td class="text-success">$661.00</td>
        </tr>
        <tr>
            <td colspan="6"  class="hiddenRow"><div id="demo5" class="accordian-body collapse">Demo Content5</div></td>
        </tr>		
    </tbody>
</table>

</body>
</html>