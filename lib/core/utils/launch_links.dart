import 'package:url_launcher/url_launcher.dart';

/// LaunchLinks Singleton class
class LaunchLinks {
  factory LaunchLinks() => _internalSingleton;
  LaunchLinks._internal();
  static final LaunchLinks _internalSingleton = LaunchLinks._internal();

  static Future<void> launchEmail(
    String path, {
    String? from,
    String? subject,
    String? body,
  }) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map(
            (MapEntry<String, String> e) =>
                '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
          )
          .join('&');
    }

    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: path,
      query: encodeQueryParameters(<String, String>{
        'subject': subject ?? '',
        'from': from ?? '',
        'body': body ?? '',
      }),
    );

   final _ = await launchUrl(emailLaunchUri);
  }

  static Future<void> launchPhoneDialer(String contactNumber) async {
    final uri = Uri(scheme: 'tel', path: contactNumber);
    if (!await launchUrl(uri)) {
      // ignore: only_throw_errors
      throw 'Could not launch $contactNumber';
    }
  }

  static Future<void> urlExternal(String value) async {
    final url = Uri.parse(value);
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      // ignore: only_throw_errors
      throw 'Could not launch $value';
    }
  }
  
  static Future<void> urlInternal(String value) async {
    final url = Uri.parse(value);
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      // ignore: only_throw_errors
      throw 'Could not launch $value';
    }
  }
}
