import 'package:flutter/material.dart';
import 'package:nawat_mobile/core/theme/app_theme.dart';

/// Abstract class that all the toolbar classes extend
abstract class Toolbar {
  const Toolbar();
}

/// Style group
class StyleButtons extends Toolbar {
  final bool style;

  const StyleButtons({
    this.style = true,
  });
}

/// Font setting group
class FontSettingButtons extends Toolbar {
  final bool fontName;
  final bool fontSize;
  final bool fontSizeUnit;

  const FontSettingButtons({
    this.fontName = true,
    this.fontSize = true,
    this.fontSizeUnit = true,
  });
}

/// Font group
class FontButtons extends Toolbar {
  final bool bold;
  final bool italic;
  final bool underline;
  final bool clearAll;
  final bool strikethrough;
  final bool superscript;
  final bool subscript;

  const FontButtons({
    this.bold = true,
    this.italic = true,
    this.underline = true,
    this.clearAll = true,
    this.strikethrough = true,
    this.superscript = true,
    this.subscript = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (bold)
      icons.add(Icon(Icons.format_bold, color: AppThemeConfig().iconPrimary));
    if (italic)
      icons.add(Icon(Icons.format_italic, color: AppThemeConfig().iconPrimary));
    if (underline)
      icons.add(
          Icon(Icons.format_underline, color: AppThemeConfig().iconPrimary));
    if (clearAll)
      icons.add(Icon(Icons.format_clear, color: AppThemeConfig().iconPrimary));
    return icons;
  }
}

/// Color bar group
class ColorButtons extends Toolbar {
  final bool foregroundColor;
  final bool highlightColor;

  const ColorButtons({
    this.foregroundColor = true,
    this.highlightColor = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (foregroundColor)
      icons.add(
          Icon(Icons.format_color_text, color: AppThemeConfig().iconPrimary));
    if (highlightColor)
      icons.add(
          Icon(Icons.format_color_fill, color: AppThemeConfig().iconPrimary));
    return icons;
  }
}

/// List group
class ListButtons extends Toolbar {
  final bool ul;
  final bool ol;
  final bool listStyles;

  const ListButtons({
    this.ul = true,
    this.ol = true,
    this.listStyles = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (ul)
      icons.add(Icon(Icons.format_list_bulleted,
          color: AppThemeConfig().iconPrimary));
    if (ol)
      icons.add(Icon(Icons.format_list_numbered,
          color: AppThemeConfig().iconPrimary));
    return icons;
  }
}

/// Paragraph group
class ParagraphButtons extends Toolbar {
  final bool alignLeft;
  final bool alignCenter;
  final bool alignRight;
  final bool alignJustify;
  final bool increaseIndent;
  final bool decreaseIndent;
  final bool textDirection;
  final bool lineHeight;
  final bool caseConverter;

  const ParagraphButtons({
    this.alignLeft = true,
    this.alignCenter = true,
    this.alignRight = true,
    this.alignJustify = true,
    this.increaseIndent = true,
    this.decreaseIndent = true,
    this.textDirection = true,
    this.lineHeight = true,
    this.caseConverter = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (alignLeft)
      icons.add(
          Icon(Icons.format_align_left, color: AppThemeConfig().iconPrimary));
    if (alignCenter)
      icons.add(
          Icon(Icons.format_align_center, color: AppThemeConfig().iconPrimary));
    if (alignRight)
      icons.add(
          Icon(Icons.format_align_right, color: AppThemeConfig().iconPrimary));
    if (alignJustify)
      icons.add(Icon(Icons.format_align_justify,
          color: AppThemeConfig().iconPrimary));
    return icons;
  }
}

/// Miscellaneous group
class OtherButtons extends Toolbar {
  final bool fullscreen;
  final bool codeview;
  final bool undo;
  final bool redo;
  final bool help;
  final bool copy;
  final bool paste;

  const OtherButtons({
    this.fullscreen = true,
    this.codeview = true,
    this.undo = true,
    this.redo = true,
    this.help = true,
    this.copy = true,
    this.paste = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (undo) icons.add(Icon(Icons.undo, color: AppThemeConfig().iconPrimary));
    return icons;
  }
}
