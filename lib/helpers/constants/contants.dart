import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

//contantes das cores usadas
const kMainColor = Color(0xFF870F79);
const kBackColor = Color(0xFFB928B1);
const kButtonColor = Color(0xFFFDFD07);

//TODO: colocar um if para as letras alternarem de acordo com o tamanho da ela
//contantes para diferentes textos
const kTextoNomeContato = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
const kTextoBairroContato = TextStyle(
  fontSize: 15,
);
const kTextoDependentesContato = TextStyle(
  fontSize: 15,
);
const kTextoBotao =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kButtonColor);

//layout sizes
const kMobileBreakpoint = 576;
const kTabletBreakpoint = 1024;
const kDesktopBreakPoint = 1366;

//TODO: usar a classe abaixo para as letras alternarem de acordo com o tamanho da ela o return seria um textstyle
class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;

      double titleSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;
      double descriptionSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;
      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FLUTTER WEB.\nTHE BASICS',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                height: 0.9,
                fontSize: titleSize,
              ),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
              style: TextStyle(
                fontSize: descriptionSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            )
          ],
        ),
      );
    });
  }
}
