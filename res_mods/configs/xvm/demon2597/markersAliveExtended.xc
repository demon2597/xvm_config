/**
 * Options for alive with Alt markers.
 * Настройки маркеров для живых с Alt.
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
     "damageText": {                          //  всплывающий урон
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -100,                        //  положение по оси Y
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
            "damageMessage": "{{dmg}}",       //  текст при обычном уроне (см. описание макросов в macros.txt)
            "shadow": { "$ref": { "path": "def.textFieldShadow" }, "blur": 2 }
     },
     // Text fields.
     // Текстовые поля.
     "textFields": [
            // Название танка
            {
              "name": "vehicle",              //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": "{{xvm-stat?-55|-41}}",    //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 14,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{rlevel}} {{vehicle}}",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
            // Ник игрока
            {
              "name": "nick",                 //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": "{{xvm-stat?-71|-57}}",    //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 15,                   //  размер
                "color": "{{c:system}}",      //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{name%.12s~..}} <font size='14' color='{{topclan?#FFC363|#E5D39A}}'>{{clannb}}</font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
            // Рейтинг и количество боев
            {
              "name": "rating, battles",      //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -40,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 13,                   //  размер
                "color": "0xEDEDED",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "<font size='{{xvm-stat?13|0}}'><font color='{{c:t-battles}}'>{{t-hb>=99.5?XXh|{{t-hb%d~h|--h}}}}</font>  <font color='{{c:xte}}'>{{xte%s|--}}</font>  <font color='{{c:xr}}'>{{r_size=2?{{r%s|--}}|{{r>=10000?XXXX|{{r%d|----}}}}}}</font>  <font color='{{c:kb}}'>{{kb>=99.5?XXk|{{kb%d~k|--k}}}}</font></font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
            // Процент оставшегося здоровья
            {
              "name": "hp ratio",             //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 0,                         //  положение по оси X
              "y": -20,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 13,                   //  размер
                "color": "0xEDEDED",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "{{hp-ratio%d}}% / {{hp-max}}",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
            // Процент побед
            {
              "name": "global win ratio",     //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": 32,                        //  положение по оси X
              "y": -29,                       //  положение по оси Y
              "alpha": 100,                   //  прозрачность (допускается использование динамической прозрачности, см. macros.txt)
              "align": "left",                //  выравнивание поля (left, center [default], right)
              "textFormat": {                 //  параметры шрифта
                "font": "$FieldFont",         //  название
                "size": 13,                   //  размер
                "color": "0xEDEDED",          //  цвет (допускается использование динамического цвета, см. macros.txt)
                "bold": true,                 //  обычный (false) или жирный (true)
                "italic": false               //  обычный (false) или курсив (true)
              },
              "format": "<font size='{{xvm-stat?13|0}}' color='{{c:winrate}}'>{{winrate%d~%|--%}}</font>",  //  формат текста. См. описание макросов в macros.txt
              "shadow": ${ "def.textFieldShadow" }
            },
            // Процент побед на танке
            {
              "name": "vehicle win ratio",    //  название текстового поля, ни на что не влияет
              "enabled": true,                //  false - не отображать
              "x": -32,                       //  положение по оси X
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
              "format": "<font size='{{xvm-stat?13|0}}' color='{{c:t-winrate}}'>{{t-winrate%d~%|--%}}</font>",
              "shadow": ${ "def.textFieldShadow" }
            }
       ]
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
          "contourIcon": {                    //  иконка танка
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
            "y": -100,                        //  положение по оси Y
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
            "y": -100,                        //  положение по оси Y
            "alpha": 100                      //  прозрачность
          },
          "damageIndicator": {                // Индикатор урона (рикошет, критический урон, ...)
            "enabled": true,                  // false - не отображать
            "showText": false,                // false - показывать только иконку
            "x": 73,                          // положение по оси X
            "y": -35,                         // положение по оси Y
            "alpha": 100                      // прозрачность
          },
          "damageText": {                     //  всплывающий урон
            "enabled": true,                  //  false - не отображать
            "x": 0,                           //  положение по оси X
            "y": -100,                        //  положение по оси Y
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
            "damageMessage": "{{dmg}}",	      //  текст при уроне (см. описание макросов в macros.txt)
            "shadow": { "$ref": { "path": "def.textFieldShadow" }, "color": "{{c:dmg}}", "blur": 6, "strength": 3 }
          },
          "damageTextPlayer": {
            "$ref": {  "path": "def.damageText" }
          },
          "damageTextSquadman": {
            "$ref": {  "path": "def.damageText" }
          },
          // Block of text fields (extended format supported, see extra-field.txt).
          // Блок текстовых полей (поддерживается расширенный формат, см. extra-field.txt).
          "textFields": 
            ${ "def.textFields" }
          },
  "enemy": {
    "$ref": { "path": "ally" }
  }
}