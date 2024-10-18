import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'home_model.dart';

part 'home.g.dart';

@Riverpod(keepAlive: true)
class Home extends _$Home {
  @override
  HomeModel build() => HomeModel(
        month: DateTime.now().month,
        loading: true,
      );

  void setMonth(int month) {
    state = state.copyWith(month: month, loading: false);
  }
}
