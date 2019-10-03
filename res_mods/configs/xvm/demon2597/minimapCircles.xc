/**
 * Minimap circles. Only real map meters. Only for own unit.
 * Круги на миникарте. Дистанция только в реальных метрах карты. Только для своей техники.
 */
{
    "circles": {
        // View distance
        // Дальность обзора
        // Параметры:
        //   "enabled": false - выключен
        //   "distance" - дистанция
        //   "scale" - масштаб круга (множитель расстояния) (параметр не обязательный)
        //   "thickness" - толщина
        //   "alpha" - прозрачность
        //   "color" - цвет
        //   "state" - состояние танка: 1-стоит, 2-двигается (параметр не обязательный)
        // Доступные значения расстояния:
        //   N - число в метрах, рисуется статический круг
        //   "dynamic"   - реальная дальность обзора танка c учётом стоит/движется
        //   "motion"    - реальная дальность обзора танка в движении
        //   "standing"  - реальная дальность обзора танка стоя
        //   "blindarea" - ограниченная дальность обзора танка c учётом стоит/движется (50<=X<=445)
        //   "blindarea_motion" - ограниченная дальность обзора танка в движении (50<=X<=445)
        //   "blindarea_standing" - ограниченная дальность обзора танка стоя (50<=X<=445)
        // Источник:
        //   https://kr.cm/f/t/15467/c/187139/
        //   https://kr.cm/f/t/15467/c/186794/
        "view": [
            // Main circles:
            // Основные круги:
            { "enabled": "{{my-vtype-key=SPG?false|true}}", "distance": 564, "scale": 1, "thickness": 0.85, "alpha": 50, "color": "0xCCCCCC" },
            { "enabled": true, "distance": 445, "scale": 1, "thickness": 0.85, "alpha": 50, "color": "0xFFC363" },
            { "enabled": true, "distance": 50,  "scale": 1, "thickness": 0.85, "alpha": 50, "color": "0xCCCCCC" },
            // Additional circles:
            // Дополнительные круги:
            // Version 1 (445m limited view distance)
            // Вариант 1 (дальность обзора ограниченная 445м)
            { "enabled": false, "distance": "blindarea_standing", "scale": 1, "thickness": 0.85, "alpha": 25, "color": "0x60FF00" },
            { "enabled": false, "distance": "blindarea_motion",   "scale": 1, "thickness": 0.85, "alpha": 25, "color": "0x60FF00" },
            { "enabled": false, "distance": "blindarea",          "scale": 1, "thickness": 0.85, "alpha": 25, "color": "0x60FF00" },
            // Version 2 (unlimited (real) view distance)
            // Вариант 2 (неограниченная (реальная) дальность обзора)
            { "enabled": true, "distance": "standing", "scale": 1, "thickness": 0.85, "alpha": 25, "color": "0x60FF00" },
            { "enabled": true, "distance": "motion",   "scale": 1, "thickness": 0.85, "alpha": 25, "color": "0x60FF00" },
            { "enabled": true, "distance": "dynamic",  "scale": 1, "thickness": 0.85, "alpha": 25, "color": "0x60FF00" }
        ],
        // Maximum range of fire for artillery
        // Artillery gun fire range may differ depending on vehicle angle relative to ground
        // and vehicle height positioning relative to target. These factors are not considered.
        // See pics at // See pics at https://kr.cm/f/t/2076/c/35697/
        // ------------------------------------------------------------------------------------------------
        // Максимальная дальность стрельбы для артиллерии
        // Дальнобойность арты может меняться в зависимости от углов постановки машины на склонах местности
        // и высоте расположения машины относительно цели. На миникарте эти факторы не учитываются.
        // Подробнее по ссылке: https://kr.cm/f/t/2076/c/35697/
        "artillery": { "enabled": true, "thickness": 0.85, "alpha": 50, "color": "0xFE7903" },
        // Maximum range of shooting for machine gun
        // Максимальная дальность полета снаряда для пулеметных танков
        "shell":     { "enabled": true, "thickness": 0.85, "alpha": 50, "color": "0xFE7903" },
        // Special circles dependent on vehicle type.
        // Many configuration lines for the same vehicle make many circles.
        // See other vehicle types at (replace : symbol with -):
        // https://bitbucket.org/XVM/xvm/src/default/src/xpm/xvm_main/vehinfo_short.py
        // ------------------------------------------------------------------------------------------------
        // Специальные круги, зависящие от модели техники.
        // Несколько строк для одной техники делают несколько кругов.
        // Названия танков для дополнения брать по ссылке (символ : заменяется -):
        // https://bitbucket.org/XVM/xvm/src/default/src/xpm/xvm_main/vehinfo_short.py
        "special": [
          // Example: Artillery gun fire range circle
          // Пример: Круг дальности стрельбы арты
          // "enabled": false - выключен; "thickness" - толщина; "alpha" - прозрачность; "color" - цвет.
          //{ "ussr-SU-18": { "enabled": true, "distance": 500, "thickness": 0.85, "alpha": 50, "color": "0xEE4444" } },
        ]
    }
}