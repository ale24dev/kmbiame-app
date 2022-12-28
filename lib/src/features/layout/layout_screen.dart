import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/src/features/drawer/screens/drawer_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'package:kmbiame/src/shared/extensions.dart';
import 'package:kmbiame/src/features/home/screen/home_screen.dart';

import 'navigation_cubit.dart';
import 'constants/nav_bar_items.dart';
import '../../../resources/icons.dart';
import '../../../resources/general_styles.dart';

class LayoutScreen extends StatelessWidget {
  /// Altura de la barra superior de la app.
  static const double APP_BAR_HEIGHT = 60;

  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
         backgroundColor: Colors.white,
      drawer: DrawerScreen(),
      appBar: appBarBuilder(context),
        body: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
          switch (state.navbarItem) {
            case NavbarItem.home:
              return HomeScreen(context);
            case NavbarItem.favs:
              return Center(
                child: Text(
                  "Favs",
                  style: context.textTheme.headline1!
                      .copyWith(color: GStyles.colorPrimary),
                ),
              );
            case NavbarItem.settings:
              // return Center(child: Text(context.loc.contest, style: context.textTheme.headline1!.copyWith(color: GStyles.colorPrimary1),),);
              return Center(
                child: Text(
                  "Settings",
                  style: context.textTheme.headline1!
                      .copyWith(color: GStyles.colorPrimary),
                ),
              );
          }
        }),
        bottomNavigationBar: bottomNavigationBarBuilder(context),
      ),
    );
  }

  AppBar appBarBuilder(BuildContext context) {
    return AppBar(
      /*leading: Padding(
        padding: EdgeInsets.all(17.sp),
        child: Image.asset(
          KmbiameIcons.menu,
        ),
      ),*/
      elevation: 0,
      toolbarHeight: APP_BAR_HEIGHT,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: GStyles.fontGradient,
        ),
      ),
      centerTitle: true,
      title: RichText(
        text: TextSpan(style: context.textTheme.bodyText1, children: [
          TextSpan(
              text: "K'",
              style: context.theme.textTheme.headline4!.copyWith(
                  color: GStyles.colorSecondary,
                  fontFamily: GStyles.fontOkine)),
          TextSpan(
              text: "mbiame",
              style: context.theme.textTheme.headline4!.copyWith(
                  color: Colors.white, fontFamily: GStyles.fontOkine)),
        ]),
        textAlign: TextAlign.center,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 2.w),
          decoration: BoxDecoration(
              color: Colors.grey.shade300, shape: BoxShape.circle),
          child: Padding(
            padding: EdgeInsets.all(6.sp),
            child: const Icon(Icons.person_outline),
          ),
        )
      ],
    );
  }

  Widget bottomNavigationBarBuilder(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
      return Container(
        decoration: BoxDecoration(
          color: GStyles.colorPrimary,
          gradient: GStyles.fontGradient,
        ),
        child: BottomNavigationBar(
          currentIndex: state.index,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedLabelStyle: context.textTheme.subtitle1,
          unselectedLabelStyle: context.textTheme.subtitle2,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.transparent,
              icon: bottomNavIcon(KmbiameIcons.home),
              activeIcon: bottomNavIcon(
                KmbiameIcons.homeSelected,
              ),
              label: context.loc.home,
            ),
            BottomNavigationBarItem(
              icon: bottomNavIcon(KmbiameIcons.heart),
              activeIcon: bottomNavIcon(KmbiameIcons.heartSelected),
              label: context.loc.favs,
            ),
            BottomNavigationBarItem(
                icon: bottomNavIcon(
                  KmbiameIcons.settings,
                ),
                activeIcon: bottomNavIcon(
                  KmbiameIcons.settingsSelected,
                ),
                label: context.loc.settings),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.home);
                break;
              case 1:
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.favs);
                break;
              case 2:
                BlocProvider.of<NavigationCubit>(context)
                    .getNavBarItem(NavbarItem.settings);
                break;
            }
          },
        ),
      );
    });
  }

  Widget drawerBuilder(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          GestureDetector(
            child: Text(
              'Auth',
              style: context.textTheme.headline3!
                  .copyWith(color: context.theme.primaryColor),
            ),
            onTap: () {
              //Navigator.of(context).pop();
              //Navigator.of(context).pop();
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //  return const AuthScreen();
              //}));
            },
          ),
          GestureDetector(
            child: Text('Profile',
                style: context.textTheme.headline3!
                    .copyWith(color: context.theme.primaryColor)),
            onTap: () async {
              /* Navigator.of(context).pop();
              await Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return ProfileScreen(context);
              }));*/
            },
          )
        ],
      ),
    );
  }

  Widget bottomNavIcon(String icon) {
    return Image.asset(
      icon,
      height: 22.sp,
      width: 22.sp,
      color: Colors.white,
    );
  }
}
