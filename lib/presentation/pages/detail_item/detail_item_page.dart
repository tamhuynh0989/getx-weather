import 'package:demo_getx_flutter/data/models/enums/enum_weather.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/day_result_entity.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/hour_result_entity.dart';
import 'package:demo_getx_flutter/gen/assets.gen.dart';
import 'package:demo_getx_flutter/presentation/components/components.dart';
import 'package:demo_getx_flutter/presentation/controllers/controllers.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:demo_getx_flutter/utils/base/page_state.dart';
import 'package:demo_getx_flutter/utils/constants/app_strings.dart';
import 'package:demo_getx_flutter/utils/ext/iterable_ext.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DetailPage extends GetView<DetailController> {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailController());
    return KeyboardDismiss(
      gestures: [
        GestureType.onTap,
        GestureType.onPanUpdateDownDirection,
      ],
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Assets.images.cloudFull.provider(),
                  fit: BoxFit.fill,
                  opacity: 1,
                  scale: 1,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
            SafeArea(
              child: Obx(
                () => controller.pageState != PageState.success
                    ? Center(child: CircularProgressIndicator())
                    : Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: SpacingAlias.Spacing15),
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.black.withOpacity(0.2),
                                    ),
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                      children: [
                                        SpacingAlias.SizeHeight18,
                                        LabelCustom(
                                          padding: EdgeInsets.zero,
                                          label: controller
                                              .weather.value.resolvedAddress,
                                          fontSize: FontAlias.fontAlias40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        LabelCustom(
                                          padding: EdgeInsets.zero,
                                          label:
                                              "${getCelsius(controller.weather.value.currentConditions?.temp ?? 0)}\u00B0",
                                          fontSize: FontAlias.fontAlias60,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        SpacingAlias.SizeHeight16,
                                        LabelCustom(
                                          padding: EdgeInsets.zero,
                                          label: controller.weather.value.days
                                              .first.description,
                                          fontSize: FontAlias.fontAlias14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                        SpacingAlias.SizeHeight10,
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: Get.back,
                                    icon: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 10,
                                      ),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SpacingAlias.SizeHeight20,
                              BannerCurrentDay(controller: controller),
                              SpacingAlias.SizeHeight16,
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  // height: MediaQuery.of(context).size.height * 0.12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.black.withOpacity(0.5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              color: Colors.grey[400],
                                            ),
                                            LabelCustom(
                                              padding: EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              label:
                                                  "Today - ${controller.weather.value.days.last.datetime}",
                                              fontSize: FontAlias.fontAlias14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey[400],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[400],
                                      ),
                                      Flexible(
                                        child: ListView.separated(
                                            itemBuilder: (BuildContext, int) {
                                              return WeeklyItem(
                                                days: controller
                                                    .weather.value.days[int],
                                              );
                                            },
                                            separatorBuilder:
                                                (BuildContext, int) => Divider(
                                                    color: Colors.grey[400]),
                                            itemCount: controller
                                                .weather.value.days.length),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BannerCurrentDay extends StatelessWidget {
  const BannerCurrentDay({
    super.key,
    required this.controller,
  });

  final DetailController controller;

  @override
  Widget build(BuildContext context) {
    late int count = 0;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.black.withOpacity(0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            controller.weather.value.days.first.hours.mapIndexed((e, index) {
          final data = e;
          final dateTime = int.parse(data.datetime.split(":").first);
          final now = new DateTime.now().hour;
          if (dateTime < now) {
            return SizedBox.shrink();
          }
          if (count >= 6) {
            return SizedBox.shrink();
          }
          count++;
          return DailyItem(day: e);
        }).toList(),
      ),
    );
  }
}

class WeeklyItem extends StatelessWidget {
  const WeeklyItem({
    super.key,
    required this.days,
  });

  final DayResult days;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    final formatter = new DateFormat('yyyy-MM-dd');
    final formattedDate = formatter.format(now);
    final weatherType = getWeatherType(days.icon);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: LabelCustom(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              label: days.datetime == formattedDate
                  ? AppStrings.today
                  : days.datetime,
              fontSize: FontAlias.fontAlias14,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          weatherType.icon,
          LabelCustom(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            label: "${getCelsius(days.temp)} \u2103",
            fontSize: FontAlias.fontAlias14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class DailyItem extends StatelessWidget {
  const DailyItem({
    super.key,
    required this.day,
  });

  final HourResult day;

  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now().hour;
    final dateTime = day.datetime.split(":").first;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          LabelCustom(
            padding: EdgeInsets.zero,
            label: int.parse(dateTime) == now ? AppStrings.now : dateTime,
            fontSize: FontAlias.fontAlias14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          Icon(
            Icons.sunny,
            color: Colors.amber[400],
          ),
          LabelCustom(
            padding: EdgeInsets.zero,
            label: "${getCelsius(day.temp)}\u00B0",
            fontSize: FontAlias.fontAlias14,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
