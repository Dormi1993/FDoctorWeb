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
        text: '��ͥ��Ա���һ��CRPŨ������ͼ'
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
            pointStart: 1
        }
    },

    series: [{
        name: 'С��',
        <%--data: [43934, 52503, ����������Ϊ����ҽ�����棬personinfoû��${personinfo.crp}, 69658, 97031, 119931, 137133, 154175]--%>
        data: [1.99, 2.21, 2.10, 2.34, 2.18, 2.07, 2.09]
    }, {
        name: 'С��',
        data: [2.23, 2.55, 2.97, 2.75, 3.09, 2.82, 2.77]
    }, {
        name: 'С��',
        data: [2.04, 1.83, 1.76, 1.86, 1.74, 2.15, 1.83]
    }, {
        name: 'С��',
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
