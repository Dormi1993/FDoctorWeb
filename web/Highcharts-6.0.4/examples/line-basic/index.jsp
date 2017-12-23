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
            Highcharts.setOptions({
                lang:{
                    contextButtonTitle:"图表导出菜单",
                    decimalPoint:".",
                    downloadJPEG:"下载JPEG图片",
                    downloadPDF:"下载PDF文件",
                    downloadPNG:"下载PNG文件",
                    downloadSVG:"下载SVG文件",
                    drillUpText:"返回 {series.name}",
                    loading:"加载中",
                    months:["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"],
                    noData:"没有数据",
                    numericSymbols: [ "千" , "兆" , "G" , "T" , "P" , "E"],
                    printChart:"打印图表",
                    resetZoom:"重置缩放比例",
                    resetZoomTitle:"重置为原始大小",
                    shortMonths: [ "Jan" , "Feb" , "Mar" , "Apr" , "May" , "Jun" , "Jul" , "Aug" , "Sep" , "Oct" , "Nov" , "Dec"],
                    thousandsSep:",",
                    weekdays: ["星期一", "星期二", "星期三", "星期四", "星期五", "星期六","星期天"]
                }
            });
Highcharts.chart('container', {

    title: {
        text: '家庭成员最近一周CRP浓度曲线图'
    },

    subtitle: {
        text: 'FDoctorWeb'
    },
    credits: {
        enabled: false
    },

    yAxis: {
        title: {
            text: 'C反应蛋白（CRP）浓度（mg/L）'
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
            pointStart: 1
        }
    },

    series: [{
        name: '小明',
        <%--data: [43934, 52503, 不能这样因为，在医生界面，personinfo没了${personinfo.crp}, 69658, 97031, 119931, 137133, 154175]--%>
        data: [1.99, 2.21, 2.10, 2.34, 2.18, 2.07, 2.09]
    }, {
        name: '小黑',
        data: [2.23, 2.55, 2.97, 2.75, 3.09, 2.82, 2.77]
    }, {
        name: '小丁',
        data: [2.04, 1.83, 1.76, 1.86, 1.74, 2.15, 1.83]
    }, {
        name: '小白',
        data: [1.81, 2.00, 2.05, 1.98, 2.03, 1.91, 2.01]
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
