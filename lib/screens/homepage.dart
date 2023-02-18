import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  Map<String, String> web = {
    "https://fluttergems.dev/media/logo.png":
        "https://fluttergems.dev/windows/",
    "https://dart.dev/assets/shared/dart-logo-for-shares.png?2":
        "https://dart.dev/",
    "https://play-lh.googleusercontent.com/dOj01WoJAfGmugoidMOOxrorAfmWTjkKeukQ6icTxAwjk7C5L1kQg9WdyGgLLoJCLw":
        "https://www.w3schools.com/",
    "https://i.pinimg.com/originals/76/05/2e/76052e4c0db271656da0cf58d826543e.jpg":
        "https://uidai.gov.in/en/",
    "https://e7.pngegg.com/pngimages/980/413/png-clipart-apple-logo-business-iphone-apple-heart-computer.png":
        "https://www.apple.com/in/?afid=p238%7Cs8Vs8GkTq-dc_mtid_187079nc38483_pcrid_645364328155_pgrid_112258962467_pntwk_g_pchan__pexid__&cid=aos-IN-kwgo-brand--slid---product-",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {},
          icon: Icon(
            Icons.star,
          ),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: const Color(0xff54759e),
        title: const Text(
          "Web",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: web.entries
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed("web_load_page", arguments: e);
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 10),
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.blue,
                                spreadRadius: 1,
                                blurRadius: 1)
                          ],
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 1),
                            colors: <Color>[
                              Color(0xff1f005c),
                              Color(0xff5b0060),
                              Color(0xff870160),
                              Color(0xffac255e),
                              Color(0xffca485c),
                              Color(0xffe16b5c),
                              Color(0xfff39060),
                              Color(0xffffb56b),
                            ],
                            // Gradient from https://learnui.design/tools/gradient-generator.html
                            tileMode: TileMode.mirror,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(e.key),
                          ),
                          color: const Color(0xff54759e).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      )),
    );
  }
}
