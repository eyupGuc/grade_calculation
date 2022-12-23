import 'package:dinamik_not_hesaplama/constants/app_constants.dart';
import 'package:dinamik_not_hesaplama/data_helper.dart';
import 'package:flutter/material.dart';

class KredilerDropdown extends StatefulWidget {
  final Function onKrediSecildi;
  const KredilerDropdown({Key? key, required this.onKrediSecildi}) : super(key: key);

  @override
  State<KredilerDropdown> createState() => _KredilerDropdownState();
}

class _KredilerDropdownState extends State<KredilerDropdown> {
  double secilerKrediDegeri = 4;
  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
          color: Sabitler.anaRenk.shade100.withOpacity(0.3),
          borderRadius: Sabitler.borderRadius),
      child: DropdownButton<double>(
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        value: secilerKrediDegeri,
        onChanged: (deger) {
          setState(() {
            secilerKrediDegeri = deger!;
           widget.onKrediSecildi(deger);
          });
        },
        underline: Container(),
        items: DataHelper.tumDerslerinKredileri(),
      ),
    );
  }
}
