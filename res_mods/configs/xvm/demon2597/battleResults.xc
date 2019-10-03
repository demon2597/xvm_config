/**
 * Parameters of the After Battle Screen.
 * Параметры окна послебоевой статистики.
 */
{
  "battleResults": {
    // Initial page (1, 2, 3)
    // Номер начальной страницы (1, 2, 3)
    "startPage": 1,
    // true - Display total experience in first page
    // true - Отображать общий полученный опыт на первой странице
    "showTotalExperience": true,
    // true - Display crew experience in first page
    // true - Отображать опыт экипажа на первой странице
    "showCrewExperience": true,
    // true - Display net income of credits in first page
    // true - Отображать чистый доход на первой странице
    "showNetIncome": true,
    // true - Display shots precision and damage in first page under credits and XP
    // true - Отображать процент попаданий и урон на первой странице, под кредитами и опытом
    "showExtendedInfo": true,
    // true - Show totals for your battle efficiency in first page
    // true - Показывать итог по вашей боевой эффективности на первой странице
    "showTotals": true,
    // Customize "Manageable bonus to experience" panel.
    // Настройка панели "Управляемый бонус к опыту".
    "bonusState": {
      // false - disable.
      // false - отключить.
      "enabled": true,
      // Offset panel of X axis.
      // Смещение панели по оси X.
      "offsetX": 25,
      // Offset panel of Y axis.
      // Смещение панели по оси Y.
      "offsetY": 60,
      // Panel background transparency, in percents.
      // 0 - transparent, 100 - opaque.
      // Прозрачность подложки панели, в процентах.
      // 0 - прозрачная, 100 - не прозрачная.
      "backgroundAlpha": 70
    }
  }
}
