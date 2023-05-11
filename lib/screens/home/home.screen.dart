import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:move_app/constantes.dart';
import 'package:move_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black26),
      ),
      drawer: Drawer(
        elevation: 5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/images/popcorn.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              accountEmail: Text(
                "user@mail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              accountName: Text(
                "Nome do Usuário",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: Text("SZ"),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                "Minha conta",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(
                "Filmes Favoritos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(
                "Configurações",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              onTap: () {
                Navigator.pop(context);
                //Navegar para outra página
              },
            ),
          ],
        ),
      ),
      body: const Body(),
    );
  }

  // AppBar buildAppBar() {
  //   return AppBar(
  //     backgroundColor: Colors.white,
  //     elevation: 0,
  //     leading: IconButton(
  //       padding: const EdgeInsets.only(left: kDefaultPadding),
  //       icon: SvgPicture.asset('assets/icons/menu.svg'),
  //       onPressed: () {
  //         //Scaffold.of(context).openDrawer();
  //       },
  //     ),
  //     actions: <Widget>[
  //       IconButton(
  //         padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
  //         icon: SvgPicture.asset('assets/icons/search.svg'),
  //         onPressed: () {},
  //       )
  //     ],
  //   );
  // }
}
