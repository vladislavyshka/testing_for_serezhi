import 'package:flutter/material.dart';

class TabBarDegree extends StatefulWidget {
  const TabBarDegree({super.key});

  @override
  State<TabBarDegree> createState() => _TabBarDegreeState();
}

class _TabBarDegreeState extends State<TabBarDegree> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0XFFFAFAFA),
        ),
        height: 32,
        child: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelStyle: Theme.of(context).textTheme.bodyText2,
          splashBorderRadius: BorderRadius.circular(8),
          indicator: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(8)),
          tabs: const [
            Tab(
              child: Baseline(
                baselineType: TextBaseline.alphabetic,
                baseline: 15,
                child: Text(
                  'Не выполнено',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Tab(
              child: Baseline(
                baselineType: TextBaseline.alphabetic,
                baseline: 15,
                child: Text(
                  'Выполнено',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
