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
                    contextButtonTitle:"ͼ�����˵�",
                    decimalPoint:".",
                    downloadJPEG:"����JPEGͼƬ",
                    downloadPDF:"����PDF�ļ�",
                    downloadPNG:"����PNG�ļ�",
                    downloadSVG:"����SVG�ļ�",
                    drillUpText:"���� {series.name}",
                    loading:"������",
                    months:["һ��","����","����","����","����","����","����","����","����","ʮ��","ʮһ��","ʮ����"],
                    noData:"û������",
                    numericSymbols: [ "ǧ" , "��" , "G" , "T" , "P" , "E"],
                    printChart:"��ӡͼ��",
                    resetZoom:"�������ű���",
                    resetZoomTitle:"����Ϊԭʼ��С",
                    shortMonths: [ "Jan" , "Feb" , "Mar" , "Apr" , "May" , "Jun" , "Jul" , "Aug" , "Sep" , "Oct" , "Nov" , "Dec"],
                    thousandsSep:",",
                    weekdays: ["����һ", "���ڶ�", "������", "������", "������", "������","������"]
                }
            });
Highcharts.chart('container', {

    title: {
        text: '��ͥ��ԱCRPŨ����ʱ��仯ͼ'
    },

    subtitle: {
        text: 'FDoctorWeb'
    },
    credits: {
        enabled: false
    },

    yAxis: {
        title: {
            text: 'C��Ӧ���ף�CRP��Ũ�ȣ�mg/L��'
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
        name: 'С��',
        <%--data: [43934, 52503, ����������Ϊ����ҽ�����棬personinfoû��${personinfo.crp}, 69658, 97031, 119931, 137133, 154175]--%>
        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]
    }, {
        name: 'С��',
        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
    }, {
        name: 'С��',
        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
    }, {
        name: 'С��',
        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    }, {
        name: 'С��',
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
