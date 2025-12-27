import 'package:app/utils/constant/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:upgrader/upgrader.dart';

class UpgradeGate {
  static final ValueNotifier<bool> showing = ValueNotifier<bool>(false);
}

class MyUpgradeAlert extends UpgradeAlert {
  MyUpgradeAlert({
    super.key,
    super.upgrader,
    super.child,
    super.showLater,
    super.showIgnore,
    super.barrierDismissible,
    super.showReleaseNotes,
  });

  @override
  UpgradeAlertState createState() => MyUpgradeAlertState();
}

class MyUpgradeAlertState extends UpgradeAlertState {
  @override
  void showTheDialog({
    Key? key,
    required BuildContext context,
    required String? title,
    required String message,
    required String? releaseNotes,
    required bool barrierDismissible,
    required UpgraderMessages messages,
  }) {
    final appStoreVersion = widget.upgrader.currentAppStoreVersion;
    final installedVersion = widget.upgrader.currentInstalledVersion;

    if (UpgradeGate.showing.value) return;
    UpgradeGate.showing.value = true;

    showGeneralDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      barrierLabel: 'Upgrade',
      barrierColor: Colors.black54,
      useRootNavigator: true,
      pageBuilder: (dialogContext, animation, secondaryAnimation) {
        return WillPopScope(
          onWillPop: () async => barrierDismissible,
          child: Scaffold(
            backgroundColor: Colors.grey[50],
            body: SafeArea(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.update, size: 150, color: TColors.primary),

                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        "New Version Available!",
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: TColors.textPrimary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Version $appStoreVersion is available.\n"
                      "You are currently using $installedVersion.",
                      style: const TextStyle(
                        fontSize: 16,
                        color: TColors.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    if (releaseNotes != null && releaseNotes.isNotEmpty)
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          releaseNotes,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: TColors.primary,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 16,
                          ),
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          onUserUpdated(
                            dialogContext,
                            !widget.upgrader.blocked(),
                          );
                        },
                        child: const Text("Update Now"),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (!kReleaseMode) ...[
                      TextButton(
                        onPressed: () {
                          Navigator.of(
                            dialogContext,
                            rootNavigator: true,
                          ).pop();
                        },
                        child: const Text("Dismiss (Test Only)"),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
      },
    ).whenComplete(() {
      UpgradeGate.showing.value = false;
    });
  }
}
