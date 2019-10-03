/**
 * UserInfo window.
 * Окно достижений.
 */
{
  "userInfo": {
    // Initial page for current user service record
    // Available values:
    //    "summary"    - "summary" page
    //    "awards"     - "awards" page
    //    "statistics" - "statistics" page
    //    "vehicles"   - "vehicles" page
    //    "hof"        - "hall of Fame" page
    // Начальная страница достижений текущего пользователя
    // Допустимые значения:
    //    "summary"    - страница "сводка"
    //    "awards"     - страница "награды"
    //    "statistics" - страница "статистика"
    //    "vehicles"   - страница "техника"
    //    "hof"        - страница "зал славы"
    "profileStartPage": "vehicles",
    // Initial page for other players service records
    // Available values:
    //    "summary"    - "summary" page
    //    "awards"     - "awards" page
    //    "statistics" - "statistics" page
    //    "vehicles"   - "vehicles" page
    // Начальная страница достижений других игроков
    // Допустимые значения:
    //    "summary"    - страница "сводка"
    //    "awards"     - страница "награды"
    //    "statistics" - страница "статистика"
    //    "vehicles"   - страница "техника"
    "contactsStartPage": "vehicles",
    // true - Show xTE column in the vehicle list
    // true - Показывать колонку xTE в списке техники
    "showXTEColumn": true,
    // true - Enable filter tanks in hangar by default.
    // true - включить фильтр отображения танков в ангаре по умолчанию.
    "inHangarFilterEnabled": true,
    // true - Show filters on tanks.
    // true - показывать фильтры отображения танков.
    "showFilters": true,
    // true - Set the default focus to the filter text input
    // true - Выбрать поле ввода фильтра по умолчанию
    "filterFocused": true,
    // TODO: description of the substitutions (+all, -premium, ...)
    // default value of the filter
    // значение фильтра по умолчанию
    "defaultFilterValue": ""
  }
}
