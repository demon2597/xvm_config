/**
 * Widgets.
 * Виджетоы.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 75, "blur": 4, "strength": 2, "distance": 0, "angle": 0 },
    // Clock.
    // Часы.
    "clock": {
      "enabled": true,
      "layer": "top",
      "type": "extrafield",
      "formats": [
        {
          "updateEvent": "ON_EVERY_SECOND",
          "x": -325,
          "y": 0,
          "width": 180,
          "height": 52,
          "screenHAlign": "center",
          "alpha": 90,
          "textFormat": { "align": "right", "color": "0x959586" },
          "format": "<textformat leading='-38'><font size='36'>{{py:xvm.formatDate('%H:%M')}}</font></textformat>\n<textformat rightMargin='85' leading='-2'><font size='13'>{{py:xvm.formatDate('%A')}}</font>\n<font size='15'>{{py:xvm.formatDate('%d %b %Y')}}</font></textformat>",
          "shadow": ${ "def.textFieldShadow" }
        }
      ]
    },
    "statistics": {
      "enabled": true,
      "layer": "normal",
      "type": "extrafield",
      "formats": [
        { // background image, left part
          // фоновая картинка, левая часть.
          "x": 66,
          "y": 160,
          "screenHAlign": "center",
          "format": "<img src='xvm://res/icons/clock/clockBg.png' width='160' height='80'>"
        },
        { // background image, right part
         // фоновая картинка, правая часть.
          "x": 390,
          "y": 160,
          "screenHAlign": "center",
          "scaleX": -1,
          "format": "<img src='xvm://res/icons/clock/clockBg.png' width='160' height='80'>"
        },
        { // text block
          // текстовый блок
          "updateEvent": "ON_MY_STAT_LOADED",
          "x": 185,
          "y": 165,
          "width": 320,
          "height": 150,
          "screenHAlign": "center",
          "shadow": { "alpha": 80, "blur": 4, "strength": 2 },
          "textFormat": { "color": "0x959688", "size": 15 },
          "format": "<font size='13'>{{l10n:General stats}} (<font color='#F9F1BC'>{{py:xvm.formatDate('%Y-%m-%d')}}</font>)</font>\n{{l10n:WN8}}: <font color='{{mystat.c_xwn8}}'>{{mystat.xwn8}} ({{mystat.wn8}})</font> {{l10n:EFF}}: <font color='{{mystat.c_xeff}}'>{{mystat.xeff}} ({{mystat.eff}})</font>\n{{l10n:Avg level}}: <font color='{{mystat.c_avglvl}}'>{{mystat.avglvl%.2f}}</font>\n<font size='13'>{{l10n:Wins}}: <font color='{{mystat.c_winrate}}'>{{mystat.winrate%.2f~%}}</font>  ({{py:winrate_next(0.5)}} / {{py:winrate_next(1)}})</font>"
        }
      ]
    },
    // Author's label.
    // Лейбл автора.
    "author": {
      "enabled": true,
      "layer": "top",
      "type": "extrafield",
      "formats": [
        { "x": 0,
          "y": 90,
          "width": 226,
          "height": 58,
          "screenHAlign": "right",
          "alpha": 90,
          "textFormat": { "align": "center", "color": "0x959586" },
          "format": "<textformat leftMargin='160' leading='-43'><img src='cfg://demon2597/img/author.png'></textformat>\n<font face='XVMSymbol' size='24'>&#x74;</font>\n<font size='16'>X V M  c o n f i g</font>"
        }
      ]
    }
  },
  "widgets": {
    // Referenced templates:
    // * every widget can be enabled or disabled separately by "enabled" switch in their settings.
    // * extended format supported, see extra-field.txt
    // Подключенные шаблоны:
    // * виджеты можно отдельно отключать и включать с помощью "enabled" в их настройках.
    // * поддерживается расширенный формат, см. extra-field.txt
    "login": [
      ${ "def.author" }
    ],
    "lobby": [
      ${ "def.clock" }
    ]
  }
}
