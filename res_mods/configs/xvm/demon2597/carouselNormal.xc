/**
 * Normal carousel cells settings
 * Настройки ячеек карусели обычного размера
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 2, "distance": 0, "angle": 0 }
  },
  "normal": {
    // Cell width
    // Ширина ячейки
    "width": 160,
    // Cell height
    // Высота ячейки
    "height": 100,
    // Spacing between carousel cells.
    // Отступ между ячейками карусели.
    "gap": 7,
    // Standard cell elements.
    // Стандартные элементы ячеек.
    "fields": {
      // "enabled"  - the visibility of the element / видимость элемента
      // "dx"       - horizontal shift              / смещение по горизонтали
      // "dy"       - vertical shift                / смещение по вертикали
      // "alpha"    - transparency                  / прозрачность
      // "scale"    - scale                         / масштаб
      //
      // Nation flag.
      // Флаг нации.
      "flag": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle icon.
      // Иконка танка.
      "tankIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle class icon.
      // Иконка типа техники.
      "tankType": { "enabled": true, "dx": 1, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle level.
      // Уровень техники
      "level": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Double XP icon
      // Иконка не сбитого опыта за первую победу в день.
      "xp": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Vehicle name.
      // Название танка.
      "tankName": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Vehicle rent info text.
      // Инфо текст аренды танка.
      "rentInfo": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Info text (Crew incomplete, Repairs required)
      // Инфо текст (Неполный экипаж, Требуется ремонт).
      "info": { "enabled": true, "dx": 0, "dy": 2, "alpha": 100, "scale": 1, "textFormat": { "color": "0xFE0E00" }, "shadow": { "color": "0x000000" } },
      // Info image
      // Инфо иконка
      "infoImg": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "scale": 1 },
      // Info text for "Buy vehicle" and "Buy slot" slots.
      // Инфо текст для слотов "Купить машину" и "Купить слот".
      "infoBuy": { "enabled": true, "dx": 0, "dy": -2, "alpha": 100, "scale": 1, "textFormat": {}, "shadow": {} },
      // Clan lock timer
      // Таймер блокировки танка
      "clanLock": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Price
      // Цена
      "price": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Action price
      // Акционная цена
      "actionPrice": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Favorite vehicle mark
      // Маркер основной техники
      "favorite": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Vehicle mark with the ability to earn bonds.
      // Маркер техники с возможностью заработка бон.
      "crystalsBorder": { "enabled": false, "alpha": 100 },
      // Image in in the stats field "stats" for vehicle with the ability to earn bonds.
      // Иконка в поле статистики "stats" для техники с возможностью заработка бон.
      "crystalsIcon": { "enabled": true, "dx": 0, "dy": 0, "alpha": 100 },
      // Stats field that appears on the mouse hover
      // Поле статистики, отображаемое при наведении мыши
      "stats": { "enabled": false, "dx": 0, "dy": 0, "alpha": 100, "textFormat": {}, "shadow": {} }
    },
    // Extra fields of cells (extended format supported, see extra-field.txt).
    // Дополнительные поля ячеек (поддерживается расширенный формат, см. extra-field.txt).
    "extraFields": [
      { "x": 1, "y": 1, "layer": "substrate", "width": 160, "height": 100, "bgColor": "0x0A0A0A" },
      { "x": 1, "y": 1, "layer": "top", "width": 160, "height": 100, "borderColor": "{{v.selected?#60FF00|{{v.premium?#FF5500|#FFDD99}}}}", "alpha": "{{v.selected?0|{{v.premium?20|0}}}}" },
      { "x": 3, "y": 3, "alpha": 30,
        "src": "cfg://demon2597/img/{{v.premium?premiumSlot|none}}.png"
      },
      { "x": 135, "y": 57, "width": 25, "height": 25,
        "src": "cfg://demon2597/img/{{v.mastery>0?mastery{{v.mastery}}|none}}.png"
      },
      { "x": 5, "y": 20,
        "src": "cfg://demon2597/img/mog{{v.marksOnGun|x}}.png"
      },
      { "x": 12, "y": "{{v.marksOnGun?18|17}}", "align": "center",
        "format": "<b><font face='$FieldFont' size='9' color='#C8C8B5'>{{v.marksOnGun|x}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 12, "y": 35, "align": "center",
        "format": "<b><font face='$FieldFont' size='9' color='#C8C8B5' alpha='#CC'>{{v.damageRating%0.1f}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 22, "y": 0,
        "format": "<b><font face='$FieldFont' size='12' color='#C8C8B5'><font face='Arial'>{{v.rlevel}}</font>  {{v.battletiermin}}-{{v.battletiermax}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 22, "y": 15,
        "format": "<b><font face='$FieldFont' size='12' color='{{v.c_winrate|#C8C8B5}}'>{{v.winrate%2d~%}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 22, "y": 29,
        "format": "<b><font face='$FieldFont' size='12' color='{{v.c_xte|#C8C8B5}}'>{{v.xte%s}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 158, "y": 15, "align": "right",
        "format": "<b><font face='$FieldFont' size='12' color='{{v.c_wn8effd|#C8C8B5}}'>{{v.tdb%d}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 158, "y": 29, "align": "right",
        "format": "<b><font face='$FieldFont' size='12' color='#C8C8B5' alpha='#B2'>{{v.battles}}</font></b>",
        "shadow": ${ "def.textFieldShadow" }
      },
      { "x": 158, "y": 77, "align": "right",
        "format": "<font face='$FieldFont' size='15' color='{{v.premium?#FFDD99|#C8C8B5}}'>{{v.fullname}}</font>",
        "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "{{v.premium?0xFF0000|0x73734C}}", "alpha": "{{v.premium?100|75}}", "blur": "{{v.premium?12|6}}", "strength": "{{v.premium?2.5|1.5}}" }
      }
    ]
  }
}
