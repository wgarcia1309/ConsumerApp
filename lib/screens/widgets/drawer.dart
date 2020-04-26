import 'package:consumo_web/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CustomDrawer extends StatelessWidget {
  final scaffoldKey;
  final name;
  final email;
  final onTap1;
  final onTap2;
  final onTap3;

  const CustomDrawer(
      {Key key,
      @required this.scaffoldKey,
      @required this.name,
      @required this.email,
      @required this.onTap1,
      @required this.onTap2,
      @required this.onTap3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 24.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 66.00,
                  width: 66.00,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://api.adorable.io/avatars/285/${this.email}'),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          this.name,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColors.tundora,
                          ),
                        ),
                        Text(
                          this.email,
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 14,
                            color: AppColors.edward,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.tundora,
                  ),
                  onPressed: () {
                    this.scaffoldKey.currentState.openEndDrawer();
                  },
                ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(LineIcons.university),
              title: Text(
                "Cursos",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.tundora,
                ),
              ),
              dense: true,
              onTap: this.onTap1),
          ListTile(
              leading: Icon(LineIcons.user),
              title: Text(
                "Profesores",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.tundora,
                ),
              ),
              dense: true,
              onTap: this.onTap2),
          ListTile(
              leading: Icon(LineIcons.users),
              title: Text(
                "Estudiantes",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.tundora,
                ),
              ),
              dense: true,
              onTap: this.onTap3),
        ],
      ),
    );
  }
}
