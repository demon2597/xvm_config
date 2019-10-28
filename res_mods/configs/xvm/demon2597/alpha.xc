/**
 * Options for dynamic transparency. Values ​​from smallest to largest.
 * Настройки динамической прозрачности. Значения от меньшего к большему.
 */
{
  "alpha": {
    // Dynamic transparency by spotted status
    // Динамическая прозрачность по статусу засвета
    "spotted": {
      "neverSeen":      100,
      "lost":           100,
      "spotted":        100,
      "dead":           50,
      "neverSeen_arty": 100,
      "lost_arty":      100,
      "spotted_arty":   100,
      "dead_arty":      50
    },
    // Dynamic transparency by remaining health.
    // Динамическая прозрачность по оставшемуся здоровью.
    "hp": [
      { "value": 200,  "alpha": 100 },
      { "value": 400,  "alpha": 100 },
      { "value": 1000, "alpha": 100 },
      { "value": 9999, "alpha": 100 }
    ],
    // Dynamic transparency by percentage of remaining health.
    // Динамическая прозрачность по проценту оставшегося здоровья.
    "hp_ratio": [
      { "value": 24.4, "alpha": 100 },
      { "value": 100, "alpha": 0 }
    ],
    // Dynamic transparency for XVM Scale.
    // Динамическая прозрачность по шкале XVM.
    "x": [
      { "value": 16.4, "alpha": 100 },  // 00 - 16 - bad          (20% of players)
      { "value": 33.4, "alpha": 100 },  // 17 - 33 - below normal (better than 20% of players)
      { "value": 52.4, "alpha": 100 },  // 34 - 52 - normal       (better than 60% of players)
      { "value": 75.4, "alpha": 100 },  // 53 - 75 - good         (better than 90% of players)
      { "value": 92.4, "alpha": 100 },  // 76 - 92 - very good    (better than 99% of players)
      { "value": 999,  "alpha": 100 }   // 93 - XX - unique       (better than 99.9% of players)
    ],
    // Current scales values ​​for ratings are listed on this page: https://modxvm.com/en/ratings/xvm-scale/colors/
    // Текущие граничные значения для рейтингов указаны на данной странице: https://modxvm.com/ru/ratings/xvm-scale/colors/
    //
    // Custom dynamic transparency by ratings.
    // If you want use your own transparency scales,
    // uncomment this block and replace "rating_name" to one of this values: "eff", "wn8", "wtr", "wgr"
    // Динамическая прозрачность по указанному рейтингу.
    // Если вы хотите использовать свои собственные границы прозрачности вместо стандартных,
    // раскомментируйте блок и замените "rating_name" на одно из следующих значений: "eff", "wn8", "wtr", "wgr"
    // "rating_name": [
    //  { "value": 500,   "alpha": 100 },
    //  { "value": 1000,  "alpha": 100 },
    //  { "value": 2000,  "alpha": 100 },
    //  { "value": 3000,  "alpha": 100 },
    //  { "value": 5000,  "alpha": 100 },
    //  { "value": 99999, "alpha": 100 }
    // ],
    // Dynamic transparency by win percent.
    // Динамическая прозрачность по проценту побед.
    "winrate": [
      { "value": 46.49, "alpha": 100 },  // bad
      { "value": 48.49, "alpha": 100 },  // below normal
      { "value": 52.49, "alpha": 100 },  // normal
      { "value": 57.49, "alpha": 100 },  // good
      { "value": 63.49, "alpha": 100 },  // very good
      { "value": 100,   "alpha": 100 }   // unique
    ],
    // Dynamic transparency by kilo-battles.
    // Динамическая прозрачность по количеству кило-боев.
    "kb": [
      { "value": 1.499,  "alpha": 100 },  //    0 - 1.499
      { "value": 4.499,  "alpha": 100 },  //  1.5 - 4.499
      { "value": 8.499,  "alpha": 100 },  //  4.5 - 8.499
      { "value": 13.499, "alpha": 100 },  //  8.5 - 13.499
      { "value": 19.499, "alpha": 100 },  // 13.5 - 19.499
      { "value": 999,    "alpha": 100 }   // 19.5 - *
    ],
    // Dynamic transparency by average level of player tanks.
    // Динамическая прозрачность по среднему уровню танков игрока.
    "avglvl": [
      { "value": 4.4, "alpha": 100 },
      { "value": 7.4, "alpha": 100 },
      { "value": 10,  "alpha": 100 }
    ],
    // Dynamic transparency by battles on current tank.
    // Динамическая прозрачность по количеству боев на текущем танке.
    "t_battles": [
      { "value": 49, "alpha": 0 },
      { "value": 99999, "alpha": 100 }
    ],
    // Dynamic transparency by average damage on current tank.
    // Динамическая прозрачность по среднему урону за бой на текущем танке.
    "tdb": [
      { "value": 499,  "alpha": 100 },
      { "value": 749,  "alpha": 100 },
      { "value": 999,  "alpha": 100 },
      { "value": 1799, "alpha": 100 },
      { "value": 2499, "alpha": 100 },
      { "value": 9999, "alpha": 100 }
    ],
    // Dynamic transparency by average damage efficiency on current tank.
    // Динамическая прозрачность по эффективности урона за бой на текущем танке.
    "tdv": [
      { "value": 0.5, "alpha": 100 },
      { "value": 0.7, "alpha": 100 },
      { "value": 0.9, "alpha": 100 },
      { "value": 1.2, "alpha": 100 },
      { "value": 1.9, "alpha": 100 },
      { "value": 15,  "alpha": 100 }
    ],
    // Dynamic transparency by average frags per battle on current tank.
    // Динамическая прозрачность по среднему количеству фрагов за бой на текущем танке.
    "tfb": [
      { "value": 0.6, "alpha": 100 },
      { "value": 0.5, "alpha": 100 },
      { "value": 0.7, "alpha": 100 },
      { "value": 0.9, "alpha": 100 },
      { "value": 1.2, "alpha": 100 },
      { "value": 1.9, "alpha": 100 },
      { "value": 15,  "alpha": 100 }
    ],
    // Dynamic transparency by number of spotted enemies per battle on current tank.
    // Динамическая прозрачность по среднему количеству засвеченных врагов за бой на текущем танке.
    "tsb": [
      { "value": 0.5, "alpha": 100 },
      { "value": 0.7, "alpha": 100 },
      { "value": 0.9, "alpha": 100 },
      { "value": 1.2, "alpha": 100 },
      { "value": 1.9, "alpha": 100 },
      { "value": 15,  "alpha": 100 }
    ]
  }
}