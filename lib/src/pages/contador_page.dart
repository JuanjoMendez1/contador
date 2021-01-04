import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{
    
    @override
    createState() => _ContadorPageState();
    

}


class _ContadorPageState extends State<ContadorPage>{

    final _estiloTexto = new TextStyle(fontSize: 25);
    int _contar = 0;

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks: ', style: _estiloTexto),
            Text( '$_contar', style: _estiloTexto),
            Text('veces', style: _estiloTexto,)
          ],
          )
        ),
        floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[

    SizedBox(width: 30.0,),
    FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset,),
    Expanded(child: SizedBox(width: 5.0,)),
    FloatingActionButton( child: Icon(Icons.remove_circle_outline), onPressed: _sustraer,),
    SizedBox(width: 5.0,),
    FloatingActionButton( child: Icon(Icons.add_circle_outline), onPressed: _agregar,),

    ],
    );
    
    
    
  }


  void _agregar(){
    
    setState(() {
    _contar++;  
    print('Agregaste un número');
    });

  }

  void _sustraer(){
    setState(() {
      _contar--;
      print('Restaste un número');
    });
  }

  void _reset(){
    setState(() {
      _contar = 0;
      print('Volvimos a 0');
    });
  }
}