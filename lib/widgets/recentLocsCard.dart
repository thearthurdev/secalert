import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:secalert/data/locModel.dart';

class RecentLocsCard extends StatefulWidget {
  final Loc loc;

  RecentLocsCard(this.loc);

  @override
  _RecentLocsCardState createState() => _RecentLocsCardState(loc);
}

class _RecentLocsCardState extends State<RecentLocsCard> {
  Loc loc;

  _RecentLocsCardState(this.loc);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: 150.0,
      // height: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.0, color: Colors.grey[100]),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              blurRadius: 0.0,
              offset: Offset.fromDirection(1.0))
        ],
      ),
      child: MaterialButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        highlightColor: Colors.grey[300],
        // padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: Icon(
                  EvaIcons.pinOutline,
                  color: Colors.red[900],
                  size: 24.0,
                  // color: Colors.black54,
                ),
              ),
              Text(
                widget.loc.locName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                widget.loc.locLandMark,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}