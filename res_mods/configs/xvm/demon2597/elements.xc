/**
 * GUI elements settings (experts only)
 * Настройки графических элементов (только для экспертов!)
 * https://kr.cm/f/t/1761/
 *
 * commands:
 *   "$log": 1,  // команда $log используется для вывода значений в лог, число - уровень вложенности
 *   "$delay": 1,
 *   "$interval": 1,
 *   "$textFormat": {   // подстановка для формата текста
 *     //"$log": 1,             // тоже можно логгировать
 *     "size": 30,              // размер шрифта
 *     "font": "$TitleFont",    // шрифт пожирнее
 *     "align": "center"        // выравнивание
 *   },
 *   "x"     - положение по горизонтали / horizontal position
 *   "y"     - положение по вертикали   / vertical position
 *   "alpha" - прозрачность             / transparency
 */
    /*
    "battleDamageLogPanel"          - Панель: Информирование в бою - История событий         / Panel: Battle Notifications - Log
    "battleLoading"                 - Экран загрузки боя                                     / Battle Loading screen
    "battleMessenger"               - Чат                                                    / Chat
    "battleTicker"                  - ?                                                      / ?
    "battleTimer"                   - Таймер боя                                             / Battle timer
    "consumablesPanel"              - Панель снарядов и расходников                          / Ammo bar
    "damageInfoPanel"               - Внутриигровая панель критов от навыка "эксперт"        / Ingame crits panel by "expert" skill
    "damagePanel"                   - Панель повреждений                                     / Damage panel
    "debugPanel"                    - Панель пинга/лага/фпс                                  / Debug panel (ping/lag/fps)
    "destroyTimersPanel"            - Таймер до уничтожения (утопление, переворот)           / Destroy timers (drowning, overturned)
    "endWarningPanel"               - Панель оповещяющая о конце боя                         / Panel informing about the imminent end of the battle
    "epicRandomPlayersPanel"        - Панели игроков/уши (Генеральное сражение)              / Players panels (Grand Battles)
    "epicRandomScorePanel"          - Счёт боя (Генеральное сражение)                        / Battle score (Grand Battles)
    "fragCorrelationBar"            - Счёт боя                                               / Battle score
    "fullStats"                     - Окно статистики по клавише Tab                         / Battle Statistics form on the Tab key
    "gameMessagesPanel"             - Сообщение о результате боя (победа, поражение, ничья)  / Messages on the outcome of the battle (victory, defeat, draw)
    "hintPanel":                    - Панель с подсказками в бою                             / Panel tips in battle
    "minimap"                       - Миникарта                                              / Minimap
    "playersPanel"                  - Панели игроков/уши                                     / Players panels
    "prebattleTimer"                - Таймер до начала боя                                   / Timer before a battle start
    "questProgressTopAnimContainer" - Панель: Информирование в бою - Прогресс ЛБЗ            / Panel: Battle Notifications - Progress for Personal Missions
    "questProgressTopView"          - Панель: Информирование в бою - Прогресс ЛБЗ (анимация) / Panel: Battle Notifications - Progress for Personal Missions (animation)
    "radialMenu"                    - Радиальное меню                                        / Radial menu
    "ribbonsPanel"                  - Ленты боевой эффективности                             / Battle performance badges
    "siegeModePanel"                - Панель осадного режима                                 / Siege mode panel
    "sixthSense"                    - Лампа шестого чувства                                  / Sixth sense lamp
    "teamBasesPanelUI"              - Полоса захвата баз                                     / Capture bar
    */
{
  // Interface elements
  // Элементы интерфейса
  "elements": [
    /*
    {
      "$delay": 100,
      "battleDamageLogPanel": {
        //"x": 229,
        //"y": 853,
        "summaryDamageBlock": {
          "y": 14,
          "x": 0
        },
        "damageValTF": {
          "y": 22,
          "x": 24
        },
        "summarySupportBlock": {
          "y": 14,
          "x": 60
        },
        "supportValTF": {
          "y": 22,
          "x": 84
        },
        "summaryDefenceBlock": {
          "y": 14,
          "x": 120
        },
        "defenceValTF": {
          "y": 22,
          "x": 144
        }
      }
    },
    */
    {
      "$delay": 100,
      "sixthSense": {
        "y": 240
      }
    },
    {
      "$delay": 100,
      "ribbonsPanel": {
        "y": 862
      }
    }
  ]
}
