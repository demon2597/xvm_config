/**
 * Minimap labels.
 * Надписи на миникарте.
 */
{
  // Textfields for units on minimap.
  // Текстовые поля юнитов на миникарте.
  // Definitions
  // Шаблоны
  "def": {
    // Fields default format
    // Формат поля по умолчанию
    "defaultItem": {
      "enabled": true,
      "flags": [ "player", "ally", "squadman", "enemy", "teamKiller", "lost", "spotted", "alive", "dead" ],
      "x": 0,
      "y": 0,
      "layer": "normal",
      "alpha": 100,
      "align": "left",
      "valign": "top",
      "antiAliasType": "normal",
      "bgColor": null,
      "borderColor": null,
      "shadow": { "enabled": true, "color": "0x000000", "alpha": 80, "blur": 2, "strength": 4, "distance": 0, "angle": 0 }
    },
    // Vehicle type, visible
    // Тип техники, видимый
    "vtypeSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "layer": "top",
      "align": "center",
      "valign": "center",
      "textFormat": { "align": "center", "valign": "center" },
      "format": "<font face='XVMSymbol' size='15' color='{{selected?#F2F2F2|{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}}}'>{{x-overturned?{{.minimap.labelsData.vtype.{{vtype-key}}}}|{{vtype}}}}</font>"
    },
    // Vehicle type, visible, spotted
    // Тип техники, видимый, в засвете
    "vtypeX-spotted": {
      "$ref": { "path":"def.vtypeSpotted" },
      "alpha": "{{x-spotted?100|0}}",
      "format": "<font face='XVMSymbol' size='15' alpha='#00'>{{vtype}}</font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "color": "0xFFBB00", "alpha": 100, "blur": 3, "strength": 6 }
    },
    // HP, visible
    // ХП, видимый
    "hpSpotted": {
      "$ref": { "path":"def.vtypeSpotted" },
      "format": "<font face='XVMSymbol' size='15' color='{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}'>{{hp-ratio<=24.4?&#x101;}}</font>"
    },
    // HP, visible, spotted
    // ХП, видимый, в засвете
    "hpX-spotted": {
      "$ref": { "path":"def.vtypeSpotted" },
      "alpha": "{{x-spotted?100|0}}",
      "format": "<font face='XVMSymbol' size='15' alpha='#00'>{{hp-ratio<=24.4?&#x101;}}</font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "color": "0xFFBB00", "alpha": 100, "blur": 3, "strength": 6 }
    },
    // Squad, visible
    // Взвод, видимый
    "squadSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "teamKiller", "spotted", "alive" ],
      "x": 0,
      "y": 5,
      "align": "center",
      "textFormat": { "align": "center" },
      "format": "<img src='cfg://demon2597/img/mmSquadsBold/{{squad-num?{{tk?tk|{{ally?al|en}}}}{{squad-num}}|none}}.png' width='7' height='9'>"
    },
    // Vehicle name, visible
    // Название техники, видимый
    "vehicleSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "spotted", "alive" ],
      "x": "{{squad-num?{{squad?-4|3}}|-4}}",
      "y": 3,
      "format": "<font face='$FieldFont' size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>"
    },
    // Player nickname, visible
    // Ник игрока, видимый
    "nickSpotted": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "spotted", "alive" ],
      "x": 3,
      "y": -6,
      "format": "<font face='$FieldFont' size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>"
    },
    // Rating
    // Рейтинг
    "rating": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "teamKiller", "alive" ],
      "x": 4.5,
      "y": -1,
      "format": "<font face='XVMSymbol' size='{{xvm-stat?5|0}}' color='{{c:xr|#DBDBDB}}'>{{ally?&#x21;|&#x22;}}</font>"
    },
    // Vehicle type, missing
    // Тип техники, пропавший
    "vtypeLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "layer": "bottom",
      "align": "center",
      "valign": "center",
      "textFormat": { "align": "center", "valign": "center" },
      "format": "<font face='XVMSymbol' size='15' color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>{{vtype}}</font>"
    },
    // HP, missing
    // ХП, пропавший
    "hpLost": {
      "$ref": { "path":"def.vtypeLost" },
      "format": "<font face='XVMSymbol' size='15' color='{{.minimap.labelsData.colors.lostDot.{{sys-color-key}}}}'>{{hp-ratio<=24.4?&#x101;}}</font>"
    },
    // Vehicle name, missing
    // Название техники, пропавший
    "vehicleLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "lost", "alive" ],
      "x": -4,
      "y": 3,
      "layer": "bottom",
      "format": "<font face='$FieldFont' size='8' color='{{ally?{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}|#BFBFBF}}'>{{ally?<i>}}{{vehicle}}{{ally?</i>}}</font>"
    },
    // Player nickname, missing
    // Ник игрока, пропавший
    "nickLost": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "lost", "alive" ],
      "x": 3,
      "y": -6,
      "layer": "bottom",
      "format": "<font face='$FieldFont' size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>"
    },
    // Vehicle type, dead
    // Тип техники, мертвый
    "vtypeDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "dead" ],
      "layer": "substrate",
      "align": "center",
      "valign": "center",
      "textFormat": { "align": "center", "valign": "center" },
      "format": "<font face='XVMSymbol' size='8' color='{{selected?#F2F2F2|{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}}}'>&#x44;</font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "strength": 3 }
    },
    // Vehicle name, dead
    // Название техники, мертвый
    "vehicleDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "ally", "enemy", "squadman", "teamKiller", "dead" ],
      "x": -4,
      "y": 3,
      "layer": "substrate",
      "format": "<font face='$FieldFont' size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'>{{vehicle}}</font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "strength": 3 }
    },
    // Player nickname, dead
    // Ник игрока, мертвый
    "nickDead": {
      "$ref": { "path":"def.defaultItem" },
      "flags": [ "squadman", "dead" ],
      "x": 3,
      "y": -6,
      "layer": "substrate",
      "format": "<font face='$FieldFont' size='8' color='{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}'><i>{{name%.7s~..}}</i></font>",
      "shadow": { "$ref": { "path":"def.defaultItem.shadow" }, "strength": 3 }
    }
  }
}
