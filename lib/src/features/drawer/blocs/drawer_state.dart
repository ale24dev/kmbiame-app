import 'package:equatable/equatable.dart';
import 'package:kmbiame/src/models/user_base_model.dart';


enum DrawerStatus{authenticated, unauthenticated, unknown}

class DrawerState extends Equatable{
  final DrawerStatus status;
  final UserBaseModel? user;

  const DrawerState._({required this.status, this.user});

  const DrawerState.unknown() : this._(status: DrawerStatus.unknown);

  const DrawerState.authenticated(UserBaseModel newUser) : this._(status: DrawerStatus.authenticated, user: newUser);

  const DrawerState.unauthenticated() : this._(status: DrawerStatus.unauthenticated);

  @override
  get props => [status];
}

