/**
 * Options for alive without Alt markers.
 * Настройки маркеров для живых без Alt.
 */
{
  // Definitions
  // Шаблоны
  "def": {
    // Text fields shadow.
    // Тень текстовых полей.
    "textFieldShadow": { "enabled": true, "color": "0x000000", "alpha": 100, "blur": 1, "strength": 2, "distance": 0, "angle": 0 },
    // Floating damage values.
    // Всплывающий урон.
    "damageText": {                           //  всплывающий урон
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -95,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "textFormat": {                   //  параметры шрифта
              "font": "$FieldFont",           //  название
              "size": 17,                     //  размер
              "color": "{{c:dmg}}",           //  цвет (допускается использование динамического цвета, см. macros.txt)
              "bold": true,                   //  обычный (false) или жирный (true)
              "italic": false                 //  обычный (false) или курсив (true)
            },
            "speed": 2,                       //  время отображения отлетающего урона
            "maxRange": 60,                   //  расстояние, на которое отлетает урон
            "damageMessage": "{{dmg}}",       //  текст при уроне (см. описание макросов в macros.txt)
            "shadow": { "$ref": { "path": "def.textFieldShadow" }, "blur": 2 }
     },
    // Text fields.
    // Текстовые поля.
      // Название танка
      "vehicle": {
              "name": "vehicle",              //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -41,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 14,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{vehicle}}",        //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
      // Ник ирока
      "nick": {
              "name": "nick",                 //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -57,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 15,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "<font size='{{battletype?15|{{squad?15|0}}}}'>{{name%.12s~..}}</font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
      // Текущее здоровье
      "hp": {
              "name": "hp",                   //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -20,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 13,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{hp}}",             //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
       // Эффективность по танку
       "xte": {
              "name": "xte",                  //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": -26,                       //  положение по оси X
              "y": -25,                       //  положение по оси Y
              "alpha": "{{a:t-battles|0}}",   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 15,                   //  размер
                "color": "{{c:xte}}",         //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "<font size='{{xvm-stat?15|0}}'>&#x61;</font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
      // Сток башня
      "turret": {
              "name": "turret",               //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 42,                        //  положение по оси X
              "y": -34,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "format": "<img src='cfg://demon2597/img/turret/{{turret?{{squad?sq|{{tk?tk|{{ally?al|en}}}}}}{{turret}}|none}}.png' width='36' height='36'>"  //  формат текста. См. описание макросов в macros.txt
            },
      // Событие XMQP
      "xmqpEvent": {
              "name": "xmqp event",           //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": -36,                       //  положение по оси X
              "y": -34,                       //  положение по оси Y
              "alpha": "{{x-overturned?100|{{x-spotted?100|50}}}}",  //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "align": "right",               //  выравнивание поля (left, center [default], right)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 24,                   //  размер
                "color": "{{x-overturned?0xFFBB00|{{x-spotted?0xFFBB00|0xFFFFFF}}}}",  //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{x-overturned?&#x112;|{{x-spotted?&#x70;|{{x-sense-on?&#x70;}}}}}}",  //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.5 }
            },
      // Подсветка события XMQP при засвете
      "xmqpEventHighlight": {
              "$ref": { "path":"def.xmqpEvent" },
              "name": "xmqp event highlight", //  название текстового поля, ни на что не влияет
              "alpha": "{{x-spotted?100|0}}", //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "format": "<font alpha='#00'>{{x-overturned?&#x112;|{{x-spotted?&#x70;}}}}</font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "0xFFBB00", "blur": 6 }
            },
      // Порядковый номер игрока
      "position": {
              "name": "position",             //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": -33,                       //  положение по оси X
              "y": -29,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "align": "right",               //  выравнивание поля (left, center [default], right)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 13,                   //  размер
                "color": "0xEDEDED",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "<font size='{{battletype?13|0}}'>{{position}}</font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "{{c:system}}", "blur": 6 }
            },
      // Топ клан
      "topClan": {
              "name": "top clan",             //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": -15,                       //  положение по оси X
              "y": "{{ally?{{battletype?-79|{{squad?-79|-64}}}}|-64}}",   //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "align": "right",               //  выравнивание поля (left, center [default], right)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 26,                   //  размер
                "color": "0xFFC363",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{topclan}}",        //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.5 }
            },
      // Взвод
      "squad": {
              "name": "squad",                //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 15,                        //  положение по оси X
              "y": "{{ally?{{battletype?-73|{{squad?-73|-58}}}}|-58}}",   //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "align": "left",                //  выравнивание поля (left, center [default], right)
              "textFormat": {                 //  параметры шрифта
                "align": "left"               //  выравнивание текста (left, center [default], right)
              },
              "format": "<img src='cfg://demon2597/img/mmSquads/{{squad-num?{{squad?|{{tk?tk|{{ally?al|en}}}}}}{{squad?none|{{squad-num}}}}|none}}.png' width='17' height='20'>"  //  формат текста. См. описание макросов в macros.txt
            }
  },
  "ally": {
          "healthBar": {                      //  индикатор здоровья
            "enabled": true,                  //  false - не отображать
            "x": -31,                         //  положение по оси X
            "y": -37,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "color": "{{c:system}}",          //  цвет основной (допускается использование динамического цвета, см. macros.txt)
            "lcolor": "{{c:system}}",         //  цвет дополнительный (для градиента)
            "width": 60,                      //  ширина полосы здоровья
            "height": 3,                      //  высота полосы здоровья
            "border": {                       //  параметры подложки и рамки
              "alpha": 30,                    //  прозрачность
              "color": "0x000000",            //  цвет
              "size": 1                       //  размер рамки
            },
            "fill": {                         //  параметры оставшегося здоровья
              "alpha": 70                     //  прозрачность
            },                                //
            "damage": {                       //  параметры анимации отнимаемого здоровья
              "alpha": 80,                    //  прозрачность
              "color": "0xFFFFFF",            //  цвет
              "fade": 1                       //  время затухания в секундах
            }
          },
          "vehicleIcon": {                    //  иконка типа танка (тт/ст/лт/пт/арта)
            "enabled": true,                  //  false - не отображать
            "showSpeaker": false,             //  true - Показывать спикер даже если visible=false
            "x": 0,                           //  положение по оси X
            "y": -16,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность
            "maxScale": 100,                  //  максимальный масштаб (по умолчанию 100)
            "offsetX": 0,                     //  смещение по оси X (?)
            "offsetY": 0                      //  смещение по оси Y (?)
          },
          "contourIcon": {                    //  иконки танка
            "enabled": false,                 //  false - не отображать
            "x": 6,                           //  положение по оси X
            "y": -65,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "color": "{{c:system}}",          //  цвет (допускается использование динамического цвета, см. macros.txt)
            "amount": 0                       //  интенсивность цвета от 0 до 100. По умолчанию 0, т.е. выключено.
          },
          "actionMarker": {                   //  маркеры "Нужна помощь" и "Атакую"
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": "{{hp-ratio<=24.4?{{battletype?-112|{{squad?-112|-97}}}}|{{battletype?-100|{{squad?-100|-85}}}}}}",  //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "levelIcon": {                      //  уровень танка
            "enabled": false,                 //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -21,                         //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "vehicleStatusMarker": {            //  Маркер оглушения и маркер боевого снаряжения
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": "{{hp-ratio<=24.4?{{battletype?-112|{{squad?-112|-97}}}}|{{battletype?-100|{{squad?-100|-85}}}}}}",  //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "damageIndicator": {                // Индикатор урона (рикошет, критический урон, ...)
            "enabled": true,                  // false - не отображать
            "showText": false,                // false - показывать только иконку
            "x": "{{turret?75|49}}",          // положение по оси X
            "y": -35,                         // положение по оси Y
            "alpha": 100                      // прозрачность
          },
          "damageText": {                     //  всплывающий урон
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -95,                         //  положение по оси Y
            "alpha": 100,                     //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
            "textFormat": {                   //  параметры шрифта
              "font": "$FieldFont",           //  название
              "size": 17,                     //  размер
              "color": "0xFFFFFF",            //  цвет (допускается использование динамического цвета, см. macros.txt)
              "bold": false,                  //  обычный (false) или жирный (true)
              "italic": false                 //  обычный (false) или курсив (true)
            },
            "speed": 2,                       //  время отображения отлетающего урона
            "maxRange": 60,                   //  расстояние, на которое отлетает урон
            "damageMessage": "{{dmg}}",       //  текст при уроне (см. описание макросов в macros.txt)
            "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "{{c:dmg}}", "blur": 6, "strength": 3 }
          },
          "damageTextPlayer": {
            "$ref": { "path": "def.damageText" }
          },
          "damageTextSquadman": {
            "$ref": { "path": "def.damageText" }
          },
          // Block of text fields (extended format supported, see extra-field.txt).
          // Блок текстовых полей (поддерживается расширенный формат, см. extra-field.txt).
          "textFields": [
            // Название танка
            ${ "def.vehicle" },
            // Ник игрока
            ${ "def.nick" },
            // Текущее здоровье
            ${ "def.hp" },
            // Эффективность по танку
            ${ "def.xte" },
            // Сток башня
            ${ "def.turret" },
            // Подсветка события XMQP при засвете
            ${ "def.xmqpEventHighlight" },
            // Событие XMQP
            ${ "def.xmqpEvent" },
            // Топ клан
            ${ "def.topClan" },
            // Взвод
            ${ "def.squad" },
            // Щит фон
            {
              "name": "shield background",    //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": "{{battletype?-81|{{squad?-81|-66}}}}",  //  положение по оси Y
              "alpha": "{{a:hp-ratio}}",      //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 26,                   //  размер
                "color": "0x000000",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "&#x45;",             //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "enabled": false }
            },
            // Щит
            {
              "name": "shield",               //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": "{{battletype?-81|{{squad?-81|-66}}}}",  //  положение по оси Y
              "alpha": "{{a:hp-ratio}}",      //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 26,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{xvm-stat?&#x43;|&#x49;}}",  //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.5 }
            },
            // Звезда
            {
              "name": "star",                 //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": "{{hp-ratio<=24.4?{{battletype?-77|{{squad?-77|-62}}}}|{{battletype?-71|{{squad?-71|-56}}}}}}",  //  положение по оси Y
              "alpha": "{{xvm-stat?100|0}}",  //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 17,                   //  размер
                "color": "{{c:xr|#DBDBDB}}",   //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "&#x21;",             //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.5 }
            }
          ]
        },
  "enemy": {
          "$ref": { "path": "ally" },
          "actionMarker": {                   //  маркеры "Нужна помощь" и "Атакую"
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": "{{hp-ratio<=24.4?-100|-85}}",  //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "vehicleStatusMarker": {            //  Маркер оглушения и маркер боевого снаряжения
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": "{{hp-ratio<=24.4?-100|-85}}",  //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          // Block of text fields (extended format supported, see extra-field.txt).
          // Блок текстовых полей (поддерживается расширенный формат, см. extra-field.txt).
          "textFields": [
            // Название танка
            ${ "def.vehicle" },
            // Текущее здоровье
            ${ "def.hp" },
            // Эффективность по танку
            ${ "def.xte" },
            // Сток башня
            ${ "def.turret" },
            // Порядковый номер игрока
            ${ "def.position" },
            // Топ клан
            ${ "def.topClan" },
            // Взвод
            ${ "def.squad" },
            // Прицел фон
            {
              "name": "sight background",     //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -72,                       //  положение по оси Y
              "alpha": "{{a:hp-ratio}}",      //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 37,                   //  размер
                "color": "0x000000",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "&#x44;",             //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "enabled": false }
            },
            // Прицел
            {
              "name": "sight",                //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -72,                       //  положение по оси Y
              "alpha": "{{a:hp-ratio}}",      //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 37,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{xvm-stat?&#x42;|&#x48;}}",  //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.5 }
            },
            // Крест
            {
              "name": "cross",                //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": "{{hp-ratio<=24.4?-62|-56}}",  //  положение по оси Y
              "alpha": "{{xvm-stat?100|0}}",  //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "XVMSymbol",          //  название
                "size": 17,                   //  размер
                "color": "{{c:xr|#DBDBDB}}",   //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": false,                //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "&#x22;",             //  формат текста. См. описание макросов в macros.txt
              "shadow": { "$ref": { "path": "def.textFieldShadow" }, "strength": 1.5 }
            }
          ]
        }
}