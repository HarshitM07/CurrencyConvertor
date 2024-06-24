import 'package:flutter/cupertino.dart';

class CurrencyConvertorCupertinoPage extends StatefulWidget {
  const CurrencyConvertorCupertinoPage({super.key});

  @override
  State<CurrencyConvertorCupertinoPage> createState() =>
      _CurrencyConvertorCupertinoPageState();
}

class _CurrencyConvertorCupertinoPageState
    extends State<CurrencyConvertorCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 83.47;
    setState(() {
      //triggers a rebuild using the build fn
    });
  }

  @override
  Widget build(BuildContext context) {
    print('rebuilt');

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Convertor',
          style: TextStyle(
            color: CupertinoColors.white,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(4) : result.toStringAsFixed(0)}',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: CupertinoColors.white),
              ),
              //padding vs container
              CupertinoTextField(
                controller: textEditingController,
                style: TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the value in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              //buttons
              //raised or elevated
              //textbutton

              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: Text('Convert'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
