import 'package:badmintoon/shared/shared.dart';
import 'package:flutter/material.dart';

class DbDismissible extends Dismissible {
  DbDismissible({required super.key, required super.child, super.onDismissed})
    : super(
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 16),
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.delete, color: Colors.white),
              Text(
                'Hapus',
                style: BdTStyles.s10w600.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      );
}
