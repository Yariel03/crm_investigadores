<%-- 
    Document   : graficoGeneral
    Created on : 21-jul-2019, 11:35:42
    Author     : alex-
--%>

 <script>
    <%     
//           String dato = result2.get(2).trim();//se busca la posicion del valor numerico el porcentaje
//            Integer valor = Integer.parseInt(dato) ;
////            Integer.parseInt(dato);
//            float DS = Float.parseFloat(result2.get(3));
%>
AmCharts.makeChart("chartdiv", {
      "type": "gauge",
      "theme": "patterns",
      "marginBottom": 20,
      "marginTop": 10,
      "fontSize": 13,
      "axes": [ {
              "axisThickness": 5,
              "axisAlpha": 0.2,
              "tickAlpha": 0.9,
              "valueInterval": 10,
              "bands": [ {
                      "balloonText": "low",
                      "color": "#f84925",
                      "endValue": 33,
                      "innerRadius": "60%",
                      "startValue": 0
                      }, {
                      "balloonText": "medium",
                      "color": "#fff000",
                      "endValue": 66,
                      "innerRadius": "60%",
                      "startValue": 33
                      }, {
                      "balloonText": "high",
                      "color": "#7bf825",
                      "endValue": 100,
                      "innerRadius": "60%",
                      "startValue": 66
                      } ],
              "bottomText": "15 %"+ "\n Standar D : 10" + "\n Coeficient : 10",//se le suma el total de campos que se recibe
              "bottomTextColor": "#323232",          
              "bottomTextYOffset": - 5,
              "toAngle": 30,
              "endValue": 100
              } ],
        "arrows": [ {
                "value":15,	
                "nailRadius": 7,
                "radius": "81%",
                "startWidth": 9} ],
        "titles": [
        {
            "text": "nombre"
        }]
      });
      
    </script>
