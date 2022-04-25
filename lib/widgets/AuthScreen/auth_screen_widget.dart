import 'dart:ui';

import 'package:flutter/material.dart';

class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({Key? key}) : super(key: key);
  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidget();
}

class _AuthScreenWidget extends State<AuthScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: const [
              _UpBaner(),
              SizedBox(height: 20),
              _AuthUsers(),
            ],
          ),
        ],
      ),
    );
  }
}

class _AuthUsers extends StatefulWidget {
  const _AuthUsers({Key? key}) : super(key: key);
  @override
  State<_AuthUsers> createState() => __AuthUsersState();
}

class __AuthUsersState extends State<_AuthUsers> {
  void _userInfo() {
    setState(() {
      Navigator.of(context).pushNamed('/auth_info');
    });
  }

  final _textEditingController = TextEditingController();
  String? errorText = null;

  void _authButt() {
    final _login = _textEditingController.text;

    if (_login == '89122951851' || _login == 'k-ea89@mail.ru') {
      setState(() {
        Navigator.of(context).pushNamed('/home_page');
      });
    } else {
      setState(() {
        errorText = 'Не правильный логин или пароль';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          if (errorText != null) ...[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                errorText,
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
          ],
          TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 7.0, bottom: 7.0, left: 10.0),
              hintText: 'Email или телефон',
              hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
              filled: true,
              fillColor: Colors.grey[250],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _authButt,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 114, vertical: 12),
              child: Text(
                'Продолжить',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Нажимая "Продолжить", вы принимаете:',
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(0))),
                onPressed: () {},
                child: const Text('Пользовательское соглашение',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey)),
              ),
              TextButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(0))),
                onPressed: () {},
                child: const Text('Политику конфеденсальности',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey)),
              ),
              TextButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(0))),
                onPressed: _userInfo,
                child: const Text('Передоваемые данные',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.grey)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _UpBaner extends StatelessWidget {
  const _UpBaner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: AssetImage('assets/images/VK_Compact_Logo.svg.png'),
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text('ID',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
              ],
            ),
            const SizedBox(height: 60),
            const Image(
              image: AssetImage('assets/images/VK_Compact_Logo.svg.png'),
              height: 80,
              width: 80,
            ),
            const SizedBox(height: 16.0),
            const Text('Введите номер', style: TextStyle(fontSize: 21.0)),
            const SizedBox(height: 16.0),
            const Text(
              'Ваш номер телефона будет использоваться для входа в аккаунт',
              style: TextStyle(
                  fontSize: 18.0, color: Color.fromRGBO(129, 140, 153, 1)),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
