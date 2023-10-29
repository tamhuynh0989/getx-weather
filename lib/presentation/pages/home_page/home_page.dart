import 'package:demo_getx_flutter/data/models/enums/enum_weather.dart';
import 'package:demo_getx_flutter/domain/entities/weather_result/weather_result_entity.dart';
import 'package:demo_getx_flutter/presentation/components/components.dart';
import 'package:demo_getx_flutter/presentation/controllers/controllers.dart';
import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:demo_getx_flutter/utils/base/page_state.dart';
import 'package:demo_getx_flutter/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return KeyboardDismiss(
      gestures: [
        GestureType.onTap,
        GestureType.onPanUpdateDownDirection,
      ],
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SpacingAlias.Spacing15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpacingAlias.SizeHeight10,
                LabelCustom(
                  padding: EdgeInsets.zero,
                  label: AppStrings.welcome_title,
                  fontSize: FontAlias.fontAlias36,
                  fontWeight: FontWeight.bold,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormFieldCustom(
                    fontSize: FontAlias.fontAlias20,
                    hintText: AppStrings.hintSearch,
                    hintStyle: TextStyle(color: Colors.grey[600]),
                    controller: emailController,
                    onChanged: controller.onSearchChange,
                    suffixIcon: CircleIconButton(
                      onPressed: () async {
                        await controller
                            .onSearchIconClick(emailController.text);
                      },
                      icon: Icons.search,
                      isBackground: false,
                      size: 30,
                    ),
                  ),
                ),
                SpacingAlias.SizeHeight16,
                Obx(
                  () => controller.pageState != PageState.success
                      ? Center(child: CircularProgressIndicator())
                      : Flexible(
                          child: ListView.separated(
                              itemBuilder: (BuildContext, index) {
                                if (controller.weather.isEmpty) {
                                  return SizedBox.shrink();
                                }
                                final _weather = controller.weather[index];
                                return BannerItem(
                                  weather: _weather,
                                  onTap: () =>
                                      controller.onItemSelect(_weather),
                                );
                              },
                              separatorBuilder: (BuildContext, int) =>
                                  Divider(height: 16),
                              itemCount: controller.weather.length),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BannerItem extends StatelessWidget {
  const BannerItem({super.key, required this.weather, this.onTap});

  final WeatherResponse weather;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final degree = weather.currentConditions != null
        ? getCelsius(weather.currentConditions!.temp)
        : 0;

    final weatherType = getWeatherType(weather.currentConditions?.icon ?? "");
    return GestureDetector(
      onTap: onTap != null ? onTap : () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.grey1,
          image: DecorationImage(
            image: weatherType.image,
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: LabelCustom(
                    padding: EdgeInsets.zero,
                    label: weather.resolvedAddress,
                    fontSize: FontAlias.fontAlias20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: LabelCustom(
                    padding: EdgeInsets.zero,
                    label: weather.address,
                    fontSize: FontAlias.fontAlias14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                LabelCustom(
                  padding: EdgeInsets.zero,
                  label: "$degree\u2103",
                  fontSize: FontAlias.fontAlias36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                LabelCustom(
                  textAlign: TextAlign.end,
                  padding: EdgeInsets.zero,
                  label: weatherType.name,
                  fontSize: FontAlias.fontAlias14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
