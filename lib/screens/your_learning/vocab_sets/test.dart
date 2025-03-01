import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (100 - kToolbarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.indigoAccent,
              expandedHeight: 120.0,
              floating: false,
              pinned: true,
              stretch: false,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.dehaze),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star),
                )
              ],
              title: _isSliverAppBarExpanded
                  ? const Text(
                      'Home Screen',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  : null,
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                title: _isSliverAppBarExpanded
                    ? null
                    : const Text(
                        'Home Screen',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
              ),
            ),
          ];
        },
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
      ),
    );
  }
}
