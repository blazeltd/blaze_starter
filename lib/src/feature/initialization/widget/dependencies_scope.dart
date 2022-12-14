import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizzle_starter/src/core/utils/mixin/scope_mixin.dart';
import 'package:sizzle_starter/src/feature/initialization/model/initialization_progress.dart';

/// A widget which is responsible for providing the dependencies.
class DependenciesScope extends InheritedWidget with ScopeMixin {
  const DependenciesScope({
    required super.child,
    required this.dependencies,
    super.key,
  });

  final DependenciesStore dependencies;

  static DependenciesStore? maybeOf(BuildContext context) =>
      ScopeMixin.scopeMaybeOf<DependenciesScope>(
        context,
        listen: false,
      )?.dependencies;

  static DependenciesStore of(BuildContext context) => maybeOf(context)!;

  @override
  bool updateShouldNotify(DependenciesScope oldWidget) => false;
}
