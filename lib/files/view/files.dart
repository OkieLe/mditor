import 'package:flutter/material.dart';

import '../../l10n/wording.dart';
import '../../widgets/dividers.dart';
import '../../widgets/icon_text_menu.dart';
import 'file_manager.dart';

class FilesDrawerScaffold extends StatelessWidget {
  const FilesDrawerScaffold(
    this.body, {
    Key? key,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.backgroundColor,
    this.onDrawerChanged,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  final FloatingActionButton? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final DrawerCallback? onDrawerChanged;
  final Color? backgroundColor;

  void _openSettings() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      backgroundColor: backgroundColor,
      onDrawerChanged: onDrawerChanged,
      drawer: Drawer(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: FileManager(),
            ),
            Dividers.horizontal(),
            IconTextMenu(
              icon: Icons.settings_applications,
              label: S.of(context).settings,
              onTap: _openSettings,
            )
          ],
        ),
      ),
    );
  }
}
