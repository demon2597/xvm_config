/**
 * Minimap labels (alternative mode).
 * Надписи на миникарте (альтернативный режим).
 */
{
  // Textfields for units on minimap (extended format supported, see extra-field.txt).
  // Текстовые поля юнитов на миникарте (поддерживается расширенный формат, см. extra-field.txt).
  "labels": {
    // Format set
    // Набор форматов
    "formats": [
      ${ "minimapLabelsTemplates.xc":"def.vtypeX-spotted" },
      ${ "minimapLabelsTemplates.xc":"def.hpX-spotted" },
      ${ "minimapLabelsTemplates.xc":"def.vtypeSpotted" },
      ${ "minimapLabelsTemplates.xc":"def.hpSpotted" },
      {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.squadSpotted" },
        "format": "<img src='cfg://demon2597/img/mmSquads/{{squad-num?{{tk?tk|{{ally?al|en}}}}{{squad-num}}|none}}.png' width='7' height='9'>"
      },
      ${ "minimapLabelsTemplates.xc":"def.vehicleSpotted" },
      ${ "minimapLabelsTemplates.xc":"def.nickSpotted" },
      {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.nickSpotted" },
        "flags": [ "ally", "teamKiller", "spotted", "alive" ],
        "format": "<font face='$FieldFont' size='{{battletype?8|0}}' color='{{tk?{{.minimap.labelsData.colors.txt.{{sys-color-key}}}}|#70CC70}}'><i>{{name%.7s~..}}</i></font>"
      },
      {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.rating" },
        "format": "<font face='XVMSymbol' size='{{ally?{{battletype?0|{{xvm-stat?5|0}}}}|{{xvm-stat?5|0}}}}' color='{{c:xr|#DBDBDB}}'>{{ally?&#x21;|&#x22;}}</font>"
      },
      ${ "minimapLabelsTemplates.xc":"def.vtypeLost" },
      ${ "minimapLabelsTemplates.xc":"def.hpLost" },
      ${ "minimapLabelsTemplates.xc":"def.vehicleLost" },
      ${ "minimapLabelsTemplates.xc":"def.nickLost" },
      {
        "$ref": { "file": "minimapLabelsTemplates.xc", "path": "def.vtypeDead" },
        "format": "<font face='XVMSymbol' size='15' color='{{selected?#F2F2F2|{{.minimap.labelsData.colors.dot.{{sys-color-key}}}}}}'>{{vtype}}</font>"
      },
      ${ "minimapLabelsTemplates.xc":"def.vehicleDead" },
      ${ "minimapLabelsTemplates.xc":"def.nickDead" }
    ]
  }
}
