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
    chart: {
        type: 'line'
    },
    title: {
        text: '�������CRPŨ������ͼ'
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
            text: 'CRPŨ�ȣ�mg/L��'
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
        name: '${personinfo.realname}',//�����personinfo��session�����
        data: [2.04, 1.83, 1.76, 1.86, 1.74, 2.15, 1.83, 1.99, 2.21, 2.10, 2.34, 2.18, 2.07, 2.09]
    }
        //, {
           // name: 'Сhh${user.accountid}${user.username}',�����userҲ��session�����
            //data: [1.99, 2.21, 2.10, 2.34, 2.18, 2.07, 2.09, 2.04, 1.83, 1.76, 1.86, 1.74, 2.15, 1.83]
        //}
    ]
});
		</script>
	</body>
</html>
