import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/widgets/widgets.dart';
import 'package:flutter_whatsapp_clone/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneControlller = TextEditingController();
  Country? country;

  @override
  void dispose() {
    phoneControlller.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
      context: context,
      countryFilter: <String>['KR', 'US', 'JP', 'CN'],
      onSelect: (Country _country) {
        setState(() {
          country = _country;
        });
        debugPrint('Select country: ${_country.displayName}');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text('WhatsApp will need to verify your phone number.'),
            const SizedBox(height: 10),
            TextButton(
              onPressed: pickCountry,
              child: const Text('Pick Country'),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (country != null) Text('+${country?.phoneCode}'),
                const SizedBox(width: 10),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    controller: phoneControlller,
                    decoration: const InputDecoration(
                      hintText: 'phone number',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.6),
            SizedBox(
              width: 90,
              child: CustomButton(
                onPressed: () {},
                text: 'NEXT',
              ),
            )
          ],
        ),
      ),
    );
  }
}
