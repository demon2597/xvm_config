/**
 * Parameters of the Players Panels ("ears").
 * Параметры панелей игроков ("ушей").
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 75, "blur": 2, "strength": 1, "distance": 0, "angle": 0 },
    // Squad icon.
    // Иконка взвода.
    "squad": { "x": 4, "alpha": "{{alive?100|50}}",
      "src": "cfg://demon2597/img/squads/{{squad-num?{{squad?sq|squad}}{{squad-num}}|none}}.png"
    },
    // Enemy spotted status marker definition.
    // Шаблон маркера статуса засвета противника.
    "enemySpottedMarker": { "x": 79, "y": 2, "width": 5, "height": 22, "bgColor": "{{c:spotted}}", "borderColor": "0x000000", "alpha": "{{a:spotted}}", "bindToIcon": true },
    // XMQP service marker definition.
    // Шаблон маркера сервиса XMQP.
    "xmqpServiceMarker": { "x": 79, "y": 2, "width": 5, "height": 22, "bgColor": "{{alive?{{x-spotted?0xFFBB00|{{x-sense-on?0xBFBFBF|{{x-enabled?0x800600|0x595959}}}}}}|0x595959}}", "borderColor": "0x000000", "alpha": "{{alive?100|50}}", "bindToIcon": true },

    // "short" panels text fields.
    // Текстовые поля "short" ушей.
    "shortSelected": { "width": "{{xvm-stat?{{r_size=2?86|98}}|47}}", "$ref": { "path": "def.largeSelected" } },
    "shortHpMarkLeft": { "x": 28, "y": 1, "width": "{{xvm-stat?47|18}}", "alpha": "{{alive?40|0}}",
      "src": "cfg://demon2597/img/{{hp-ratio<=49.4?{{c:hp-ratio}}|none}}.png"
    },
    "shortHpMarkRight": { "scaleX": -1, "$ref": { "path": "def.shortHpMarkLeft" } },
    "shortFrags": { "x": 35, "$ref": { "path": "def.largeFrags" } },
    "shortRatingLeft": { "x": 45, "$ref": { "path": "def.largeRatingLeft" } },
    "shortRatingRight": { "x": 45, "$ref": { "path": "def.largeRatingRight" } },

    // "medium" panels text fields.
    // Текстовые поля "medium" ушей.
    "mediumSelected": { "width": "{{xvm-stat?{{r_size=2?213|225}}|173}}", "$ref": { "path": "def.largeSelected" } },
    "mediumHpMarkLeft": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeHpMarkLeft" } },
    "mediumHpMarkRight": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeHpMarkRight" } },
    "mediumBattles": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "mediumNameLeft": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeNameLeft" } },
    "mediumNameRight": { "x": "{{xvm-stat?51|28}}", "$ref": { "path": "def.largeNameRight" } },
    "mediumFrags": { "x": "{{xvm-stat?184|161}}", "$ref": { "path": "def.largeFrags" } },
    "mediumRating": { "x": 194, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:xr}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "mediumHpBarBgDimmerLeft": { "x": "{{xvm-stat?57|34}}", "$ref": { "path": "def.largeHpBarBgDimmerLeft" } },
    "mediumHpBarBgDimmerRight": { "x": "{{xvm-stat?57|34}}", "$ref": { "path": "def.largeHpBarBgDimmerRight" } },
    "mediumHpBarBg": { "x": "{{xvm-stat?56|33}}", "$ref": { "path": "def.largeHpBarBg" } },
    "mediumHpBar": { "x": "{{xvm-stat?57|34}}", "$ref": { "path": "def.largeHpBar" } },
    "mediumHpKnown": { "x": "{{xvm-stat?107|84}}", "$ref": { "path": "def.largeHpKnown" } },
    "mediumHpUnknown": { "x": "{{xvm-stat?107|84}}", "$ref": { "path": "def.largeHpUnknown" } },
    "mediumHpDead": { "x": "{{xvm-stat?107|84}}", "$ref": { "path": "def.largeHpDead" } },

    // "medium2" panels text fields.
    // Текстовые поля "medium2" ушей.
    "medium2Selected": { "width": "{{xvm-stat?213|173}}", "$ref": { "path": "def.largeSelected" } },
    "medium2Battles": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "medium2Rating": { "x": 194, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:xte}}'>{{xte%s|--}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },

    // "large" and "medium" panels text fields.
    // Текстовые поля "large" и "medium" ушей.
    "largeSelected": { "y": 1, "width": "{{xvm-stat?{{r_size=2?260|272}}|173}}", "alpha": 33,
      "src": "cfg://demon2597/img/{{selected?sel{{.playersPanel.colorSelectedByStat=true?{{c:xr}}}}|none}}.png"
    },
    "largeHpMarkLeft": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false, "x": "{{xvm-stat?76|28}}", "y": 1, "alpha": "{{alive?40|0}}",
      "src": "cfg://demon2597/img/{{hp-ratio<=49.4?{{c:hp-ratio}}|none}}.png"
    },
    "largeHpMarkRight": { "scaleX": -1, "$ref": { "path": "def.largeHpMarkLeft" } },
    "largeBattlesLeft": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font> <font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeBattlesRight": { "x": 28, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%2d~h|--h}}}}</font> <font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%2d~k|--k}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeNameLeft": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false, "x": "{{xvm-stat?76|28}}", "y": 2,
      "format": "<font face='$FieldFont' color='#FFFFFF' alpha='{{alive?{{ready?#FF|#80}}|#80}}'><font size='13' color='{{player?#FFC363|{{squad?#FF914C|{{tk?#00EAFF}}}}}}'>{{.texts.nicknames.{{name}}|{{name%.12s~..}}}} </font><font size='12' color='{{topclan?#FFC363|#E5D39A}}'>{{clannb}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeNameRight": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false, "x": "{{xvm-stat?76|28}}", "y": 2,
      "format": "<font face='$FieldFont' color='#FFFFFF' alpha='{{alive?{{ready?#FF|#80}}|#80}}'><font size='12' color='{{topclan?#FFC363|#E5D39A}}'>{{clannb}}</font><font size='13'> {{.texts.nicknames.{{name}}|{{name%.12s~..}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeFrags": { "x": "{{xvm-stat?209|161}}", "y": 2, "align": "center",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'>{{frags}}</font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeRatingLeft": { "x": 219, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:xr}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font><font face='$FieldFont'>   </font><font color='{{c:xte}}'>{{xte%s|--}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeRatingRight": { "x": 219, "y": 2, "alpha": "{{xvm-stat?100|0}}",
      "format": "<font face='ZurichCondMono' size='13' color='#FFFFFF' alpha='{{alive?#FF|#80}}'><font color='{{c:xte}}'>{{xte%s|--}}</font><font face='$FieldFont'>   </font><font color='{{c:xr}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%4d|----}}}}}}</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeHpBarBgDimmerLeft": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?82|34}}", "y": 20, "width": 100, "height": 3, "bgColor": "0x000000", "alpha": "{{alive?{{hp?20|0}}|0}}" },
    "largeHpBarBgDimmerRight": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?82|34}}", "y": 20, "width": 100, "height": 3, "bgColor": "0x000000", "alpha": "{{alive?{{hp?10|0}}|0}}" },
    "largeHpBarBg": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?81|33}}", "y": 19, "width": 102, "height": 5, "bgColor": "{{player?{{alive?#FFC363|#BF891D}}|{{c:system}}}}", "alpha": "{{alive?{{hp?30|0}}|30}}", "borderColor": "0x000000" },
    "largeHpBar": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?82|34}}", "y": 20, "width": "{{hp-ratio:100}}", "height": 3, "bgColor": "{{player?#FFC363|{{c:system}}}}", "alpha": "{{hp?70|0}}" },
    "largeHpKnown": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?132|84}}", "y": 2, "align": "center", "alpha": "{{alive?{{hp?100|0}}|0}}",
      "format": "<font face='$FieldFont' size='13' color='{{c:hp-ratio}}' alpha='{{ready?#FF|#80}}'><font face='ZurichCondMono'>{{hp%4d}}</font> <font face='ZurichCondMono'>({{hp-ratio%3d}}</font>% / <font face='ZurichCondMono'>{{hp-max%4d}})</font></font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeHpUnknown": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?132|84}}", "y": -3, "align": "center", "alpha": "{{alive?{{hp?0|100}}|0}}",
      "format": "<font face='XVMSymbol' size='24' color='#9284C3' alpha='{{ready?#FF|#80}}'>{{l10n:No data}}</font>",
      "shadow": ${ "def.textFieldShadow" }
    },
    "largeHpDead": { "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true, "x": "{{xvm-stat?132|84}}", "y": -1, "align": "center", "alpha": "{{alive?0|100}}",
      "format": "<font face='XVMSymbol' size='24' color='#FFFFFF' alpha='#80'>&#x2B;</font>",
      "shadow": ${ "def.textFieldShadow" }
    }
  },
  "playersPanel": {
    // false - disable.
    // false - отключить.
    "enabled": true,
    // Opacity percentage of the panels. 0 - transparent, 100 - opaque.
    // Прозрачность в процентах ушей. 0 - прозрачные, 100 - не прозрачные.
    "alpha": 45,
    // Opacity percentage of icons in the panels. 0 - transparent ... 100 - opaque.
    // Прозрачность в процентах иконок в ушах. 0 - прозрачные, 100 - не прозрачные.
    "iconAlpha": 100,
    // true - disable background of the selected player.
    // true - убрать подложку выбранного игрока.
    "removeSelectedBackground": true,
    // true - color custom background of the selected player by statistics.
    // true - окрашивать кастомную подложку выбранного игрока по статистике.
    "colorSelectedByStat": true,
    // true - remove the Players Panel mode switcher (buttons for changing size).
    // true - убрать переключатель режимов ушей мышкой.
    "removePanelsModeSwitcher": false,
    // Start panels mode. Possible values: "none", "short", "medium", "medium2", "large".
    // Начальный режим ушей. Возможные значения: "none", "short", "medium", "medium2", "large".
    "startMode": "large",
    // Alternative panels mode. Possible values: null, "none", "short", "medium", "medium2", "large".
    // Альтернативный режим ушей. Возможные значения: null, "none", "short", "medium", "medium2", "large".
    "altMode": null,
    // Options for the "none" panels - empty panels.
    // Режим ушей "none" - пустые уши.
    "none": {
      // false - disable (отключить)
      "enabled": false,
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // Layout ("vertical" or "horizontal")
      // Размещение ("vertical" - вертикально, или "horizontal" - горизонтально)
      "layout": "vertical",
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Opacity of dynamic squad invite indicator
      // Прозрачность индикатора приглашения в динамический взвод
      "inviteIndicatorAlpha": 100,
      // X position offset of dynamic squad invite indicator
      // Позиция X индикатора приглашения в динамический взвод
      "inviteIndicatorX": 0,
      // Y position offset of dynamic squad invite indicator
      // Позиция Y индикатора приглашения в динамический взвод
      "inviteIndicatorY": 0,
      // Extra fields.
      // Дополнительные поля.
      "extraFields": {
        "leftPanel": {
          "x": 0, // from left side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for left panel
          // Набор форматов для левой панели
          // example:
          // "formats": [
          //   // simple format (just a text)
          //   "{{nick}}",
          //   "<img src='xvm://res/img/panel-bg-l-{{alive|dead}}.png' width='318' height='28'>",
          //   // extended format
          //   { "x": 20, "y": 10, "borderColor": "0xFFFFFF", "format": "{{nick}}" },
          //   { "x": 200, "src": "xvm://res/contour/{{vehiclename}}.png" },
          //   { "x": 200, "src": "img://gui/maps/icons/vehicle/{{vehiclename}}.png" }
          //   { "x": 200, "src": "cfg://user/img/{{vehiclename}}.png" }
          // ]
          "formats": []
        },
        "rightPanel": {
          "x": 0, // from right side of screen
          "y": 65,
          "width": 350,
          "height": 25,
          // Set of formats for right panel
          // Набор форматов для правой панели
          "formats": []
        }
      }
    },
    // Options for the "short" panels - panels with frags and vehicle icon.
    // Режим ушей "short" - короткие уши (фраги и иконка танка).
    "short": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?{{r_size=2?86|98}}|47}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see extra-field.txt)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsLeft": [
        ${ "def.shortSelected" },
        ${ "def.squad" },
        ${ "def.shortHpMarkLeft" },
        ${ "def.shortFrags" },
        ${ "def.shortRatingLeft" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see extra-field.txt)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.shortHpMarkRight" },
        ${ "def.shortFrags" },
        ${ "def.shortRatingRight" },
        ${ "def.enemySpottedMarker" }
      ]
    },
    // Options for the "medium" panels - the first of the medium panels.
    // Режим ушей "medium" - первые средние уши в игре.
    "medium": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?{{r_size=2?213|225}}|173}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see extra-field.txt)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsLeft": [
        ${ "def.mediumSelected" },
        ${ "def.squad" },
        ${ "def.mediumHpMarkLeft" },
        ${ "def.mediumBattles" },
        ${ "def.mediumNameLeft" },
        ${ "def.mediumHpBarBgDimmerLeft" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.mediumRating" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see extra-field.txt)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.mediumHpMarkRight" },
        ${ "def.mediumNameRight" },
        ${ "def.mediumHpBarBgDimmerRight" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.mediumBattles" },
        ${ "def.mediumFrags" },
        ${ "def.mediumRating" },
        ${ "def.enemySpottedMarker" }
      ]
    },
    // Options for the "medium2" panels - the second of the medium panels.
    // Режим ушей "medium2" - вторые средние уши в игре.
    "medium2": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags" ],
      // Width of area for switching to "large" mode on mouse over
      // Ширина области переключения в режим "large" при наведении мыши
      "expandAreaWidth": 0,
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?213|173}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see extra-field.txt)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsLeft": [
        ${ "def.medium2Selected" },
        ${ "def.squad" },
        ${ "def.mediumHpMarkLeft" },
        ${ "def.medium2Battles" },
        ${ "def.mediumNameLeft" },
        ${ "def.mediumHpBarBgDimmerLeft" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.medium2Rating" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, see extra-field.txt)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.mediumHpMarkRight" },
        ${ "def.mediumNameRight" },
        ${ "def.mediumHpBarBgDimmerRight" },
        ${ "def.mediumHpBarBg" },
        ${ "def.mediumHpBar" },
        ${ "def.mediumHpKnown" },
        ${ "def.mediumHpUnknown" },
        ${ "def.mediumHpDead" },
        ${ "def.mediumFrags" },
        ${ "def.medium2Battles" },
        ${ "def.mediumFrags" },
        ${ "def.medium2Rating" },
        ${ "def.enemySpottedMarker" }
      ]
    },
    // Options for the "large" panels - the widest panels.
    // Режим ушей "large" - широкие уши в игре.
    "large": {
      // false - disable (отключить)
      "enabled": true,
      // Displayed standard fields in this mode and their order.
      // Available names: "frags", "badge", "nick", "vehicle".
      // Отображаемые стандартные поля в данном режиме, и их порядок.
      // Допустимые названия: "frags", "badge", "nick", "vehicle".
      "standardFields": [ "frags" ],
      // true - disable platoon icons.
      // true - убрать отображение иконок взвода.
      "removeSquadIcon": true,
      // transparency of the squad icon
      // прозрачность иконки взвода
      "squadIconAlpha": 100,
      // Offset of X value for vehicle icon.
      // Смещение координаты X для иконки танка.
      "vehicleIconXOffsetLeft": -15,
      "vehicleIconXOffsetRight": -17,
      // Offset of X value for vehicle level.
      // Смещение координаты X для уровня танка.
      "vehicleLevelXOffsetLeft": 0,
      "vehicleLevelXOffsetRight": 0,
      // Transparency of vehicle level
      // Прозрачность уровня танка
      "vehicleLevelAlpha": 0,
      // Offset of X value for frags column.
      // Смещение координаты X для поля фрагов.
      "fragsXOffsetLeft": 0,
      "fragsXOffsetRight": 0,
      // Width of the frags column. Default is 24.
      // Ширина поля фрагов. По умолчанию: 24.
      "fragsWidth": "{{xvm-stat?{{r_size=2?260|272}}|173}}",
      // Display format for frags (macros allowed, see macros.txt).
      // Формат отображения фрагов (допускаются макроподстановки, см. macros.txt).
      "fragsFormatLeft": "",
      "fragsFormatRight": "",
      // Shadow for frags field (default null = no shadow, as in vanillas client).
      // Тень для поля фрагов (по умолчанию null = без тени, как в чистом клиенте).
      "fragsShadowLeft": ${ "def.textFieldShadow" },
      "fragsShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for rank badge column.
      // Смещение координаты X для поля бейджа ранга.
      "rankBadgeXOffsetLeft": 0,
      "rankBadgeXOffsetRight": 0,
      // Width of the rank badge column. Default is 24.
      // Ширина поля бейджа ранга. По умолчанию: 24.
      "rankBadgeWidth": 24,
      // Transparency of the rank badge
      // Прозрачность бейджа ранга
      "rankBadgeAlpha": "{{alive?100|70}}",
      // Offset of X value for player name column.
      // Смещение координаты X для поля имени игрока.
      "nickXOffsetLeft": 0,
      "nickXOffsetRight": 0,
      // Minimum width of the player name column. Default is 46.
      // Минимальная ширина поля имени игрока. По умолчанию: 46.
      "nickMinWidth": 46,
      // Maximum width of the player name column. Default is 158.
      // Максимальная ширина поля имени игрока. По умолчанию: 158.
      "nickMaxWidth": 158,
      // Display format for player name (macros allowed, see macros.txt).
      // Формат отображения имени игрока (допускаются макроподстановки, см. macros.txt).
      "nickFormatLeft": "",
      "nickFormatRight": "",
      // Shadow for player name field (default null = no shadow, as in vanillas client).
      // Тень для поля имени игрока (по умолчанию null = без тени, как в чистом клиенте).
      "nickShadowLeft": ${ "def.textFieldShadow" },
      "nickShadowRight": ${ "def.textFieldShadow" },
      // Offset of X value for vehicle name column.
      // Смещение координаты X для поля названия танка.
      "vehicleXOffsetLeft": 0,
      "vehicleXOffsetRight": 0,
      // Width of the vehicle name column. Default is 72.
      // Ширина поля названия танка. По умолчанию: 72.
      "vehicleWidth": 72,
      // Display format for vehicle name (macros allowed, see macros.txt).
      // Формат отображения названия танка (допускаются макроподстановки, см. macros.txt).
      "vehicleFormatLeft": "",
      "vehicleFormatRight": "",
      // Shadow for vehicle name field (default null = no shadow, as in vanillas client).
      // Тень для поля названия танка (по умолчанию null = без тени, как в чистом клиенте).
      "vehicleShadowLeft": ${ "def.textFieldShadow" },
      "vehicleShadowRight": ${ "def.textFieldShadow" },
      // true - don't change players positions on dead (default false)
      // true - не изменять позиции игроков при уничтожении (по умолчанию false)
      "fixedPosition": false,
      // Extra fields. Each field have size 350x25. Fields are placed one above the other.
      // Дополнительные поля. Каждое поле имеет размер 350x25. Поля располагаются друг над другом.
      // Set of formats for left panel (extended format supported, see extra-field.txt)
      // Набор форматов для левой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsLeft": [
        ${ "def.largeSelected" },
        ${ "def.squad" },
        ${ "def.largeHpMarkLeft" },
        ${ "def.largeBattlesLeft" },
        ${ "def.largeNameLeft" },
        ${ "def.largeHpBarBgDimmerLeft" },
        ${ "def.largeHpBarBg" },
        ${ "def.largeHpBar" },
        ${ "def.largeHpKnown" },
        ${ "def.largeHpUnknown" },
        ${ "def.largeHpDead" },
        ${ "def.largeFrags" },
        ${ "def.largeRatingLeft" },
        ${ "def.xmqpServiceMarker" }
      ],
      // Set of formats for right panel (extended format supported, extra-field.txt)
      // Набор форматов для правой панели (поддерживается расширенный формат, см. extra-field.txt)
      "extraFieldsRight": [
        ${ "def.squad" },
        ${ "def.largeHpMarkRight" },
        ${ "def.largeBattlesRight" },
        ${ "def.largeNameRight" },
        ${ "def.largeHpBarBgDimmerRight" },
        ${ "def.largeHpBarBg" },
        ${ "def.largeHpBar" },
        ${ "def.largeHpKnown" },
        ${ "def.largeHpUnknown" },
        ${ "def.largeHpDead" },
        ${ "def.largeFrags" },
        ${ "def.largeRatingRight" },
        ${ "def.enemySpottedMarker" }
      ]
    }
  }
}