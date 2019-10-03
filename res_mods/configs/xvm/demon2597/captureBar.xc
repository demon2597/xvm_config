/**
 * Capture bar.
 * Полоса захвата.
 */
{
  "def": {
    // Text fields shadow definition.
    // Шаблон тени текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 35, "blur": 3, "strength": 1, "distance": 0, "angle": 0 }
  },
  "captureBar": {
    // false - Disable
    // false - Отключить
    "enabled": true,
    // Y value (34 for vanilla client)
    // Значение Y (34 для чистого клиента)
    "y": 60,
    // Change the distance between capture bars
    // Изменение расстояния между полосами захвата
    "distanceOffset": 0,
    // Hide capture progress bar
    // Спрятать полосу прогресса захвата
    "hideProgressBar": false,
    // Enemies capturing ally base
    // Противник захватывает базу союзников
    "enemy": {
      // Capture bar color (default: use system color)
      // Цвет полосы захвата (по умолчанию используется системный цвет)
      "color": null,
      // Title textfield (center)
      // Текстовое поле с заголовком (среднее)
      "title": {
        // X offset
        // Смещение по X
        "x": 0,
        // Y offset
        // Смещение по Y
        "y": -1,
        // Text format
        // Формат текста
        "format": "<font size='15' color='{{py:replace('{{.colors.system.enemy_alive}}', '0x', '#')}}'>{{l10n:allyBaseCapture}} <font color='#F2F2F2'>{{cap.points%d~%}}</font></font>",
        // Full capture text format
        // Формат текста при полном захвате
        "done": "<font size='15' color='#FFC363'>{{l10n:allyBaseCaptured}}</font><font size='17'>\n\n</font><font face='XVMSymbol'  size='183' color='#FFC363'>           &#x41;</font>",
        // Shadow options
        // Параметры тени
        "shadow": ${ "def.textFieldShadow" }
      },
      // Vehicles count textfield (left)
      // Текстовое поле с количеством танков (слева)
      "players": {
        "x": -225,
        "y": 0,
        "format": "<font face='XVMSymbol' size='15' color='#F2F2F2'>&#x113;</font>  <font color='#FFC363'><b>{{cap.tanks}}</b></font>",
        "done": "<font face='XVMSymbol' size='15' color='#F2F2F2'>&#x113;</font>  <font color='#FFC363'><b>{{cap.tanks}}</b></font>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Timer textfield (right)
      // Текстовое поле с таймером (справа)
      "timer": {
        "x": 200,
        "y": 0,
        "format": "<font face='XVMSymbol' size='15' color='#F2F2F2'>&#x114;</font>  <font color='#FFC363'><b>{{cap.time}}</b></font>",
        "done": "<font face='XVMSymbol' size='15' color='#F2F2F2'>&#x114;</font>  <font color='#FFC363'><b>{{cap.time}}</b></font>",
        "shadow": ${ "def.textFieldShadow" }
      },
      // Background field
      // Фоновое поле
      "background": {
        "x": 0,
        "y": 0,
        "format": "",
        "done": "",
        "shadow": ${ "def.textFieldShadow" }
      }
    },
    // Allies capturing enemy base
    // Союзники захватывают базу противника
    "ally": {
      "color": null,
      "title": {
        "$ref": { "path":"captureBar.enemy.title" },
        "format": "<font size='15' color='{{py:replace('{{.colors.system.ally_alive}}', '0x', '#')}}'>{{l10n:enemyBaseCapture}} <font color='#F2F2F2'>{{cap.points%d~%}}</font></font>",
        "done": "<font size='15' color='#FFC363'>{{l10n:enemyBaseCaptured}}</font><font size='16'>\n\n\n\n</font><font face='XVMSymbol' size='183' color='#FFC363'>&#x40;           <font size='0'>&#x40;</font></font>"
      },
      "players": ${"captureBar.enemy.players"},
      "timer": ${"captureBar.enemy.timer"},
      "background": ${"captureBar.enemy.background"}
    }
  }
}
