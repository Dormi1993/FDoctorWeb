<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Highcharts Example</title>

		<style type="text/css">

		</style>
	</head>
	<body>
<script src="../../code/highcharts.js"></script>
<script src="../../code/modules/exporting.js"></script>

<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>



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
    chart: {
        type: 'line'
    },
    title: {
        text: '最近两周CRP浓度曲线图'
    },
    subtitle: {
        text: 'FDoctorWeb'
    },
    credits: {
        enabled: false
    },
//    xAxis: {
//        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
//    },
    yAxis: {
        title: {
            text: 'CRP浓度（mg/L）'
        }
    },
     plotOptions: {
         line: {
             dataLabels: {
                 enabled: true
             },
//             enableMouseTracking: false
             pointStart: 1
         }
     },

    series: [{
        name: '${personinfo.realname}',//这里的personinfo是session里面的
        data: [2.04, 1.83, 1.76, 1.86, 1.74, 2.15, 1.83, 1.99, 2.21, 2.10, 2.34, 2.18, 2.07, 2.09]
    }
        //, {
           // name: '小hh${user.accountid}${user.username}',这里的user也是session里面的
            //data: [1.99, 2.21, 2.10, 2.34, 2.18, 2.07, 2.09, 2.04, 1.83, 1.76, 1.86, 1.74, 2.15, 1.83]
        //}
    ]
});
		</script>
	</body>
</html>
