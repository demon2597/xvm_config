/**
 * Hit log (my hits calculator).
 * For additional settings see battleLabels.xc/def/hitlog
 * Лог попаданий (счетчик своих попаданий).
 * Дополнительные настройки см. в battleLabels.xc/def/hitlog
 */
{
  "hitLog": {
    // Group hits by players name.
    // Группировать попадания по имени игрока.
    "groupHitsByPlayer": true,
    // Insert order: begin - insert new values to begin, end - add to end.
    // Сортировка попаданий: begin - новые значения добавляются сверху, end - снизу.
    "insertOrder": "begin",
    // Substitution for {{hitlog.dead}} macro when tank is dead.
    // Подстановка для макроса {{hitlog.dead}}, когда танк умирает.
    "deadMarker": "&#x29;",
    "blowupMarker": "&#x28;",
    // Default header format (before first hit). Only localization macros are allowed, see macros.txt.
    // Формат заголовка по умолчанию (до первого попадания). Допускаются только макросы перевода, см. macros.txt.
    "defaultHeader": "",
    // Hits header format, including last hit (macros allowed, see macros.txt).
    // Формат заголовка (допускаются макроподстановки, см. macros.txt).
    "formatHeader": "<textformat leading='6'><font face='$FieldFont' size='15' color='#F2F2F2'>{{l10n:Hits}}: <b><font color='#FFFFFF'>{{hitlog.n}}</font></b>  {{l10n:Total}}: <b><font color='#FFC363'>{{hitlog.dmg-total}}</font></b>  {{l10n:Last}}: <b><font color='#FFFFFF'>{{dmg}}</font></b></font></textformat>",
    // List of hits format (macros allowed, see macros.txt).
    // Формат лога попаданий (допускаются макроподстановки, см. macros.txt).
    "formatHistory": "<textformat leading='-2' tabstops='[22,96,124,162,208]'><font face='$FieldFont' size='13' color='{{hitlog.dead?#FFE1A6|#F2F2F2}}'>&#xD7;{{hitlog.n-player}}<tab>{{dmg-kind}}<tab>{{dmg}}<tab>({{hitlog.dmg-player}})<tab><font face='XVMSymbol' size='19'>{{hitlog.dead|&#x2A;}}</font><tab><font face='XVMSymbol' size='20'>{{vtype}}</font>  {{vehicle}}</font></textformat>"
  }
}
