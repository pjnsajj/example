import 'package:flutter/material.dart';
import '../widgets/ishtapp_widgets.dart';

class StartScreenWidget extends StatefulWidget {
  const StartScreenWidget({super.key});

  @override
  State<StartScreenWidget> createState() => _StartScreenWidgetState();
}

class _StartScreenWidgetState extends State<StartScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ishtapp',
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.green,
        body: ListView(
          padding: const EdgeInsets.only(top: 200),
          children: const [
            _PleaseSelect(),
            _SearchJob(),
          ],
        ));
  }
}

class _PleaseSelect extends StatelessWidget {
  const _PleaseSelect();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Пожалуйста',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'выберите',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class _SearchJob extends StatefulWidget {
  const _SearchJob();

  @override
  State<_SearchJob> createState() => _SearchJobState();
}

class _SearchJobState extends State<_SearchJob> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                      title: const Text('ishtapp'),
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('register_list');
                                },
                                child: Container(
                                  decoration: GreenDecoration,
                                  height: 30,
                                  child: const Text(
                                    ' Регистрация ',
                                    textAlign: TextAlign.center,
                                    style: WhiteTextStyle,
                                  ),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('auth_list');
                                },
                                child: Container(
                                  decoration: GreenDecoration,
                                  height: 30,
                                  child: const Text(
                                    ' Войти ',
                                    textAlign: TextAlign.center,
                                    style: WhiteTextStyle,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ));
              },
            ));
          },
          child: Container(
            decoration: WhiteDecorarion,
            height: 30,
            child: const Text(
              ' Ищу работу ',
              textAlign: TextAlign.center,
              style: GreenTextStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                      title: const Text('ishtapp'),
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          ' Войти ',
                          textAlign: TextAlign.center,
                          style: WhiteTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: GreenDecoration,
                                  height: 30,
                                  child: const Text(
                                    ' Регистрация ',
                                    textAlign: TextAlign.center,
                                    style: WhiteTextStyle,
                                  ),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: GreenDecoration,
                                  height: 30,
                                  child: const Text(
                                    ' Войти ',
                                    textAlign: TextAlign.center,
                                    style: WhiteTextStyle,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ));
              },
            ));
          },
          child: Container(
            decoration: WhiteDecorarion,
            height: 30,
            child: const Text(
              'Возможности для молодежи',
              textAlign: TextAlign.center,
              style: GreenTextStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                      title: const Text('ishtapp'),
                    ),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: GreenDecoration,
                                  height: 30,
                                  child: const Text(
                                    ' Регистрация ',
                                    textAlign: TextAlign.center,
                                    style: WhiteTextStyle,
                                  ),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: Container(
                                  decoration: GreenDecoration,
                                  height: 30,
                                  child: const Text(
                                    ' Войти ',
                                    textAlign: TextAlign.center,
                                    style: WhiteTextStyle,
                                  ),
                                ))
                          ],
                        ),
                      ],
                    ));
              },
            ));
          },
          child: Container(
            decoration: WhiteDecorarion,
            height: 30,
            child: const Text(
              'Вход для компании',
              textAlign: TextAlign.center,
              style: GreenTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
