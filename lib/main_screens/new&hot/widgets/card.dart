import 'package:flutter/material.dart';
import 'package:netflix/api/api_end_points.dart';
import 'package:netflix/core/constants/spacing.dart';
import 'package:netflix/widgets/title_banner.dart';
import 'package:google_fonts/google_fonts.dart';

class TabOneTile extends StatelessWidget {
  final bool date;
  final String? title;
  final String? image;
  final String? displayDate;
  final List<Widget> actionbuttons;
  final dynamic iconSize;
  final String? overView;
  final String? type;

  TabOneTile(
      {Key? key,
      required this.date,
      this.title,
      this.image,
      this.displayDate,
      required this.actionbuttons,
      this.iconSize,
      this.overView,
      this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          date == true
              ? Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'FEB',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        '23',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.w900, fontSize: 22),
                      )
                    ],
                  ))
              : const SizedBox(),
          Expanded(
            flex: 8,
            child: SizedBox(
              width: displayWidth(context),
              height: displayHeight(context) * .51,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: defaultRadius1,
                      image: DecorationImage(
                        image: NetworkImage(ApiEndPoints.img + image! ?? test),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: double.infinity,
                    height: displayHeight(context) * .25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            title ?? 'Coming Soon',overflow:(title!.length > 7)? TextOverflow.ellipsis:TextOverflow.fade,
                            style: GoogleFonts.creepster().copyWith(fontSize: 22),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        Expanded(
                            flex: 3,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: actionbuttons))
                      ],
                    ),
                  ),
                  const Text(
                    'Coming Soon...s',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'N ',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                      children: <TextSpan>[
                        TextSpan(
                            text: type!.toUpperCase() ?? 'Null',
                            style: DefaultTextStyle.of(context)
                                .style
                                .copyWith(color: Colors.grey)
                                .copyWith(fontSize: 12)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TitleBanner(title: title ?? "No Title"),
                  ),
                  Text(
                    overView ??
                        'A greiving mother dicovers the criminals behind her daughter s tragic deathm and transform from meek to merciliess to get the real story.',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
