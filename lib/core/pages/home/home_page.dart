import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marvelapk01/core/pages/home/widgets/grid_view_list_widget.dart';
import 'controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.loadCurrentPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text('Marvel', style: GoogleFonts.lato(color: Colors.white, fontSize: 32, fontStyle: FontStyle.italic)),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white))],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const Positioned.fill(
            child: Image(
              image: AssetImage('assets/background3.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          AnimatedBuilder(
              animation: homeController,
              builder: (context, child) {
                return GridViewListWidget(homeController: homeController);
              }),
        ],
      ),
    );
  }
}
