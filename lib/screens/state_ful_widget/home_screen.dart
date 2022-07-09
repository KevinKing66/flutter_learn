import 'package:flutter/material.dart';
import 'package:flutter_application/screens/state_less_widget/custom_screen.dart';

/*los StateFulWidget requieren de un estado el cual lo usaremos para diferentes cosas
entre ellas, cambiar de widget
para crear este StateFulWidget a partir de StatelessWidget solo dame "CTRL" + "."
*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    /*este currentPages sera el index que usaremos para movernos entre widgets
    esta porpieda se modificara desde bottomNavigationBar con la propiedad currentIndex*/
    int currentPage = 0;
    /*este controller lo usaremos para asignar el valor inicial del estado 
    para hacer la transicion entre los componentes que tenemos en navBar*/
<<<<<<< HEAD:lib/screens/state_ful_widget/home_screen.dart
    final PageController pageController = PageController(initialPage: 1);
=======
    final PageController pageController = new PageController(initialPage: 1);
>>>>>>> cb0dc5d7b37b01f4f40bb8b952ea5557faf424ef:lib/screens/home_screen.dart

    return MaterialApp(
      title: "my firt app in flutter",
      home: Scaffold(
          //scaffold es para poner las dimensiones e la pantalla
          appBar: AppBar(
            title: Text("Welcome to my first app, this is page $currentPage"),
            elevation: 10,
          ),
          /*puedo pasar 1 componente o varios, segun que necesitemos
        body: CustomScreen(color: Colors.white), */
          body: PageView(
            /*enlazamos el estado o valor del index con el valor inicial del controlador
            pero aun faltaria agg algo al onclick*/
            controller: pageController,
            /*physics modifica el scroll entre componentes, lo posibles valores son:
            BouncingScrollPhysics() => permite movernos deslizando los dedos
<<<<<<< HEAD:lib/screens/state_ful_widget/home_screen.dart
            NeverScrollableScrollPhysics() => no permite deslizarnos con los dedos*/
            physics: const NeverScrollableScrollPhysics(),
            children: const [
              //Screens o vistas
=======
            NeverScrollableScrollPhysics() => no permite deslizarnos con los dedos
            */
            physics: NeverScrollableScrollPhysics(),
            children: [
              /*PARA PASAR DE UNA PAGINA, VIEW, SCREEN
            A LAOTRA, DESLIZO LOS DEDOS DE R  TO L
            Y VICEVERSA*/
>>>>>>> cb0dc5d7b37b01f4f40bb8b952ea5557faf424ef:lib/screens/home_screen.dart
              CustomScreen(color: Colors.black),
              CustomScreen(color: Colors.green),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage, //lo usamos para cambiar el estado
            onTap: (index) {
<<<<<<< HEAD:lib/screens/state_ful_widget/home_screen.dart
              //ontap es como el onclick, lo usaremos para cambiar el indice dl estado
              currentPage =
                  index; //el index es igual a la posicion del elemento que toquemos
              //usamos esta propieda para el cambio de widget, esto es necesario cuando nuestra physics = NeverScrollableScrollPhysics()
              pageController.animateToPage(currentPage, //index de componente
                  duration:
                      const Duration(milliseconds: 500), //duracion de animacion
                  curve: Curves.easeIn); // tipo de animacion
=======
              //el index es igual a la posicion del elemento que toquemos
              currentPage = index;
              //usamos esta propieda para el cambio de widget, esto es necesario cuando nuestra physics = NeverScrollableScrollPhysics()
              pageController.animateToPage(currentPage, //index de componente
                  duration: Duration(milliseconds: 500), //duracion de animacion
                  curve: Curves.easeIn); // tipo de animacion
              //";"se usapor ue esuna funcion o algo de logica y no diseño
>>>>>>> cb0dc5d7b37b01f4f40bb8b952ea5557faf424ef:lib/screens/home_screen.dart

              //tenemos que decirle a flutter que debe renderizar los cambios
              setState(() {});
            },
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.blue,
            selectedFontSize: 20, //medido en pixels
            unselectedFontSize: 10,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.verified_user_outlined), label: 'User'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          )),
    );
  }
}
