import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kmbiame/src/models/user_base_model.dart';
import 'package:kmbiame/src/repositories/auth_repository.dart';
import 'package:kmbiame/src/shared/app_info.dart';
import 'package:kmbiame/src/shared/extensions.dart';

import '../../../shared/widgets/error_dialog.dart';
import 'drawer_state.dart';

class DrawerCubit extends Cubit<DrawerState> {
  late UserBaseModel? _user;
  late AppInfo? appInfo;

  DrawerCubit() : super(const DrawerState.unknown());

  Future<void> getUser(BuildContext context) async {
    appInfo = await AppInfo.getInstace(context);
    _user = appInfo?.user;
    if (_user != null) {
      emit(DrawerState.authenticated(_user!));
    } else {
      emit(const DrawerState.unauthenticated());
    }
  }

  Future<void> logOut(BuildContext context) async {
    try {
      AuthRepository authRepository = AuthRepository();
      //await authRepository.logOut(context);
      //Utils.showToast(context.loc.logout);
      //Utils.logOut(context);
      Navigator.of(context).pop();
    } catch (e) {
      Navigator.of(context).pop();
      showDialog(
          context: context,
          builder: (cntxt) {
            return ErrorDialog(
              errorText: e.toString(),
              buttonText: cntxt.loc.close,
              onTap: () {
                Navigator.of(cntxt).pop();
              },
            );
          });
    }
  }
}
