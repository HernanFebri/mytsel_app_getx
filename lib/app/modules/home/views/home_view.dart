import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Hernan Febri",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              width: 25,
              height: 25,
              child: Image.asset(
                "assets/icons/qr.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xFFEC2028),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: const Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52d27),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "081297266538",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Image.asset("assets/logo/simpati.png")
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Sisa Pulsa Anda",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Rp34.000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Isi Pulsa",
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFF7B731),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              color: Colors.black,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: const TextSpan(
                                text: "Berlaku sampai ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: "25 Febuari 2025",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Telkomsel POIN",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFF7b731),
                                  ),
                                  child: const Text(
                                    "176",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StatusCard(
                            title: "Internet",
                            data: "12.19",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telepon",
                            data: "0",
                            satuan: "Min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "23",
                            satuan: "SMS",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        // Body
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            // physics:
                            //     AlwaysScrollableScrollPhysics(), // or AlwaysScrollableScrollPhysics()
                            // shrinkWrap: true,
                            children: const [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Internet",
                                    icon: "assets/icons/internet.png",
                                  ),
                                  ItemKategori(
                                    title: "Telpon",
                                    icon: "assets/icons/telpon.png",
                                  ),
                                  ItemKategori(
                                    title: "SMS",
                                    icon: "assets/icons/sms.png",
                                  ),
                                  ItemKategori(
                                    title: "Roaming",
                                    icon: "assets/icons/roaming.png",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Hiburan",
                                    icon: "assets/icons/hiburan.png",
                                  ),
                                  ItemKategori(
                                    title: "Unggulan",
                                    icon: "assets/icons/unggulan.png",
                                  ),
                                  ItemKategori(
                                    title: "Tersimpan",
                                    icon: "assets/icons/tersimpan.png",
                                  ),
                                  ItemKategori(
                                    title: "Riwayat",
                                    icon: "assets/icons/riwayat-icon.png",
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Terbaru dari Telkomsel",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFFEC2028),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/images/images-2.png",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        // Navigation
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          height: 100,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.grey),
                            ),
                          ),
                          // color: Colors.amber,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                icon: "home",
                                status: true,
                                title: "Beranda",
                              ),
                              ItemNav(
                                icon: "riwayat",
                                status: false,
                                title: "Riwayat",
                              ),
                              ItemNav(
                                icon: "bantuan",
                                status: false,
                                title: "Bantuan",
                              ),
                              ItemNav(
                                icon: "inbox",
                                status: false,
                                title: "Inbox",
                              ),
                              ItemNav(
                                icon: "akun",
                                status: false,
                                title: "Akun Saya",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  const ItemTerbaru({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  const ItemKategori({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    super.key,
    required this.status,
    required this.title,
    required this.icon,
  });

  final bool status;
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: (status == true)
                ? const Color(0xFFEC2028)
                : const Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    super.key,
    required this.title,
    required this.data,
    required this.satuan,
  });

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEC2028)),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xFF747d8C)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
