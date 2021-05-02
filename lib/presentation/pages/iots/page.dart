import 'package:deforestation_detection/dependency_injection.dart' as di;
import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/presentation/blocs/groups/groups_bloc.dart';
import 'package:deforestation_detection/presentation/blocs/iots/iots_bloc.dart';
import 'package:deforestation_detection/presentation/blocs/login/login_bloc.dart';
import 'package:deforestation_detection/presentation/widgets/success_operation_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/all_iots_list.dart';
import 'components/iot_info_dialog.dart';
import 'components/position_not_suitable_dialog.dart';
import 'components/signaling_iots_list.dart';

class IotsPage extends StatefulWidget {
  @override
  _IotsPageState createState() => _IotsPageState();
}

class _IotsPageState extends State<IotsPage> {
  final LoginBloc _loginBloc = di.sl.get();
  final IotsBloc _iotsBloc = di.sl.get();
  final GroupsBloc _groupsBloc = di.sl.get();

  bool _showAllIots = false;

  void _addIotDialog() {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return IotInfoDialog(
          callback: (Iot iot) {
            _iotsBloc.add(IotsBlocEvent.createIotWithPositionCheck(iot));
          },
        );
      },
    );
  }

  void _addGroup(int userId) {
    _groupsBloc.add(GroupsBlocEvent.createGroup(userId));
  }

  void _reloadIots() {
    _iotsBloc.add(const ReloadIotsEvent());
  }

  void _changeIotsView(bool value) {
    if (value) {
      _iotsBloc.add(const IotsBlocEvent.getIots());
    } else {
      _iotsBloc.add(const IotsBlocEvent.getSignalingIots());
    }
    setState(() {
      _showAllIots = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginBlocState>(
        bloc: _loginBloc,
        builder: (BuildContext context, LoginBlocState loginSnapshot) {
          if (loginSnapshot.status == LoginBlocStatus.Login) {
            return MultiBlocListener(
              listeners: [
                BlocListener<IotsBloc, IotsBlocState>(
                  bloc: _iotsBloc,
                  listener: (BuildContext context, IotsBlocState snapshot) {
                    if (snapshot.status == IotsBlocStatus.OperationSuccess) {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return const SuccessOperationDialog();
                        },
                      );
                    } else if (snapshot.status ==
                        IotsBlocStatus.IotPositionIsNotSuitable) {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return NotSuitablePositionDialog(
                            suitablePosition: snapshot.suitablePosition!,
                            onCancelTap: () {
                              _iotsBloc.add(IotsBlocEvent.createIot(
                                  snapshot.rejectedIot!));
                            },
                          );
                        },
                      );
                    } else if (snapshot.status == IotsBlocStatus.Error) {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Center(
                              child: Text(
                                'something_went_wrong'.tr() +
                                    snapshot.error.toString(),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
                BlocListener<GroupsBloc, GroupsBlocState>(
                  bloc: _groupsBloc,
                  listener: (BuildContext context, GroupsBlocState snapshot) {
                    if (snapshot.status == GroupsBlocStatus.OperationSuccess) {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return const SuccessOperationDialog();
                        },
                      );
                    } else if (snapshot.status == GroupsBlocStatus.Error) {
                      showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Center(
                              child: Text(
                                'something_went_wrong'.tr() +
                                    snapshot.error.toString(),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ],
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.white54,
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 20.0,
                      bottom: 10.0,
                      right: 100.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        if (loginSnapshot.user!.role! != 'observer')
                          OutlinedButton(
                            onPressed: _addIotDialog,
                            child: Text(
                              'add_iot'.tr(),
                            ),
                          ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        if (loginSnapshot.user!.role! != 'observer')
                          OutlinedButton(
                            onPressed: () {
                              _addGroup(loginSnapshot.user!.id!);
                            },
                            child: Text(
                              'add_group'.tr(),
                            ),
                          ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.update,
                          ),
                          onPressed: _reloadIots,
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        if (loginSnapshot.user!.role! == 'admin' ||
                            loginSnapshot.user!.role! == 'manager')
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Checkbox(
                                value: _showAllIots,
                                onChanged: (bool? value) {
                                  if (value != null) {
                                    _changeIotsView(value);
                                  }
                                },
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Text('show_all_iots'.tr()),
                            ],
                          ),
                        const Spacer(),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                context.setLocale(const Locale('en'));
                              },
                              child: const Text(
                                'ENG',
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextButton(
                              onPressed: () {
                                context.setLocale(const Locale('uk'));
                              },
                              child: const Text(
                                'УКР',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  BlocBuilder<IotsBloc, IotsBlocState>(
                    bloc: _iotsBloc,
                    builder: (BuildContext context, IotsBlocState snapshot) {
                      if (snapshot.status == IotsBlocStatus.Error) {
                        return Center(
                          child: Text(
                            snapshot.error.toString(),
                          ),
                        );
                      } else if (snapshot.status == IotsBlocStatus.Loading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (_showAllIots) {
                        return AllIotsList(
                          iotsInfo: snapshot.iots!,
                        );
                      }
                      return SignalingIotsList(
                        iotsInfo: snapshot.iots!,
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
