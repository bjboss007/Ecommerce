import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(errors.length, (index)=> formErrorText(text: errors[index]),)
    );
  }

  Row formErrorText({String text}) {
    return Row(
        children: [
          SvgPicture.asset(
            "assets/icons/Error.svg",
            height: getProportionateHeight(14),
            width: getProportionateWidth(14),
          ),
          SizedBox(width: getProportionateWidth(20),),
          Text(text)
        ],
      );
  }
}
