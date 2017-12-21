<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%--<%@ taglib uri="/struts-tags" prefix="s" %>--%>
<%--<%--%>
	<%--String path = request.getContextPath();--%>
	<%--String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";--%>
<%--%>--%>

<!DOCTYPE HTML>
<html>
	<head>
		<%--<base href="<%=basePath%>">--%>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Highcharts Example</title>

		<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}
		</style>
	</head>
	<body>
<script src="../../code/highcharts.js"></script>
<script src="../../code/modules/series-label.js"></script>
<script src="../../code/modules/exporting.js"></script>

<div id="container"></div>



		<script type="text/javascript">

Highcharts.chart('container', {

    title: {
        text: '家庭成员CRP浓度随时间变化图'
    },

    subtitle: {
        text: 'FDoctorWeb'
    },
    credits: {
        enabled: false
    },

    yAxis: {
        title: {
            text: 'C反应蛋白（CRP）浓度'
        }
    },
    legend: {
        layout: 'vertical',
        align: 'right',
        verticalAlign: 'middle'
    },

    plotOptions: {
        series: {
            label: {
                connectorAllowed: false
            },
            pointStart: 24
        }
    },

    series: [{
        name: '小明',
        <%--data: [43934, 52503, 不能这样因为，在医生界面，personinfo没了${personinfo.crp}, 69658, 97031, 119931, 137133, 154175]--%>
        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
    }, {
        name: '小红',
        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
    }, {
        name: '小丁',
        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
    }, {
        name: '小白',
        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    }, {
        name: '小王',
        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
    }],

    responsive: {
        rules: [{
            condition: {
                maxWidth: 500
            },
            chartOptions: {
                legend: {
                    layout: 'horizontal',
                    align: 'center',
                    verticalAlign: 'bottom'
                }
            }
        }]
    }

});
		</script>
	</body>
</html>
