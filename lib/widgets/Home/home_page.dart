import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indexWidget = 0;
  static const List<Widget> _infoScreenWidget = <Widget>[
    Text('Главная'),
    Text('Сервисы'),
    Text('Мессенджер'),
    Text('Клипы'),
    Text('Видео')
  ];

  void _onTabButton(int index) {
    if (_indexWidget == index) return;
    setState(() {
      _indexWidget = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('id58596585'),
      ),
      body: Center(
        child: _infoScreenWidget[_indexWidget],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 14,
        currentIndex: _indexWidget,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главная'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'Сервисы'),
          BottomNavigationBarItem(
              icon: Icon(Icons.messenger), label: 'Meсенджеры'),
          // BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Клипы'),
          // BottomNavigationBarItem(icon: Icon(Icons.tv_sharp), label: 'Видео'),
        ],
        onTap: _onTabButton,
      ),
    );
  }
}
