import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:python_project/locator.dart';
import 'package:python_project/routing/route_names.dart';
import 'package:python_project/services/navigation_services.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            navigationPath: Home,
            active: selected[0],
            icon: FeatherIcons.home,
            touched: () {
              setState(() {
                select(0);
              });
            },
          ),
          NavBarItem(
            navigationPath: Tela_2,
            active: selected[3],
            icon: FeatherIcons.messageSquare,
            touched: () {
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            navigationPath: DashBoard,
            active: selected[1],
            icon: FeatherIcons.list,
            touched: () {
              setState(() {
                select(1);
              });
            },
          ),
          NavBarItem(
            navigationPath: Tela_1,
            active: selected[2],
            icon: FeatherIcons.folder,
            touched: () {
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            navigationPath: Tela_3,
            active: selected[4],
            icon: Icons.people_alt_rounded,
            touched: () {
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function touched;
  final bool active;
  final String navigationPath;

  const NavBarItem({
    Key key,
    this.icon,
    this.touched,
    this.active,
    this.navigationPath,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          locator<NavigationService>().navigateTo(widget.navigationPath);
          widget.touched();
        },
        splashColor: Colors.white,
        hoverColor: Colors.white12,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3.0),
          child: Row(
            children: [
              Container(
                height: 60.0,
                width: 80.0,
                child: Row(
                  children: [
                    AnimatedContainer(
                      duration: Duration(milliseconds: 475),
                      height: 35.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                        color:
                            widget.active ? Colors.white : Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Icon(
                        widget.icon,
                        color: widget.active ? Colors.white : Colors.white54,
                        size: 19.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
