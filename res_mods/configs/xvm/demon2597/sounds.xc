/**
 * Extra sounds settings.
 * Настройки дополнительных звуков.
 * https://kr.cm/f/t/18955/
 */
{
  "sounds": {
    "enabled": true,
    // true to enable remote communication between WoT client and WWISE Authoring Tools
    // установите в true для включения коммуникации между клиентом WoT и WWISE Authoring Tools
    "remote_communication": false,
    // List of extra banks to load
    // Use comma for multiple values: ["bank1.bnk", "bank2.bnk"]. Path is relative to ./res_mods/x.x.x/audioww/
    // You can use xvm:// (path relative to /res_mods/mods/shared_resources/xvm/ ) and cfg:// (path relative to /res_mods/configs/xvm/ )
    // Список дополнительных банков для загрузки
    // Несколько банков необходимо указывать через запятую: ["bank1.bnk", "bank2.bnk"]. Путь относителен к ./res_mods/x.x.x/audioww/
    // Разрешено использование xvm:// (путь относительно /res_mods/mods/shared_resources/xvm/ ) и cfg:// (относительно /res_mods/configs/xvm/ )
    "soundBanks": {
      "battle": ["xvm://audioww/xvm.bnk"],
      "hangar": ["xvm://audioww/xvm.bnk"]
    },
    // Enable sound events logging in the xvm.log
    // Включить логгирование звуковых событий в xvm.log
    "logSoundEvents": false,
    // Sound events remapping
    // Переопределение звуковых событий
    "soundMapping": {
      // Event mapping
      // Переопределение события
      //"originalEventName": "newEventName"
      // To disable sound event use empty string for value
      // Для отключения звукового события используйте пустую строку для значения
      //"originalEventName": ""
      //
      // Original sound events
      // Оригинальные звуковые события
      //
      // Sixth sense perk
      // Перк Шестое чувство
      "lightbulb": "lightbulb",
      "lightbulb_02": "lightbulb_02",
      "sixthSense": "sixthSense",
      //
      // Enemy detection
      // Обнаружение противника
      //"enemy_sighted_for_team": "",
      //
      // Notifications about the imminent end of the battle
      // Оповещения о скором завершении боя
      "time_buzzer_01": "",
      "time_buzzer_02": "",
      //
      // Somebody else's vehicle critical damages bells
      // Звонки критических повреждений чужого танка
      // AP / ББ
      "imp_auto_critical_AP_PC_NPC": "imp_auto_pierce_AP_PC_NPC",
      "imp_main_critical_AP_PC_NPC": "imp_main_pierce_AP_PC_NPC",
      "imp_small_critical_AP_PC_NPC": "imp_small_pierce_AP_PC_NPC",
      "imp_medium_critical_AP_PC_NPC": "imp_medium_pierce_AP_PC_NPC",
      "imp_large_critical_AP_PC_NPC": "imp_large_pierce_AP_PC_NPC",
      "imp_huge_critical_AP_PC_NPC": "imp_huge_pierce_AP_PC_NPC",
      // APCR / ПК
      "imp_auto_critical_APCR_PC_NPC": "imp_auto_pierce_APCR_PC_NPC",
      "imp_main_critical_APCR_PC_NPC": "imp_main_pierce_APCR_PC_NPC",
      "imp_small_critical_APCR_PC_NPC": "imp_small_pierce_APCR_PC_NPC",
      "imp_medium_critical_APCR_PC_NPC": "imp_medium_pierce_APCR_PC_NPC",
      "imp_large_critical_APCR_PC_NPC": "imp_large_pierce_APCR_PC_NPC",
      "imp_huge_critical_APCR_PC_NPC": "imp_huge_pierce_APCR_PC_NPC",
      // HC / КС
      "imp_auto_critical_HC_PC_NPC": "imp_auto_pierce_HC_PC_NPC",
      "imp_main_critical_HC_PC_NPC": "imp_main_pierce_HC_PC_NPC",
      "imp_small_critical_HC_PC_NPC": "imp_small_pierce_HC_PC_NPC",
      "imp_medium_critical_HC_PC_NPC": "imp_medium_pierce_HC_PC_NPC",
      "imp_large_critical_HC_PC_NPC": "imp_large_pierce_HC_PC_NPC",
      "imp_huge_critical_HC_PC_NPC": "imp_huge_pierce_HC_PC_NPC",
      // HE / ОФ
      "imp_auto_critical_HE_PC_NPC": "imp_auto_pierce_HE_PC_NPC",
      "imp_main_critical_HE_PC_NPC": "imp_main_pierce_HE_PC_NPC",
      "imp_small_critical_HE_PC_NPC": "imp_small_pierce_HE_PC_NPC",
      "imp_medium_critical_HE_PC_NPC": "imp_medium_pierce_HE_PC_NPC",
      "imp_large_critical_HE_PC_NPC": "imp_large_pierce_HE_PC_NPC",
      "imp_huge_critical_HE_PC_NPC": "imp_huge_pierce_HE_PC_NPC",
      //
      // Own vehicle critical damages bells
      // Звонки критических повреждений своего танка
      // AP / ББ
      "imp_auto_critical_AP_NPC_PC": "imp_auto_pierce_AP_NPC_PC",
      "imp_main_critical_AP_NPC_PC": "imp_main_pierce_AP_NPC_PC",
      "imp_small_critical_AP_NPC_PC": "imp_small_pierce_AP_NPC_PC",
      "imp_medium_critical_AP_NPC_PC": "imp_medium_pierce_AP_NPC_PC",
      "imp_large_critical_AP_NPC_PC": "imp_large_pierce_AP_NPC_PC",
      "imp_huge_critical_AP_NPC_PC": "imp_huge_pierce_AP_NPC_PC",
      // APCR / ПК
      "imp_auto_critical_APCR_NPC_PC": "imp_auto_pierce_APCR_NPC_PC",
      "imp_main_critical_APCR_NPC_PC": "imp_main_pierce_APCR_NPC_PC",
      "imp_small_critical_APCR_NPC_PC": "imp_small_pierce_APCR_NPC_PC",
      "imp_medium_critical_APCR_NPC_PC": "imp_medium_pierce_APCR_NPC_PC",
      "imp_large_critical_APCR_NPC_PC": "imp_large_pierce_APCR_NPC_PC",
      "imp_huge_critical_APCR_NPC_PC": "imp_huge_pierce_APCR_NPC_PC",
      // HC / КС
      "imp_auto_critical_HC_NPC_PC": "imp_auto_pierce_HC_NPC_PC",
      "imp_main_critical_HC_NPC_PC": "imp_main_pierce_HC_NPC_PC",
      "imp_small_critical_HC_NPC_PC": "imp_small_pierce_HC_NPC_PC",
      "imp_medium_critical_HC_NPC_PC": "imp_medium_pierce_HC_NPC_PC",
      "imp_large_critical_HC_NPC_PC": "imp_large_pierce_HC_NPC_PC",
      "imp_huge_critical_HC_NPC_PC": "imp_huge_pierce_HC_NPC_PC",
      // HE / ОФ
      "imp_auto_critical_HE_NPC_PC": "imp_auto_pierce_HE_NPC_PC",
      "imp_main_critical_HE_NPC_PC": "imp_main_pierce_HE_NPC_PC",
      "imp_small_critical_HE_NPC_PC": "imp_small_pierce_HE_NPC_PC",
      "imp_medium_critical_HE_NPC_PC": "imp_medium_pierce_HE_NPC_PC",
      "imp_large_critical_HE_NPC_PC": "imp_large_pierce_HE_NPC_PC",
      "imp_huge_critical_HE_NPC_PC": "imp_huge_pierce_HE_NPC_PC",
      //
      // Somebody else's vehicle critical damages bells (the observer mode)
      // Звонки критических повреждений чужого танка (в режиме наблюдателя)
      // AP / ББ
      "imp_auto_critical_AP_NPC_NPC": "imp_auto_pierce_AP_NPC_NPC",
      "imp_main_critical_AP_NPC_NPC": "imp_main_pierce_AP_NPC_NPC",
      "imp_small_critical_AP_NPC_NPC": "imp_small_pierce_AP_NPC_NPC",
      "imp_medium_critical_AP_NPC_NPC": "imp_medium_pierce_AP_NPC_NPC",
      "imp_large_critical_AP_NPC_NPC": "imp_large_pierce_AP_NPC_NPC",
      "imp_huge_critical_AP_NPC_NPC": "imp_huge_pierce_AP_NPC_NPC",
      // APCR / ПК 
      "imp_auto_critical_APCR_NPC_NPC": "imp_auto_pierce_APCR_NPC_NPC",
      "imp_main_critical_APCR_NPC_NPC": "imp_main_pierce_APCR_NPC_NPC",
      "imp_small_critical_APCR_NPC_NPC": "imp_small_pierce_APCR_NPC_NPC",
      "imp_medium_critical_APCR_NPC_NPC": "imp_medium_pierce_APCR_NPC_NPC",
      "imp_large_critical_APCR_NPC_NPC": "imp_large_pierce_APCR_NPC_NPC",
      "imp_huge_critical_APCR_NPC_NPC": "imp_huge_pierce_APCR_NPC_NPC",
      // HC / КС
      "imp_auto_critical_HC_NPC_NPC": "imp_auto_pierce_HC_NPC_NPC",
      "imp_main_critical_HC_NPC_NPC": "imp_main_pierce_HC_NPC_NPC",
      "imp_small_critical_HC_NPC_NPC": "imp_small_pierce_HC_NPC_NPC",
      "imp_medium_critical_HC_NPC_NPC": "imp_medium_pierce_HC_NPC_NPC",
      "imp_large_critical_HC_NPC_NPC": "imp_large_pierce_HC_NPC_NPC",
      "imp_huge_critical_HC_NPC_NPC": "imp_huge_pierce_HC_NPC_NPC",
      // HE / ОФ
      "imp_auto_critical_HE_NPC_NPC": "imp_auto_pierce_HE_NPC_NPC",
      "imp_main_critical_HE_NPC_NPC": "imp_main_pierce_HE_NPC_NPC",
      "imp_small_critical_HE_NPC_NPC": "imp_small_pierce_HE_NPC_NPC",
      "imp_medium_critical_HE_NPC_NPC": "imp_medium_pierce_HE_NPC_NPC",
      "imp_large_critical_HE_NPC_NPC": "imp_large_pierce_HE_NPC_NPC",
      "imp_huge_critical_HE_NPC_NPC": "imp_huge_pierce_HE_NPC_NPC",
      //
      // Sound events added by XVM
      // Звуковые события, добавленные в XVM
      //
      // Sixth sense perk
      // Перк Шестое чувство
      "xvm_sixthSense": "",
      // Sixth sense perk for Т-34-85 Rudy
      // Перк Шестое чувство для Т-34-85 Rudy
      "xvm_sixthSenseRudy": "xvm_sixthSenseRudy",
      // Enemy detection
      // Обнаружение противника
      "xvm_enemySighted": "",     
      // Fire alert
      // Пожар
      "xvm_fireAlert": "xvm_fireAlert",
      // Ammo bay damage
      // Повреждение боеукладки
      "xvm_ammoBay": "xvm_ammoBay",
      // Gun reloaded
      // Орудие перезаряжено
      "xvm_gunReloaded": "",
      // Notifications about the imminent end of the battle
      // Оповещения о скором завершении боя
      "xvm_battleEnd_5_min": "",
      "xvm_battleEnd_3_min": "xvm_battleEnd_3_min",
      "xvm_battleEnd_2_min": "xvm_battleEnd_2_min",
      "xvm_battleEnd_1_min": "xvm_battleEnd_1_min",
      "xvm_battleEnd_30_sec": "xvm_battleEnd_30_sec",
      "xvm_battleEnd_5_sec": "xvm_battleEnd_5_sec"
    }
  }
}
