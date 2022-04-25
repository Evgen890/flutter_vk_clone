import 'package:flutter/material.dart';

class AuthInfo extends StatelessWidget {
  const AuthInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.grey[300],
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image:
                            AssetImage('assets/images/VK_Compact_Logo.svg.png'),
                        height: 25,
                        width: 25,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'ID',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.supervised_user_circle,
                          size: 40,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Image(
                          image: AssetImage('assets/images/icon_chek.png'),
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 20,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Image(
                          image: AssetImage(
                              'assets/images/VK_Compact_Logo.svg.png'),
                          height: 55,
                          width: 55,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Приложение ',
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                      Text('m.vk.com Авторизация ',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18)),
                      Text('получит: ',
                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
            _UpBarWidget(),
          ],
        ),
      ),
    );
  }
}

class _UpBarWidget extends StatelessWidget {
  const _UpBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
          child: Row(
            children: const [
              Icon(
                Icons.location_history,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Общая информация')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
          child: Row(
            children: const [
              Icon(
                Icons.circle_notifications_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Отправка уведомлений')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
          child: Row(
            children: const [
              Icon(
                Icons.supervised_user_circle_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Список друзей')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.photo_camera,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Фотографии')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.video_collection_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Видео')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.slow_motion_video_sharp,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Истории')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.text_snippet_sharp,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Вики - страницы')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.text_snippet_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Статус профиля')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.receipt_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Заметки')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.messenger_outline_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Cooбщения')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.save_as_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Заметки')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.file_open_outlined,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Список файлов')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.stacked_line_chart_sharp,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Статистика')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.shopping_bag,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Ваши товары')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
          child: Row(
            children: const [
              Icon(
                Icons.call_sharp,
                color: Colors.blue,
                size: 30,
              ),
              SizedBox(width: 15),
              Expanded(child: Text('Истории')),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
      ],
    );
  }
}
