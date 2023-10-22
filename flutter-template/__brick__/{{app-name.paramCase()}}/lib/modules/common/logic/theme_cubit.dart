
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeState extends Equatable {
  final ThemeMode theme;
  // Constructor that takes the theme.
  const ThemeState(
    this.theme,
  );

  @override
  List<Object> get props => [theme];

Map<String, dynamic> toMap() {
    return <String, String>{
      'theme': theme.name,
    };
  }

  factory ThemeState.fromMap(Map<String, dynamic> map) {
    if (map['theme'] == ThemeMode.dark.name) {
      return const ThemeState(
        ThemeMode.dark,
      );
    } else if (map['theme'] == ThemeMode.light.name) {
      return const ThemeState(
        ThemeMode.light,
      );
    } else {
      return const ThemeState(
        ThemeMode.system,
      );
    }
  }

  String toJson() => json.encode(toMap());

  factory ThemeState.fromJson(String source) =>
      ThemeState.fromMap(json.decode(source) as Map<String, ThemeMode>);
}

// Represents the initial state of the theme.
class ThemeInitial extends ThemeState {
  const ThemeInitial(ThemeMode theme) : super(theme);
}

// Represents the Cubit for managing the theme state.
class ThemeCubit extends Cubit<ThemeState> with HydratedMixin {
  ThemeCubit() : super(const ThemeInitial(ThemeMode.system));

  // Changes the theme and emits the new state
  changeTheme(ThemeMode theme) {
    emit(ThemeInitial(theme));
    emit(ThemeState(theme));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromMap(json['theme']);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toMap();
  }
}
