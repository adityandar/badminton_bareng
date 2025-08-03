import 'package:badmintoon/dependencies/dependencies.dart';
import 'package:flutter/material.dart';

class BdToast {
  static ToastificationItem error(
    BuildContext context, {
    required String title,
    String? description,
  }) {
    return _show(
      context,
      type: ToastificationType.error,
      title: title,
      description: description,
    );
  }

  static ToastificationItem info(
    BuildContext context, {
    required String title,
    String? description,
  }) {
    return _show(
      context,
      type: ToastificationType.info,
      title: title,
      description: description,
    );
  }

  static ToastificationItem success(
    BuildContext context, {
    required String title,
    String? description,
  }) {
    return _show(
      context,
      type: ToastificationType.success,
      title: title,
      description: description,
    );
  }

  static ToastificationItem warning(
    BuildContext context, {
    required String title,
    String? description,
  }) {
    return _show(
      context,
      type: ToastificationType.warning,
      title: title,
      description: description,
    );
  }

  static ToastificationItem _show(
    BuildContext context, {
    required ToastificationType type,
    required String title,
    String? description,
  }) {
    return toastification.show(
      context: context,
      title: Text(title),
      description: description != null ? Text(description) : null,
      autoCloseDuration: const Duration(seconds: 5),
      type: type,
    );
  }
}
