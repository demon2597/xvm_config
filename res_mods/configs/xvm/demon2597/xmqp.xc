/**
 * XMQP services settings
 * Настройки сервисов XMQP
 */
{
  "xmqp": {
    // Display time for {{x-spotted}} macro (sec)
    // Время отображения для макроса {{x-spotted}} (сек)
    "spottedTime": 9,
    // Display time for minimap drawings (sec)
    // Время отображения рисования по миникарте (сек)
    "minimapDrawTime": 5,
    // Thickness of the lines for minimap drawings
    // Толщина линий в рисовании по миникарте
    "minimapDrawLineThickness": "{{player?1|{{squad?1.3|1}}}}",
    // Color for minimap drawings (null for user colors)
    // Цвет для рисования по миникарте (null для пользовательских цветов)
    "minimapDrawColor": "{{player?#FFC363|{{squad?#FF914C|{{c:xr}}}}}}",
    // Opacity of the minimap drawings
    // Прозрачность рисования по миникарте
    "minimapDrawAlpha": 80
  }
}
