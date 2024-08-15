import 'package:flutter/material.dart';
import 'package:plant_app/Constants/color.dart';
import 'package:plant_app/Constants/size.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        child: Column(
          children: [
            HomeTitle(),
            SizedBox(
              height: AppSize.ms,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Scan And identify the plant',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: AppColor.mediumGreen),
              ),
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.xmm))),
                  backgroundColor: WidgetStatePropertyAll(AppColor.lightGreen),
                  minimumSize: WidgetStatePropertyAll(Size(
                      MediaQuery.of(context).size.width * 0.80, AppSize.ll))),
            ),
            SizedBox(
              height: AppSize.ms,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular plants",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: AppSize.xl),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: AppSize.xml,
                            color: AppColor.lightTextGreen),
                      ),
                    ],
                  ),
                  //
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "My Plants",
          style: TextStyle(fontSize: AppSize.xlm, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Icon(
              Icons.search_outlined,
              size: AppSize.xll,
            ),
          ],
        )
      ],
    );
  }
}
