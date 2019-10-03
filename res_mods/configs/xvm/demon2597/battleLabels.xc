/**
 * Battle inteface text fields.
 * Текстовые поля боевого интерфейса.
 */
{
  // Definitions.
  // Шаблоны.
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 100, "blur": 4, "strength": 1, "distance": 0, "angle": 0 },
    // Log of applied damage (see hitLog.xc).
    // Лог нанесенного урона (см. hitLog.xc).
    "hitLog": {
      "enabled": true,
      "updateEvent": "PY(ON_HIT_LOG), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},33)}}",
      "y": 60,
      "layer": "bottom",
      "width": 500,
      "height": 500,
      "format": "{{py:xvm.hitLog.log}}",
      "shadow": ${ "def.textFieldShadow" },
      "mouseEvents": {
        "mouseDown": "hitLog_mouseDown",
        "mouseUp": "hitLog_mouseUp",
        "mouseMove": "hitLog_mouseMove"
      }
    },
    // Total hp indicator.
    // Индикатор общего HP команд.
    "totalHP": {
      "enabled": true,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 0,
      "y": 32,
      "screenHAlign": "center",
      "align": "center",
      "textFormat": { "font": "ZurichCondMono", "bold": true, "size": 18 },
      "format": "{{py:xvm.total_hp.text}}",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Avg damage on current vehicle.
    // Средний урон на текущей технике.
    "avgDamage": {
      "enabled": true,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": -170,
      "y": 32,
      "screenHAlign": "center",
      "align": "right",
      "alpha": "{{py:xvm.total_hp.getAvgDamage('100','0',{{py:xvm.totalDamage}})}}",
      "textFormat": { "size": 15 },
      "format": "<font color='#F2F2F2'>{{l10n:avgDamage}}:</font> <b>{{py:xvm.total_hp.avgDamage('',{{py:xvm.totalDamage}})}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Threshold necessary for achievements "High caliber".
    // Порог необходимый для получения достижения "Основной калибр".
    "mainGun": {
      "enabled": true,
      "updateEvent": "PY(ON_UPDATE_HP)",
      "x": 170,
      "y": 32,
      "screenHAlign": "center",
      "alpha": "{{py:xvm.total_hp.getMainGun('100','0',{{py:xvm.totalDamage}})}}",
      "textFormat": { "size": 15 },
      "format": "<font color='#F2F2F2'>{{l10n:mainGun}}:</font> <b>{{py:xvm.total_hp.mainGun('',{{py:xvm.totalDamage}})}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Damage log (see damageLog.xc).
    // Лог полученного урона (см. damageLog.xc).
    "damageLog": {
      "enabled": true,
      "updateEvent": "PY(ON_HIT)",
      "x": "{{py:xvm.damageLog.log.x}}",
      "y": "{{py:xvm.damageLog.log.y}}",
      "layer": "bottom",
      "width": 400,
      "height": 232,
      "screenVAlign": "bottom",
      "format": "{{py:xvm.damageLog.log}}",
      "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.3 },
      "mouseEvents": {
        "mouseDown": "damageLog_mouseDown",
        "mouseUp": "damageLog_mouseUp",
        "mouseMove": "damageLog_mouseMove",
        "mouseWheel": "damageLog_mouseWheel"
      }
    },
    // Log of the received damage (see damageLog.xc).
    // Лог полученного урона (см. damageLog.xc).
    "lastHit": {
      "enabled": true,
      "updateEvent": "PY(ON_LAST_HIT)",
      "x": "{{py:xvm.damageLog.lastHit.x}}",
      "y": "{{py:xvm.damageLog.lastHit.y}}",
      "layer": "bottom",
      "width": 400,
      "height": 315,
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "textFormat": { "align": "center" },
      "format": "{{py:xvm.damageLog.lastHit}}",
      "shadow": { "$ref": { "path": "def.textFieldShadow" }, "alpha": 75, "blur": 5, "strength": 2 },
      "mouseEvents": {
        "mouseDown": "lastHit_mouseDown",
        "mouseUp": "lastHit_mouseUp",
        "mouseMove": "lastHit_mouseMove"
      }
    },
    // Fire message.
    // Сообщение о пожаре.
    "fire": {
      "enabled": true,
      "updateEvent": "PY(ON_FIRE)",
      "x": 0,
      "y": 0,
      "layer": "bottom",
      "width": 400,
      "height": 370,
      "screenHAlign": "center",
      "screenVAlign": "bottom",
      "alpha": "{{py:xvm.damageLog.fire}}",
      "textFormat": { "align": "center" },
      "format": "<font face='$FieldFont' size='44' color='#FE7903'>{{l10n:on_fire}}</font>",
      "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "0xFF0000", "blur": 15, "strength": 2 }
    },
    // Total damage.
    // Нанесенный урон.
    "totalDamage": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},33)}}",
      "y": 35,
      "alpha": "{{py:xvm.totalDamage>0?100|{{py:xvm.numberShotsDealt>0?100|60}}}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.totalDamage>0?{{py:xvm.totalDamageColor}}|{{py:xvm.numberShotsDealt>0?{{py:xvm.totalDamageColor}}|0xFFFFFF}}}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10D;</font> <b>{{py:xvm.totalDamage}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Total damage count.
    // Нанесенный урон подсчет.
    "totalDamageCount": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},33)}}",
      "y": 35,
      "alpha": "{{py:xvm.numberShotsDealt>0?100|60}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.numberShotsDealt>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10D;</font> <b>{{py:xvm.numberHitsDealt}} / {{py:xvm.numberShotsDealt}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Assisted damage.
    // Урон по ассисту.
    "totalAssist": {
      "enabled": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},98)}}",
      "y": 35,
      "alpha": "{{py:xvm.totalAssist>0?100|60}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.totalAssist>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10B;</font> <b>{{py:xvm.totalAssist}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Blocked damage.
    // Заблокированный урон.
    "totalBlocked": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},168)}}",
      "y": 35,
      "alpha": "{{py:xvm.numberShotsReceived>0?100|60}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.numberShotsReceived>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10C;</font> <b>{{py:xvm.totalBlocked}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Blocked damage count.
    // Заблокированный урон подсчет.
    "totalBlockedCount": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},168)}}",
      "y": 35,
      "alpha": "{{py:xvm.numberShotsReceived>0?100|60}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.numberShotsReceived>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10C;</font> <b>{{py:xvm.numberHitsBlocked}} / {{py:xvm.numberShotsReceived}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Detected enemies.
    // Обнаруженные враги.
    "detection": {
      "enabled": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},233)}}",
      "y": 35,
      "alpha": "{{py:xvm.detection>0?100|60}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.detection>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10A;</font> <b>{{py:xvm.detection}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // During stun damage.
    // Урон по оглушению.
    "totalStun": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": false,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},303)}}",
      "y": 35,
      "alpha": "{{py:xvm.isStuns?{{py:xvm.numberStuns>0?100|60}}|0}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.numberStuns>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10E;</font> <b>{{py:xvm.totalStun}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Stun count.
    // Количество оглушений.
    "totalStunCount": {
      "enabled": true,
      "hotKeyCode": 56, "onHold": "true", "visibleOnHotKey": true,
      "updateEvent": "PY(ON_TOTAL_EFFICIENCY), ON_PANEL_MODE_CHANGED",
      "x": "{{py:sum({{pp.widthLeft}},303)}}",
      "y": 35,
      "alpha": "{{py:xvm.isStuns?{{py:xvm.numberStuns>0?100|60}}|0}}",
      "width": 70,
      "height": 25,
      "textFormat": { "color": "{{py:xvm.numberStuns>0?0xFFC363|0xFFFFFF}}", "size": 15 },
      "format": "<font face='XVMSymbol' size='21' color='#F2F2F2'>&#x10E;</font> <b>{{py:xvm.numberStuns}}</b>",
      "shadow": ${ "def.textFieldShadow" }
    },
    // Engine repair timer
    // Таймер ремонта двигателя
    "repairTimeEngine": {
      "enabled": true,
      "updateEvent": "PY(ON_ENGINE_UPDATE)",
      "x": 5,
      "y": -147,
      "width": 45,
      "height": 42,
      "screenHAlign": "left",
      "screenVAlign": "bottom",
      "textFormat": { "color": "0xFFDD99", "size": 15 },
      "format": "{{py:repairTimeEngine}}",
      "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "0xFF0000", "blur": 3 }
    },
    // Gun repair timer
    // Таймер ремонта орудия
    "repairTimeGun": {
      "$ref": { "path": "def.repairTimeEngine" },
      "enabled": true,
      "updateEvent": "PY(ON_GUN_UPDATE)",
      "x": 5,
      "y": -71,
      "format": "{{py:repairTimeGun}}"
    },
    // Turret rotator repair timer
    // Таймер ремонта механизма поворота башни
    "repairTimeTurret": {
      "$ref": { "path": "def.repairTimeEngine" },
      "enabled": true,
      "updateEvent": "PY(ON_TURRETROTATOR_UPDATE)",
      "x": 5,
      "y": -33,
      "format": "{{py:repairTimeTurret}}"
    },
    // Chassis\wheels repair timer
    // Таймер ремонта гусениц\колёс
    "repairTimeComplex": {
      "$ref": { "path": "def.repairTimeEngine" },
      "enabled": true,
      "updateEvent": "PY(ON_COMPLEX_UPDATE)",
      "x": 178,
      "y": -147,
      "format": "{{py:repairTimeComplex}}"
    },
    // Surveying device repair timer
    // Таймер ремонта приборов наблюдения
    "repairTimeSurveying": {
      "$ref": { "path": "def.repairTimeEngine" },
      "enabled": true,
      "updateEvent": "PY(ON_SURVEYINGDEVICE_UPDATE)",
      "x": 178,
      "y": -109,
      "format": "{{py:repairTimeSurveying}}"
    },
    // Repair timer for radio
    // Таймер ремонта радиостанции
    "repairTimeRadio": {
      "$ref": { "path": "def.repairTimeEngine" },
      "enabled": true,
      "updateEvent": "PY(ON_RADIO_UPDATE)",
      "x": 178,
      "y": -71,
      "format": "{{py:repairTimeRadio}}"
    }
  },
  "labels": {
    // Referenced labels (extended format supported, see extra-field.txt).
    // Подключенные текстовые поля (поддерживается расширенный формат, см. extra-field.txt).
    "formats": [
      ${ "def.hitLog" },
      ${ "def.totalHP" },
      ${ "def.avgDamage" },
      ${ "def.mainGun" },
      ${ "def.damageLog" },
      ${ "def.lastHit" },
      ${ "def.fire" },
      ${ "def.totalDamage" },
      ${ "def.totalDamageCount" },
      ${ "def.totalAssist" },
      ${ "def.totalBlocked" },
      ${ "def.totalBlockedCount" },
      ${ "def.detection" },
      ${ "def.totalStun" },
      ${ "def.totalStunCount" },
      ${ "def.repairTimeEngine" },
      ${ "def.repairTimeGun" },
      ${ "def.repairTimeTurret" },
      ${ "def.repairTimeComplex" }, 
      ${ "def.repairTimeSurveying" },
      ${ "def.repairTimeRadio" }
    ]
  }
}
