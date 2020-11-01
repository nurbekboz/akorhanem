import 'package:akorhane/login/girisyap.dart';
import 'package:akorhane/login/password.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/arka.png',
            ),
          ),
          Column(
            children: [
              InkWell(
                child: DrawList(Icons.exit_to_app, "Giriş Yap"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Girisyap()));
                },
              ),
              GestureDetector(
                child: DrawList(Icons.person_outline, "Profil Oluştur"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Password()));
                },
              ),
              GestureDetector(
                child: DrawList(Icons.lock_open, "Şifremi Unuttum"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Password()));
                },
              ),
            ],
          ),
        ]),
      ),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpCard(Icons.trending_down, "Popüler Akorlar"),
            ExpCard(Icons.trending_down, "Rastgele"),
            ExpCard(Icons.trending_down, "Öne Çıkanlar"),
            ExpCard(Icons.trending_down, "Yeni Akorlar"),
            ExpCard(Icons.trending_down, "Gece Modu"),
            ExpCard(Icons.trending_down, "Repertuarlarım"),
            ExpCard(Icons.trending_down, "Özel İçeriklerim"),
            ExpCard(Icons.trending_down, "Versiyonlarım"),
            ExpCard(Icons.trending_down, "Not Aldıklarım"),
            ExpCard(Icons.trending_down, "Repertuara en çok eklenen akorlar"),
            ExpCard(Icons.trending_down, "Popüler Sanatçılar"),
            ExpCard(Icons.trending_down, "Yeni Eklenen Sanatçılar"),
            ExpCard(Icons.trending_down, "Yeni Eklenen Sanatçılar"),
            ExpCard(Icons.trending_down, "Yeni Ritim Eklenenler"),
            ExpCard(Icons.trending_down, "İstek, Öneri, Şikayet"),
          ],
        ),
      ),
    );
  }
}

class ExpCard extends StatelessWidget {
  final icon;
  final String baslik;
  const ExpCard(this.icon, this.baslik);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text("$baslik"),
          leading: Icon(icon),
          trailing: Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
          ),
        ),
        Container(
          height: 0.40,
          color: Colors.grey.shade400,
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}

class DrawList extends StatelessWidget {
  final icon;
  final String baslik;

  const DrawList(this.icon, this.baslik);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text("$baslik"),
        ),
        Container(
          height: 0.40,
          color: Colors.grey.shade500,
          width: MediaQuery.of(context).size.width,
        ),
      ],
    );
  }
}
