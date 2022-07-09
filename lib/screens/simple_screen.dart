import 'package:flutter/material.dart';

/*Al ser un widget que hereda de StatelessWidget
no maneja estado por si solo*/
class SimpleScreen extends StatelessWidget {
  const SimpleScreen({Key? key}) : super(key: key);

  //En este metodo se escribe lo que retorna el widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "nombre de la aplicacion",

      //scaffold es para ajustarse a las dimensiones e la pantalla
      home: Scaffold(
        appBar: AppBar(
          title: const Text("header"),
          elevation: 10, //sombra
        ),
        body: //podemos usar operadores tenearios apoyados de estado para cambia el componente ex: body : condicion ? componente : else, o body : condicion ?  condicion ? componente : else
            const Center(
          child: Text("Este es el body"),
        ),
        //footer de nav
        bottomNavigationBar: BottomNavigationBar(
          //porpiedades de estilos
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.blue,
          selectedFontSize: 20, //medido en pixels
          unselectedFontSize: 10,
          items: const [
            /*Estas son las opciones que apareceran abajo
              estos"items" tienen 2 argumentos obligatorios
              para escribir los arg obligatorios damos
              "CTRL" + "."
              */
            //agg param req damos "ctrl" + "."
            BottomNavigationBarItem(
                icon: Icon(Icons
                    .verified_user_outlined), //todo es un widget, hasta el texto
                label: 'User'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
        ),
      ),
    );
  }
}
