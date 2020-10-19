import 'package:flutter/material.dart';

class FrikiEventItem extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final String description;
  final Function onTap;

  const FrikiEventItem(
      {Key key,
      this.image,
      this.title,
      this.date,
      this.description,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 24, left: 24, top: 24),
        width: size.width,
        height: 128,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 104,
              height: 104,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.red),
            ),
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    constraints: BoxConstraints(
                        maxWidth: size.width - 150
                    ),
                    child: Text(
                      "Feria Friki Extreme ",
                      style: TextStyle(
                          color: Color(0xff00A6A5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top:5.0),
                    child: Text("01/01/2020",
                        style: TextStyle(color: Color(0xff606060), fontSize: 14)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 8.0),
                    constraints: BoxConstraints(
                      maxWidth: size.width - 180.0
                    ),
                    child: Text(
                      "¡Porque Santiago no es Chile! Llega a Concepcion, al el Parque Ecuador con @luchafactory_aswa.chile.",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
