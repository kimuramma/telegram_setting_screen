import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> firstMenuRow = [
    MenuRowData(
      Icons.favorite,
      'Избранное',
    ),
    MenuRowData(
      Icons.call,
      'Звонки',
    ),
    MenuRowData(
      Icons.computer,
      'Устройства',
    ),
    MenuRowData(
      Icons.folder,
      'Папка с чатами',
    ),
  ];
  List<MenuRowData> secondMenuRow = [
    MenuRowData(
      Icons.notifications,
      'Уведомление и звуки',
    ),
    MenuRowData(
      Icons.privacy_tip,
      'Конфедициальность',
    ),
    MenuRowData(
      Icons.date_range,
      'Данные и память',
    ),
    MenuRowData(
      Icons.brush,
      'Оформления',
    ),
    MenuRowData(
      Icons.language,
      'Язык',
    ),
  ];
  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Настройки'),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _UserInfo(),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(menuRow: firstMenuRow),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(menuRow: secondMenuRow),
          ],
        ),
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;
  const _MenuWidget({
    Key? key,
    required this.menuRow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(
            width: 15,
          ),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          _AvatarWidget(),
          SizedBox(
            height: 20,
          ),
          _UserNameWidget(),
          SizedBox(
            height: 8,
          ),
          _UserPhoneWidget(),
          SizedBox(
            height: 8,
          ),
          _UserNickNameWidget(),
        ],
      ),
    );
  }
}

class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('@KiMura');
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('+7 (747) 300 18 89');
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Мураткали <KiMura> Жакешов',
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 90, height: 90, child: Placeholder());
  }
}
