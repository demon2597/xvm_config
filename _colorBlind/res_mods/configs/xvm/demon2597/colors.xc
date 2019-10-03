/**
 * Color settings.
 * Настройки цветов.
 */
{
  "def": {
     // System and damage color definition.
     // Шаблон системного цвета и цвета для урона.
    "al": "0x60FF00",  // ally       / союзник
    "sq": "0xFF914C",  // squadman   / взводный
    "tk": "0x00EAFF",  // teamKiller / тимкиллер
    "en": "0x8379FE",  // enemy      / противник
    "pl": "0xFFCC66",  // player     / игрок
     // Dynamic color definition.
     // Шаблон динамического цвета.
    "color0": "0xC8C8B5",  // neutral       / нейтрально
    "color1": "0x8379FE",  // bad           / плохо
    "color2": "0xFE7903",  // below normal  / ниже среднего
    "color3": "0xF8F400",  // normal        / средне
    "color4": "0x60FF00",  // good          / хорошо
    "color5": "0x02C9B3",  // very good     / очень хорошо
    "color6": "0xD042F3",  // unique        / уникально
     // HP dynamic color definition.
     // Шаблон динамического цвета для здоровья.
    "hpColor1":	"0x9284C3",  // low           / низкий
    "hpColor2":	"0xFFC266",  // below average / ниже среднего
    "hpColor3":	"0xFFFFFF",  // average       / средний
    "hpColor4":	"0xFFFFFF"   // above-average / выше среднего
  },
  "colors": {
    // System colors.
    // Системные цвета.
    "system": {
      // Format: object_state
      // Object: ally, squadman, teamKiller, enemy
      // State:  alive, dead, blowedup
      // ----
      // Формат: объект_состояние
      // Объект: ally - союзник, squadman - взводный, teamKiller - тимкиллер, enemy - противник
      // Состояние: alive - живой, dead - мертвый, blowedup - взорвана боеукладка
      //Союзник
      "ally_alive":          ${"def.al"},  // живой
      "ally_dead":           "0x008A00",   // мертвый
      "ally_blowedup":       "0x008A00",   // взорван БК
      //Взводный
      "squadman_alive":      ${"def.sq"},  // живой
      "squadman_dead":       "0xCA7000",   // мертвый
      "squadman_blowedup":   "0xCA7000",   // взорван БК
      //Тимкиллер
      "teamKiller_alive":    ${"def.tk"},  // живой
      "teamKiller_dead":     "0x097783",   // мертвый
      "teamKiller_blowedup": "0x097783",   // взорван БК
      //Противник
      "enemy_alive":         ${"def.en"},  // живой
      "enemy_dead":          "0x47407A",   // мертвый
      "enemy_blowedup":      "0x47407A",   // взорван БК
      "ally_base":           ${"def.al"},  // база союзников
      "enemy_base":          ${"def.en"}   // база противников
    },
    // Dynamic color by damage kind.
    // Динамический цвет по типу урона.
    "dmg_kind": {
      "shot":            "0xFFAA55",  // попадание
      "fire":            "0x9284C3",  // пожар
      "ramming":         "0x577A3D",  // таран
      "world_collision": "0x805A37",  // столкновение с объектами, падение
      "death_zone":      "0xDBD7D2",  // выход из игровой зоны
      "drowning":        "0x265CFF",  // затопление
      "other":           "0xCCCCCC"   // другое
    },
    // Dynamic color by vehicle type.
    // Динамический цвет по типу техники.
    "vtype": {
      // Цвет для тяжелых танков.
      "HT": "0xCCCCCC",
      // Цвет для средних танков.
      "MT": "0xFFF198",
      // Цвет для легких танков.
      "LT": "0xA2FF9A",
      // Цвет для ПТ.
      "TD": "0xA0CFFF",
      // Цвет для арты.
      "SPG": "0xFFACAC",
      // Цвет для премиумной техники.
      "premium": "0xFFC363",
      // Включить/выключить использование премиумного цвета.
      "usePremiumColor": false
    },
    // Dynamic color by spotted status
    // Динамический цвет по статусу засвета
    "spotted": {
      "neverSeen":      "0x800600",
      "lost":           "0xBFBFBF",
      "spotted":        "0x8379FE",
      "dead":           "0x595959",
      "neverSeen_arty": "0x800600",
      "lost_arty":      "0xBFBFBF",
      "spotted_arty":   "0x8379FE",
      "dead_arty":      "0x595959"
    },
    // HP color depending on the ratio of ally and enemy teams hp.
    // Цвет ХП в зависимости от отношения хп союзной и вражеской команд.
    "totalHP": {
      "bad":     "0x8379FE",
      "neutral": "0xFFFFFF",
      "good":    "0x60FF00"
    },
    // Color settings for damage.
    // Настройки цвета для урона.
  "damage": {
      // Format: src_dst_type.
      // Src:  ally, squadman, enemy, unknown, player.
      // Dst:  ally, squadman, allytk, enemytk, enemy.
      // Type: hit, kill, blowup.
      // ----
      // Формат: источник_получатель_тип.
      // Источник:   ally - союзник, squadman - взводный, enemy - противник, unknown - неизвестный (не виден игроку), player - игрок.
      // Получатель: ally, squadman, enemy, allytk - союзник тимкиллер, enemytk - противник тимкиллер.
      // Тип:        hit - попадание, kill - убийство, blowup - боеукладка.
      "ally_ally_hit":            "0x00CCFF",   // "teamKiller"
      "ally_ally_kill":	          ${"def.tk"},  // "teamKiller"
      "ally_ally_blowup":	  ${"def.tk"},  // "teamKiller"
      "ally_squadman_hit":	  "0x00CCFF",	// "teamKiller"
      "ally_squadman_kill":	  ${"def.tk"},  // "teamKiller"
      "ally_squadman_blowup":	  ${"def.tk"},  // "teamKiller"
      "ally_enemy_hit":		  ${"def.en"},  // "enemy"
      "ally_enemy_kill":          ${"def.en"},  // "enemy"
      "ally_enemy_blowup":        ${"def.en"},  // "enemy"
      "ally_allytk_hit":          "0x00CCFF",	// "teamKiller"
      "ally_allytk_kill":	  ${"def.tk"},  // "teamKiller"
      "ally_allytk_blowup":	  ${"def.tk"},  // "teamKiller"
      "ally_enemytk_hit":	  ${"def.en"},  // "enemy"
      "ally_enemytk_kill":        ${"def.en"},  // "enemy"
      "ally_enemytk_blowup":      ${"def.en"},  // "enemy"
      "squadman_ally_hit":        ${"def.tk"},  // "teamKiller"
      "squadman_ally_kill":	  ${"def.tk"},  // "teamKiller"
      "squadman_ally_blowup":	  ${"def.tk"},  // "teamKiller"
      "squadman_squadman_hit":    ${"def.tk"},  // "teamKiller"
      "squadman_squadman_kill":	  ${"def.tk"},  // "teamKiller"
      "squadman_squadman_blowup": ${"def.tk"},  // "teamKiller"
      "squadman_enemy_hit":	  ${"def.sq"},  // "enemy"
      "squadman_enemy_kill":      ${"def.sq"},  // "enemy"
      "squadman_enemy_blowup":    ${"def.sq"},  // "enemy"
      "squadman_allytk_hit":      ${"def.tk"},  // "teamKiller"
      "squadman_allytk_kill":	  ${"def.tk"},  // "teamKiller"
      "squadman_allytk_blowup":	  ${"def.tk"},  // "teamKiller"
      "squadman_enemytk_hit":	  ${"def.sq"},  // "enemy"
      "squadman_enemytk_kill":    ${"def.sq"},  // "enemy"
      "squadman_enemytk_blowup":  ${"def.sq"},  // "enemy"
      "enemy_ally_hit":           "0x36AD00", 	// "ally"
      "enemy_ally_kill":          ${"def.al"},  // "ally"
      "enemy_ally_blowup":        ${"def.al"},  // "ally"
      "enemy_squadman_hit":	  "0xFF7D2E",	// "squadman"
      "enemy_squadman_kill":      ${"def.sq"},  // "squadman"
      "enemy_squadman_blowup":    ${"def.sq"},  // "squadman"
      "enemy_enemy_hit":          ${"def.en"},  // "enemy"
      "enemy_enemy_kill":	  ${"def.en"},  // "enemy"
      "enemy_enemy_blowup":	  ${"def.en"},  // "enemy"
      "enemy_allytk_hit":	  "0x36AD00",   // "ally"
      "enemy_allytk_kill":        ${"def.al"},  // "ally"
      "enemy_allytk_blowup":      ${"def.al"},  // "ally"
      "enemy_enemytk_hit":        ${"def.en"},  // "enemy"
      "enemy_enemytk_kill":	  ${"def.en"},  // "enemy"
      "enemy_enemytk_blowup":	  ${"def.en"},  // "enemy"
      "unknown_ally_hit":	  "0x36AD00",   // "ally"
      "unknown_ally_kill":        ${"def.al"},  // "ally"
      "unknown_ally_blowup":      ${"def.al"},  // "ally"
      "unknown_squadman_hit":	  "0xFF7D2E",   // "squadman"
      "unknown_squadman_kill":    ${"def.sq"},  // "squadman"
      "unknown_squadman_blowup":  ${"def.sq"},  // "squadman"
      "unknown_enemy_hit":        ${"def.en"},  // "enemy"
      "unknown_enemy_kill":	  ${"def.en"},  // "enemy"
      "unknown_enemy_blowup":	  ${"def.en"},  // "enemy"
      "unknown_allytk_hit":	  "0x36AD00",   // "ally"
      "unknown_allytk_kill":      ${"def.al"},  // "ally"
      "unknown_allytk_blowup":    ${"def.al"},  // "ally"
      "unknown_enemytk_hit":      ${"def.en"},  // "enemy"
      "unknown_enemytk_kill":	  ${"def.en"},  // "enemy"
      "unknown_enemytk_blowup":	  ${"def.en"},  // "enemy"
      "player_ally_hit":          ${"def.pl"},  // "me"
      "player_ally_kill":	  ${"def.pl"},  // "me"
      "player_ally_blowup":	  ${"def.pl"},  // "me"
      "player_squadman_hit":      ${"def.pl"},  // "me"
      "player_squadman_kill":	  ${"def.pl"},  // "me" 
      "player_squadman_blowup":	  ${"def.pl"},  // "me"
      "player_enemy_hit":	  ${"def.pl"},  // "me"
      "player_enemy_kill":        ${"def.pl"},  // "me"
      "player_enemy_blowup":      ${"def.pl"},  // "me"
      "player_allytk_hit":        ${"def.pl"},  // "me"
      "player_allytk_kill":	  ${"def.pl"},  // "me"
      "player_allytk_blowup":	  ${"def.pl"},  // "me"
      "player_enemytk_hit":	  ${"def.pl"},  // "me"
      "player_enemytk_kill":      ${"def.pl"},  // "me"
      "player_enemytk_blowup":    ${"def.pl"}   // "me"
    },
    // Values ​​below should be from smaller to larger.
    // Значения ниже должны быть от меньшего к большему.
    // ----
    // Dynamic color by remaining absolute health.
    // Динамический цвет по оставшемуся здоровью.
    "hp": [
      { "value": 200,  "color": ${"def.hpColor1"} },
      { "value": 400,  "color": ${"def.hpColor2"} },
      { "value": 1000, "color": ${"def.hpColor3"} },
      { "value": 9999, "color": ${"def.hpColor4"} }
    ],
    // Dynamic color by remaining health percent.
    // Динамический цвет по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 24.4, "color": ${"def.hpColor1"} },  // HP <= 24%
      { "value": 49.4, "color": ${"def.hpColor2"} },  // HP <= 49%
      { "value": 74.4, "color": ${"def.hpColor3"} },  // HP <= 74%
      { "value": 100,  "color": ${"def.hpColor4"} }   // HP >= 75%
    ],
    // Dynamic color for XVM Scale.
    // Динамический цвет по шкале XVM.
    // https://kr.cm/f/t/2625/
    "x": [
      { "value": 16.4, "color": ${"def.color1"} },  // 00 - 16 - bad          (20% of players)
      { "value": 33.4, "color": ${"def.color2"} },  // 17 - 33 - below normal (better than 20% of players)
      { "value": 52.4, "color": ${"def.color3"} },  // 34 - 52 - normal       (better than 60% of players)
      { "value": 75.4, "color": ${"def.color4"} },  // 53 - 75 - good         (better than 90% of players)
      { "value": 92.4, "color": ${"def.color5"} },  // 76 - 92 - very good    (better than 99% of players)
      { "value": 999,  "color": ${"def.color6"} }   // 93 - XX - unique       (better than 99.9% of players)
    ],
    // Current scales values ​​for ratings are listed on this page: https://modxvm.com/en/ratings/xvm-scale/colors/
    // Текущие граничные значения для рейтингов указаны на данной странице: https://modxvm.com/en/ratings/xvm-scale/colors/
    //
    // Custom dynamic colors by ratings.
    // If you want use your own color scales,
    // uncomment this block and replace "rating_name" to one of this values: "eff", "wn8", "wtr", "wgr"
    // Динамический цвет по указанному рейтингу.
    // Если вы хотите использовать свои собственные границы цветов вместо стандартных, 
    // раскомментируйте блок и замените "rating_name" на одно из следующих значений: "eff", "wn8", "wtr", "wgr"
    // "rating_name": [
    //  { "value": 500,   "color": ${"def.color1"} },
    //  { "value": 1000,  "color": ${"def.color2"} },
    //  { "value": 2000,  "color": ${"def.color3"} },
    //  { "value": 3000,  "color": ${"def.color4"} },
    //  { "value": 5000,  "color": ${"def.color5"} },
    //  { "value": 99999, "color": ${"def.color6"} }
    // ],
    // Dynamic color by win percent.
    // Динамический цвет по проценту побед.
    "winrate": [
      { "value": 46.49, "color": ${"def.color1"} },
      { "value": 48.49, "color": ${"def.color2"} },
      { "value": 52.49, "color": ${"def.color3"} },
      { "value": 57.49, "color": ${"def.color4"} },
      { "value": 63.49, "color": ${"def.color5"} },
      { "value": 100,   "color": ${"def.color6"} }
    ],
    // Dynamic color by kilo-battles.
    // Динамический цвет по количеству кило-боев.
    "kb": [
      { "value": 1.499,  "color": ${"def.color1"} },  //    0k - 1.499k
      { "value": 4.499,  "color": ${"def.color2"} },  //  1.5k - 4.499k
      { "value": 8.499,  "color": ${"def.color3"} },  //  4.5k - 8.499k
      { "value": 13.499, "color": ${"def.color4"} },  //  8.5k - 13.499k
      { "value": 19.499, "color": ${"def.color5"} },  // 13.5k - 19.499k
      { "value": 999,    "color": ${"def.color6"} }   // 19.5k - *
    ],
    // Dynamic color by average level of player tanks.
    // Динамический цвет по среднему уровню танков игрока.
    "avglvl": [
      { "value": 4.49, "color": ${"def.color1"} },
      { "value": 7.49, "color": ${"def.color0"} },
      { "value": 10,  "color": ${"def.color6"} }
    ],
    // Dynamic color by battles on current tank.
    // Динамический цвет по количеству боев на текущем танке.
    "t_battles": [
      { "value": 149,   "color": ${"def.color1"} },  //    0h - 1.49h
      { "value": 349,   "color": ${"def.color2"} },  //  1.5h - 3.49h
      { "value": 649,   "color": ${"def.color3"} },  //  3.5h - 6.49h
      { "value": 1049,  "color": ${"def.color4"} },  //  6.5h - 10.49h
      { "value": 1749,  "color": ${"def.color5"} },  // 10.5h - 17.49h
      { "value": 99999, "color": ${"def.color6"} }   // 17.5h - *
    ],
    // Dynamic color by average damage on current tank.
    // Динамический цвет по среднему урону за бой на текущем танке.
    "tdb": [
      { "value": 499,  "color": ${"def.color1"} },
      { "value": 749,  "color": ${"def.color2"} },
      { "value": 999,  "color": ${"def.color3"} },
      { "value": 1799, "color": ${"def.color4"} },
      { "value": 2499, "color": ${"def.color5"} },
      { "value": 9999, "color": ${"def.color6"} }
    ],
    // Dynamic color by average damage efficiency on current tank.
    // Динамический цвет по эффективности урона за бой на текущем танке.
    "tdv": [
      { "value": 0.5, "color": ${"def.color1"} },
      { "value": 0.7, "color": ${"def.color2"} },
      { "value": 0.9, "color": ${"def.color3"} },
      { "value": 1.2, "color": ${"def.color4"} },
      { "value": 1.9, "color": ${"def.color5"} },
      { "value": 15,  "color": ${"def.color6"} }
    ],
    // Dynamic color by average frags per battle on current tank.
    // Динамический цвет по среднему количеству фрагов за бой на текущем танке.
    "tfb": [
      { "value": 0.5, "color": ${"def.color1"} },
      { "value": 0.7, "color": ${"def.color2"} },
      { "value": 0.9, "color": ${"def.color3"} },
      { "value": 1.2, "color": ${"def.color4"} },
      { "value": 1.9, "color": ${"def.color5"} },
      { "value": 15,  "color": ${"def.color6"} }
    ],
    // Dynamic color by number of spotted enemies per battle on current tank.
    // Динамический цвет по среднему количеству засвеченных врагов за бой на текущем танке.
    "tsb": [
      { "value": 0.5, "color": ${"def.color1"} },
      { "value": 0.7, "color": ${"def.color2"} },
      { "value": 0.9, "color": ${"def.color3"} },
      { "value": 1.2, "color": ${"def.color4"} },
      { "value": 1.9, "color": ${"def.color5"} },
      { "value": 15,  "color": ${"def.color6"} }
    ],
    // Dynamic color by WN8 effective damage
    // Динамический цвет по эффективному урону по WN8
    "wn8effd": [
      { "value": 0.5, "color": ${"def.color1"} },
      { "value": 0.7, "color": ${"def.color2"} },
      { "value": 0.9, "color": ${"def.color3"} },
      { "value": 1.2, "color": ${"def.color4"} },
      { "value": 1.9, "color": ${"def.color5"} },
      { "value": 15,  "color": ${"def.color6"} }
    ],
    // Dynamic color by damage rating (percents for marks on gun)
    // Динамический цвет по рейтингу урона (процент для отметок на стволе)
    "damageRating": [
      { "value": 64.99, "color": ${"def.color1"} },  // 0-64.99
      { "value": 84.99, "color": ${"def.color3"} },  // 65-84.99
      { "value": 94.99, "color": ${"def.color4"} },  // 85-94.99
      { "value": 100,   "color": ${"def.color6"} }   // 95-100
    ],
    // Dynamic color by hit ratio (percents of hits)
    // Динамический цвет по проценту попаданий
    "hitsRatio": [
      { "value": 47.4, "color": ${"def.color1"} },
      { "value": 60.4, "color": ${"def.color2"} },
      { "value": 68.4, "color": ${"def.color3"} },
      { "value": 74.4, "color": ${"def.color4"} },
      { "value": 78.4, "color": ${"def.color5"} },
      { "value": 100,  "color": ${"def.color6"} }
    ],
    // Dynamic color by percentage of damage caused.
    // Динамический цвет по проценту нанесенного урона цели.
    "dmg_ratio_player": [
      { "value": 16.5, "color": ${"def.color1"} },
      { "value": 33.5, "color": ${"def.color2"} },
      { "value": 49.5, "color": ${"def.color3"} },
      { "value": 66.5, "color": ${"def.color4"} },
      { "value": 83.5, "color": ${"def.color5"} },
      { "value": 999,  "color": ${"def.color6"} }
    ]
  }
}