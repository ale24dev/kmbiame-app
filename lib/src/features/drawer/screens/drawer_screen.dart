import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/src/features/auth/register_screen.dart';
import 'package:kmbiame/src/repositories/auth_repository.dart';
import 'package:kmbiame/src/shared/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../blocs/drawer_cubit.dart';
import '../blocs/drawer_state.dart';
import '../widgets/drawer_tile.dart';
import '../../../../resources/general_styles.dart';

class DrawerScreen extends StatelessWidget {
  AuthRepository authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DrawerCubit(),
      child: Drawer(
        backgroundColor: context.theme.primaryColor,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: GStyles.fontGradient,
                  ),
                  child: BlocBuilder<DrawerCubit, DrawerState>(
                    builder: (context, state) {
                      DrawerCubit bloc = BlocProvider.of<DrawerCubit>(context);
                      if (state.status == DrawerStatus.unknown) {
                        bloc.getUser(context);
                      }
                      return GestureDetector(
                        onTap: () {
                          if (state.status == DrawerStatus.unauthenticated) {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const RegisterScreen();
                            }));
                          } else if (state.status ==
                              DrawerStatus.authenticated) {
                            Navigator.of(context).pop();
                            /*Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ProfileScreen(context);
                            }));*/
                          }
                        },
                        child: Row(
                          children: [
                            const Text("UserImage"),
                            //state.status == DrawerStatus.authenticated
                            //  ? userImage(state)
                            //   : Text("UserImage"),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                                child: FittedBox(
                              alignment: Alignment.centerLeft,
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "ale",
                                // state.status == DrawerStatus.authenticated
                                //      ? state.user!.username
                                //      : "context.loc.auth",
                                style: context.textTheme.headline4!
                                    .copyWith(color: Colors.white),
                                maxLines: 1,
                              ),
                            )),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.only(top: 15),
                    children: [
                      DrawerTile(
                        onTap: () {
                          Navigator.pop(context);
                          /*Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return StatsScreen(context);
                          }));*/
                        },
                        icon: "home",
                        textTitle: "home",
                      ),
                    ],
                  ),
                ),
                BlocBuilder<DrawerCubit, DrawerState>(
                    builder: (context, state) {
                  if (state.status == DrawerStatus.authenticated) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () async {
                          BlocProvider.of<DrawerCubit>(context).logOut(context);
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: GStyles.colorPrimary,
                            size: 34,
                          ),
                          title: Text(
                            "logout",
                            style: context.textTheme.headline5!
                                .copyWith(color: Colors.black, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
/*
  Widget userImage(DrawerState state) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(1000),
      child: CachedNetworkImage(
        height: 80,
        width: 80,
        imageUrl: '${Urls.host}${state.user?.photo}',
        placeholder: (context, url) => const CircularProgressIndicator(
          color: Colors.white,
          strokeWidth: 4,
        ),
        errorWidget: (context, url, error) => const CircularUser(),
      ),
    );
  }*/
}
