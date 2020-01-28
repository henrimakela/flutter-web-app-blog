import 'package:flutter/material.dart';

class Newsletter extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Text(
            "Subscribe to my newsletter",
            style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18.0,
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            width: 250,
            child: TextField(
              controller: controller,
              style: TextStyle(color: Theme.of(context).backgroundColor),
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Theme.of(context).backgroundColor,
                      fontWeight: FontWeight.w800),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 24.0, right: 16.0),
                    child: Icon(
                      Icons.code,
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)))),
            ),
          ),
        ],
      ),
    );
  }
}
