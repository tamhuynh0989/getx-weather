import 'package:demo_getx_flutter/presentation/theme/colors.dart';
import 'package:demo_getx_flutter/presentation/theme/font_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/radius_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/spacing_alias.dart';
import 'package:demo_getx_flutter/presentation/theme/styles.dart';
import 'package:flutter/material.dart';

typedef DialogIndexedActionClickCallback = void Function(int index);

const EdgeInsetsGeometry cIconPadding = const EdgeInsets.only(top: 28);

const TextStyle cTitleTextStyle = const TextStyle(
    fontWeight: FontWeight.w600,
    inherit: true,
    fontSize: FontAlias.fontAlias17,
    color: AppColors.colorTextBase);

const int cTitleMaxLines = 3;

const TextAlign cTitleTextAlign = TextAlign.center;

const TextAlign cContentTextAlign = TextAlign.center;

const TextStyle cContentTextStyle = const TextStyle(
    inherit: true,
    fontSize: FontAlias.fontAlias13,
    color: AppColors.colorTextBase,
    decoration: TextDecoration.none);

const TextStyle cWarningTextStyle = TextStyle(
    inherit: true,
    fontSize: FontAlias.fontAlias14,
    color: AppColors.red,
    decoration: TextDecoration.none);

const TextAlign cWarningTextAlign = TextAlign.center;

const Color cBackgroundColor = Colors.white;

const ShapeBorder cShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)));

const Color cMainBackgroundColor = Colors.white;

const TextStyle cMainTextStyle = const TextStyle(
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
    fontSize: FontAlias.fontAlias17);

const Color cGreyBackgroundColor = Colors.white;

const TextStyle cGreyActionsTextStyle = const TextStyle(
    color: AppColors.colorTextBase,
    fontWeight: FontWeight.w600,
    fontSize: FontAlias.fontAlias17);

const double cBottomHeight = 44;

const VerticalDivider cVerticalDivider =
    const VerticalDivider(width: 1, color: AppColors.lineBackgroundDialog);

const Divider cDividerLine = const Divider(
  height: 1,
  color: AppColors.lineBackgroundDialog,
);

enum ButtonType {
  Single,
  Multi,
  Left,
  Right,
}

class BaseDialogStyle {
  BaseDialogStyle({
    this.titlePadding,
    this.titleTextAlign,
    this.titleTextStyle,
    this.contentPadding,
    this.contentTextStyle,
    this.warningTextStyle,
    this.backgroundColor,
    this.contentTextAlign,
    this.mainBackgroundColor,
    this.mainTextStyle,
    this.greyActionsBackgroundColor,
    this.greyActionsTextStyle,
    this.bottomHeight,
    this.warningPadding,
    this.warningTextAlign,
    this.iconPadding,
    this.radius,
  });

  EdgeInsetsGeometry? titlePadding;

  TextStyle? mainTextStyle;

  Color? mainBackgroundColor;

  TextStyle? greyActionsTextStyle;

  Color? greyActionsBackgroundColor;

  TextStyle? titleTextStyle;

  TextAlign? titleTextAlign;

  TextAlign? contentTextAlign;

  EdgeInsetsGeometry? contentPadding;

  TextStyle? contentTextStyle;

  Color? backgroundColor;

  double? bottomHeight;

  double? radius;

  double? elevation;

  TextStyle? warningTextStyle;

  TextAlign? warningTextAlign;

  EdgeInsetsGeometry? warningPadding;

  EdgeInsetsGeometry? iconPadding;

  int? titleMaxLines;
}

class BaseDialog extends AlertDialog {
  BaseDialog({
    this.showIcon = false,
    this.iconImage,
    this.titleText,
    this.messageText,
    this.titleWidget,
    this.contentWidget,
    this.warningText,
    this.warningWidget,
    this.actionsWidget,
    this.dialogStyle,
    this.divider = cDividerLine,
    this.verticalDivider = cVerticalDivider,
    this.actionsText,
    this.indexedActionCallback,
    this.titleMaxLines = cTitleMaxLines,
    this.customContentDialog,
    this.actionColor,
    this.greyColor,
    this.dialogPadding,
    this.borderRadiusDialog,
  });

  final Widget? titleWidget;

  final Widget? contentWidget;

  final Widget? warningWidget;

  final List<Widget>? actionsWidget;

  final String? titleText;

  final String? messageText;

  final String? warningText;

  final List<String>? actionsText;

  final VerticalDivider? verticalDivider;

  final Divider divider;

  final BaseDialogStyle? dialogStyle;

  final DialogIndexedActionClickCallback? indexedActionCallback;

  final bool showIcon;

  final Image? iconImage;

  final int titleMaxLines;

  final Widget? customContentDialog;

  final Color? actionColor;

  final Color? greyColor;

  final EdgeInsets? dialogPadding;

  final double? borderRadiusDialog;

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[];

    if (customContentDialog != null) {
      children.add(customContentDialog!);
    }

    if (_isShowIcon()) {
      final Widget generateIconWidget = _generateIconWidget(context);
      children.add(generateIconWidget);
    }

    if (_isShowTitle()) {
      final Widget generateTitleWidget = _generateTitleWidget(context);
      children.add(generateTitleWidget);
    }

    if (_isShowContent()) {
      final Widget generateContentWidget = _generateContentWidget(context);
      children.add(generateContentWidget);
    }

    if (_isShowWarning()) {
      final Widget generateWarningWidget = _generateWarningWidget(context);
      children.add(generateWarningWidget);
    }

    children.add(Padding(
      padding: EdgeInsets.only(top: 28),
      child: SizedBox(
        height: 0,
        width: 0,
      ),
    ));

    if (!_isEmptyAction()) {
      children
        ..add(divider)
        ..add(_generateActionsWidget(context));
    }

    final Widget dialogChild = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    );

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: dialogPadding != null
          ? dialogPadding
          : EdgeInsets.all(SpacingAlias.Spacing16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              width: double.infinity,
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(
                        borderRadiusDialog ?? RadiusAlias.Radius8))),
                color: dialogStyle?.mainBackgroundColor ?? AppColors.white,
                child: dialogChild,
              )),
        ],
      ),
    );
  }

  Widget _generateIconWidget(BuildContext context) {
    Widget _createWidget(Widget widget) {
      return Center(
        child: Padding(
          padding: EdgeInsets.only(top: SpacingAlias.Spacing28),
          child: SizedBox(
            width: 36,
            height: 36,
            child: widget,
          ),
        ),
      );
    }

    if (iconImage != null) {
      return _createWidget(iconImage!);
    }

    return SizedBox(
      width: 0,
      height: 0,
    );
  }

  Widget _generateTitleWidget(BuildContext context) {
    if (titleWidget != null) {
      return titleWidget!;
    }

    return Padding(
      padding: _configTitlePadding(),
      child: Text(
        titleText!,
        maxLines: titleMaxLines,
        overflow: TextOverflow.ellipsis,
        style: dialogStyle?.titleTextStyle ?? cTitleTextStyle,
        textAlign: cTitleTextAlign,
      ),
    );
  }

  Widget _generateContentWidget(BuildContext context) {
    if (contentWidget != null) {
      return Flexible(
        child: contentWidget!,
      );
    }

    return Padding(
      padding: _configContentPadding(),
      child: Center(
        child: Text(
          messageText ?? "",
          textAlign: TextAlign.center,
          style: cContentTextStyle,
        ),
      ),
    );
  }

  Widget _generateWarningWidget(BuildContext context) {
    if (warningWidget != null) {
      return Flexible(
        child: warningWidget!,
      );
    }

    return Padding(
      padding: _configWarningPadding(),
      child: Text(
        warningText!,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _generateMainWidget(
      Widget widget, Color background, ButtonType type, int index) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(type == ButtonType.Single ||
                          type == ButtonType.Left ||
                          (type == ButtonType.Multi &&
                              actionsText != null &&
                              index == actionsText!.length - 1)
                      ? (borderRadiusDialog ?? RadiusAlias.Radius8)
                      : 0),
                  bottomRight: Radius.circular(type == ButtonType.Single ||
                          type == ButtonType.Right ||
                          (type == ButtonType.Multi &&
                              actionsText != null &&
                              index == actionsText!.length - 1)
                      ? (borderRadiusDialog ?? RadiusAlias.Radius8)
                      : 0)))),
      constraints: BoxConstraints.tightFor(height: cBottomHeight),
      child: DefaultTextStyle(
        style: TextStyle(
            color: actionColor != null ? actionColor : AppColors.primary,
            fontSize: FontAlias.fontAlias17,
            fontWeight: FontWeight.w600),
        child: Center(child: widget),
      ),
    );
  }

  Widget _generateGreyWidget(
      Widget widget, Color background, ButtonType type, int index) {
    return Container(
      constraints: BoxConstraints.tightFor(height: cBottomHeight),
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(type == ButtonType.Single ||
                          type == ButtonType.Left ||
                          (type == ButtonType.Multi &&
                              actionsText != null &&
                              index == actionsText!.length - 1)
                      ? RadiusAlias.Radius8
                      : 0),
                  bottomRight: Radius.circular(type == ButtonType.Single ||
                          type == ButtonType.Right ||
                          (type == ButtonType.Multi &&
                              actionsText != null &&
                              index == actionsText!.length - 1)
                      ? RadiusAlias.Radius8
                      : 0)))),
      child: greyColor != null
          ? DefaultTextStyle(
              style: TextStyle(
                  color: greyColor != null ? actionColor : AppColors.primary,
                  fontSize: FontAlias.fontAlias17,
                  fontWeight: FontWeight.w600),
              child: Center(child: widget),
            )
          : Center(child: widget),
    );
  }

  Widget _generateActionsWidget(BuildContext context) {
    final bool showTextActions = _isEmptyActionsWidget();
    final int length =
        showTextActions ? actionsText!.length : actionsWidget!.length;
    if (length == 1) {
      return showTextActions
          ? _mapTextToGesWidget(
              context,
              actionsText![0],
              0,
              true,
              type: ButtonType.Single,
            )
          : actionsWidget![0];
    } else if (length == 2) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: showTextActions
                ? _mapTextToGesWidget(context, actionsText![0], 0, false,
                    type: ButtonType.Left)
                : actionsWidget![0],
          ),
          Container(
            height: 44,
            child: verticalDivider,
          ),
          Expanded(
            child: showTextActions
                ? _mapTextToGesWidget(context, actionsText![1], 1, true,
                    type: ButtonType.Right)
                : actionsWidget![1],
          )
        ],
      );
    } else {
      return Container(
        height: 3 * 44,
        width: double.maxFinite,
        child: ListView.separated(
            shrinkWrap: true,
            physics: length > 3 ? null : NeverScrollableScrollPhysics(),
            itemBuilder: (context, i) {
              return showTextActions
                  ? _mapTextToGesWidget(context, actionsText![i], i, true,
                      type: ButtonType.Multi)
                  : actionsWidget![i];
            },
            separatorBuilder: (context, i) {
              return divider;
            },
            itemCount: length),
      );
    }
  }

  Widget _mapTextToGesWidget(
      BuildContext context, String label, int index, bool main,
      {ButtonType type = ButtonType.Single}) {
    final Text text = Text(label);
    final Widget ges = GestureDetector(
      child: main
          ? _generateMainWidget(
              text,
              dialogStyle?.mainBackgroundColor ?? AppColors.white,
              type,
              index,
            )
          : _generateGreyWidget(
              text,
              dialogStyle?.mainBackgroundColor ?? AppColors.white,
              type,
              index,
            ),
      onTap: () {
        if (indexedActionCallback != null) {
          indexedActionCallback!(index);
        } else {
          Navigator.pop(context);
        }
      },
    );
    return ges;
  }

  bool _isEmptyAction() {
    return _isEmptyActionsText() && _isEmptyActionsWidget();
  }

  bool _isShowIcon() {
    return showIcon || iconImage != null;
  }

  bool _isShowTitle() {
    return titleText != null || titleWidget != null;
  }

  bool _isShowContent() {
    return contentWidget != null || messageText != null;
  }

  bool _isShowWarning() {
    return warningWidget != null || warningText != null;
  }

  bool _isEmptyActionsText() {
    return actionsText == null || actionsText!.isEmpty;
  }

  bool _isEmptyActionsWidget() {
    return actionsWidget == null || actionsWidget!.isEmpty;
  }

  EdgeInsetsGeometry _configTitlePadding() {
    return _isShowIcon() ? AppStyles.titlePaddingSm : AppStyles.titlePadding0;
  }

  EdgeInsetsGeometry _configContentPadding() {
    return (_isShowIcon() || _isShowTitle())
        ? AppStyles.contentPaddingSm
        : AppStyles.contentPaddingLg;
  }

  EdgeInsetsGeometry _configWarningPadding() {
    return (_isShowIcon() || _isShowTitle() || _isShowContent())
        ? AppStyles.warningPaddingSm
        : AppStyles.warningPaddingLg;
  }
}

class DialogManager {
  static void showSingleButtonDialog(BuildContext context,
      {required String label,
      bool showIcon = false,
      Image? iconWidget,
      String? title,
      Widget? titleWidget,
      String? message,
      Widget? messageWidget,
      String? warning,
      Widget? warningWidget,
      Widget? labelWidget,
      BaseDialogStyle? dialogStyle,
      GestureTapCallback? onTap,
      bool barrierDismissible = true,
      Color actionColor = Colors.blue,
      EdgeInsets dialogPadding =
          const EdgeInsets.symmetric(horizontal: SpacingAlias.Spacing44),
      double borderRadiusDialog = RadiusAlias.Radius16,
      int titleMaxLines = cTitleMaxLines}) {
    final List<Widget> actionsWidget = [];

    if (labelWidget != null) {
      actionsWidget.add(labelWidget);
    }
    showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext dialogContext) {
        return BaseDialog(
          iconImage: iconWidget,
          showIcon: showIcon,
          titleText: title,
          titleWidget: titleWidget,
          messageText: message,
          contentWidget: messageWidget,
          warningText: warning,
          warningWidget: warningWidget,
          actionsText: [label],
          dialogStyle: dialogStyle,
          actionsWidget: actionsWidget,
          titleMaxLines: titleMaxLines,
          actionColor: actionColor,
          dialogPadding: dialogPadding,
          borderRadiusDialog: borderRadiusDialog,
          indexedActionCallback: (index) {
            if (index == 0) {
              if (onTap != null) {
                onTap();
              }
            }
          },
        );
      },
    );
  }

  static void showConfirmDialog(BuildContext context,
      {required String cancel,
      required String confirm,
      bool showIcon = false,
      Image? iconWidget,
      String? title,
      Widget? titleWidget,
      String? message,
      Widget? messageWidget,
      String? warning,
      Widget? warningWidget,
      Widget? cancelWidget,
      Widget? confirmWidget,
      EdgeInsets? padding,
      BaseDialogStyle? dialogStyle,
      GestureTapCallback? onCancel,
      GestureTapCallback? onConfirm,
      bool barrierDismissible = true,
      int titleMaxLines = cTitleMaxLines}) {
    final List<Widget> actionsWidget = [];

    if (cancelWidget != null) {
      actionsWidget.add(cancelWidget);
    }
    if (confirmWidget != null) {
      actionsWidget.add(confirmWidget);
    }
    showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext dialogContext) {
        return BaseDialog(
          iconImage: iconWidget,
          showIcon: showIcon,
          titleText: title,
          dialogPadding: padding ??
              EdgeInsets.symmetric(
                horizontal: SpacingAlias.Spacing60,
              ),
          titleWidget: titleWidget,
          messageText: message,
          contentWidget: messageWidget,
          warningWidget: warningWidget,
          warningText: warning,
          titleMaxLines: titleMaxLines,
          dialogStyle: dialogStyle,
          actionsText: [cancel, confirm],
          actionsWidget: actionsWidget,
          indexedActionCallback: (index) {
            if (index == 0) {
              if (onCancel != null) {
                onCancel();
              }
            }
            if (index == 1) {
              if (onConfirm != null) {
                onConfirm();
              }
            }
          },
        );
      },
    );
  }

  static void showMoreButtonDialog(
    BuildContext context, {
    required List<String> actions,
    bool showIcon = false,
    Image? iconWidget,
    String? title,
    Widget? titleWidget,
    String? message,
    Widget? messageWidget,
    String? warning,
    Widget? warningWidget,
    List<Widget>? actionsWidget,
    bool barrierDismissible = true,
    BaseDialogStyle? dialogStyle,
    int titleMaxLines = cTitleMaxLines,
    DialogIndexedActionClickCallback? indexedActionClickCallback,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext dialogContext) {
        return BaseDialog(
            iconImage: iconWidget,
            showIcon: showIcon,
            titleText: title,
            titleWidget: titleWidget,
            messageText: message,
            contentWidget: messageWidget,
            warningWidget: warningWidget,
            warningText: warning,
            dialogStyle: dialogStyle,
            actionsText: actions,
            actionsWidget: actionsWidget,
            titleMaxLines: titleMaxLines,
            indexedActionCallback: indexedActionClickCallback);
      },
    );
  }

  static void showCustomContentDialog(
    BuildContext context, {
    required Widget customWidget,
    bool barrierDismissible = false,
    BaseDialogStyle? dialogStyle,
    int titleMaxLines = cTitleMaxLines,
    DialogIndexedActionClickCallback? indexedActionClickCallback,
  }) {
    showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext dialogContext) {
        return BaseDialog(
          customContentDialog: customWidget,
          dialogStyle: dialogStyle,
          titleMaxLines: titleMaxLines,
          indexedActionCallback: indexedActionClickCallback,
        );
      },
    );
  }
}
