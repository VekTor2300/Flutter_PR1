# flutter_pract1

# Практическая работа №4
## Тема: Реактировное программирование Flutter

#### Цель работы: отработать реактивное программирование в Flutter
#### Ход работы:
Структура приложения
```
lib
│   main.dart
│
├───controllers
│       counter_controller.dart
│
├───utilis
│       reusable_card.dart
│       rounded_button.dart
│       screen3_card.dart
│       song_card.dart
│
└───views
        counter_view.dart
```
Сначала было создано окно с заданием ```lib\views\counter_view.dart``` 

Использовал ```Obx(() => )``` для реактивного изменения ```ListView()```, ```Text```
![](https://github.com/Chu-4hun/flutter_pract1/blob/941eb582f926daa18b8c714304f85c11f5c5a106/demo_images/demo1.png "Окно приложения")


Для смены темы использовал ```Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());```

![](https://github.com/Chu-4hun/flutter_pract1/blob/941eb582f926daa18b8c714304f85c11f5c5a106/demo_images/demo2.png "Темная тема")

Для редактирования данными создал ```lib/controllers/counter_controller.dart``` для реактивности контроллра наследовал класс от ```GetxController```

Для создания реактивного значения использовал ```.obs```

![](https://github.com/Chu-4hun/flutter_pract1/blob/941eb582f926daa18b8c714304f85c11f5c5a106/demo_images/demo3.png "Контроллер")


#### Вывод: По мере прохождения данной практической работы были приобретены и закреплены навыки реактивного программирования в Flutter.
