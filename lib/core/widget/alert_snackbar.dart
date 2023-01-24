import 'package:dialysis/app/style/style.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySnackBar {
  static void show({
    required BuildContext context,
    required AlertType alertType,
    required String title,
    String? msg,

    FlashPosition position = FlashPosition.top,
    Duration? duration,
  }) {
    final _ = showFlash(
      context: context,
      duration: duration,
      persistent: false,
      builder: (_, controller) {
        return Flash<void>(
          controller: controller,
          behavior: FlashBehavior.floating,
          position: position,
          child: MyAlert(
            alertType: alertType,
            title: title,
                 textMsg: msg,


            context: context,
          ),
        );
      },
    );
  }
}

enum AlertType { info, warning, success, error }

class MyAlert extends StatelessWidget {
  const MyAlert({
    super.key,
    required this.alertType,
    required this.context,
    required this.title,
    this.textMsg,


 
  });

  final String? textMsg;
  final BuildContext context;
  final String title;
  final AlertType alertType;



  _AlertChangingElements _getDiffer(AlertType alertType) {
    switch (alertType) {
      case AlertType.info:
        return const _AlertChangingElements(
          pathIcon: 'assets/svg/ic_info.svg',
          pathIconClose: 'assets/svg/ic_info_close.svg',
        );

      case AlertType.warning:
        return const _AlertChangingElements(
          pathIcon: 'assets/svg/ic_warning.svg',
          pathIconClose: 'assets/svg/ic_warning_close.svg',
        );
      case AlertType.success:
        return const _AlertChangingElements(
          pathIcon: 'assets/svg/ic_success.svg',
          pathIconClose: 'assets/svg/ic_success_close.svg',
        );
      case AlertType.error:
        return const _AlertChangingElements(
         
          pathIcon: 'assets/svg/ic_error.svg',
          pathIconClose: 'assets/svg/ic_error_close.svg',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final diff = _getDiffer(alertType);
    final colorBg = Theme.of(this.context).colorScheme.background;

    final colorText = Theme.of(this.context).textTheme.bodyText2!.color;

    return Container(
      
            color: colorBg,
            width: double.infinity,
            child: Wrap(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 10),
                    SizedBox(
                      height: 15,
                      child: SvgPicture.asset(diff.pathIcon,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        title,
                        style: AppTextStyles.s14w500h20(
                          colorText,
                        ),
                      ),
                    ),
                    
                  ],
                ),
                if (textMsg != null )
                  Container(
                    padding:
                        const EdgeInsets.only(left: 35, right: 15, bottom: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                            textMsg!,
                            style: AppTextStyles.s11w400h14(colorText),
                          ),
                  ),
  
              ],
            ),
          );
  }
}

@immutable
class _AlertChangingElements {
  const _AlertChangingElements({
    required this.pathIconClose,
    required this.pathIcon,
  });
  final String pathIconClose;
  final String pathIcon;
}
