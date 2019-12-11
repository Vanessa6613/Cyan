import 'package:flutter/material.dart';


class Ventas extends StatefulWidget {
  @override
  __VentasState createState() => __VentasState();
}

class __VentasState extends State<Ventas> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Ventas"),
        backgroundColor: Colors.orangeAccent,
      ),
      //drawer: new Drawer(),

      body:Principal() ,
    );
  }
}

class Principal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 25,
          child: bodyData(),
        )
      ],
    );
  }

}

Widget bodyData()=> DataTable(
   columns: <DataColumn>[
     DataColumn(
       label: Text("Fecha")
     ),
     DataColumn(
       label: Text("Tiempo")
     ),
     DataColumn(
       label: Text("Monto")
     ),
   ],
   rows: <DataRow>[
     DataRow(
       cells: <DataCell>[
         DataCell(Text("26/11/19")),
         DataCell(Text("23:50 hrs")),
         DataCell(Text("11.000")),
       ],
     ),
     DataRow(
       cells: <DataCell>[
         DataCell(Text("26/11/19")),
         DataCell(Text("01:35 hrs")),
         DataCell(Text("52.250")),
       ],
     ),
     DataRow(
       cells: <DataCell>[
         DataCell(Text("27/11/19")),
         DataCell(Text("22:30 hrs")),
         DataCell(Text("18.150")),
       ],
     ),
   ],
  );