import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp/whatsapp.dart';

class CheckOutItems extends StatefulWidget {
  const CheckOutItems({
    Key? key,
  }) : super(key: key);

  @override
  State<CheckOutItems> createState() => _CheckOutItemsState();
}

class _CheckOutItemsState extends State<CheckOutItems> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const Text.rich(
                TextSpan(
                  text: 'Total:\n',
                  children: [
                    TextSpan(
                      text: '71.25 IQD',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: SizedBox(
                  width: 190,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: Colors.white,
                      backgroundColor: const Color(0xff67C4A7),
                    ),
                    child: const Text(
                      'Check out',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold

                      ),
                    ),
                    onPressed: () {
                    _openWhatsAppChat();
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 void _openWhatsAppChat()async{
  String phoneNumber = '+96446567693';
  var whatsappUrlIos = Uri.parse('https://wa.me/$phoneNumber?text=HelloWorld');
  var whatsappUrlAndroid = Uri.parse('whatsapp://send?phone=$phoneNumber?text=HelloWorld');

  if(Platform.isIOS){
    if(await canLaunchUrl(whatsappUrlIos)){
      await launchUrl(whatsappUrlIos);
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Whatsapp not installed')));
    } 
  }else{
    if(await canLaunchUrl(whatsappUrlAndroid)){
      await launchUrl(whatsappUrlAndroid);
    } else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Whatsapp not installed')));
    } 
  }
  
} 