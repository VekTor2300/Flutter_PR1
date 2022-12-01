# ПРАКТИЧЕСКАЯ РАБОТА №3
### Реализация регистрации и авторизации пользователя
### Цель работы: реализовать регистрацию и авторизацию пользователя.
### Ход работы:
### Для начала работы с авторизацией и регистрации необходимо скачать следующие библиотеки:
 ![image](https://user-images.githubusercontent.com/80402777/203838879-a149d6b8-b361-454b-b8ed-4b98df4722a7.png)
### Рисунок 19 - библиотеки
### В папке core создаем папку usercase, здесь создаем файл auth
 ![image](https://user-images.githubusercontent.com/80402777/203837342-9300c601-ef3b-4041-963f-a1207a457699.png)
### Рисунок 20 - auth.dart
### В папке data создаем папку repository, здесь файл auth_repositories_impl
 ![image](https://user-images.githubusercontent.com/80402777/203837356-d11d6bc3-888a-45cf-9567-9baf84df2a30.png)
### Рисунок 21 - auth_repositories_impl.dart
### Далее необходимо изменить role_entity:
 ![image](https://user-images.githubusercontent.com/80402777/203837364-f8d895db-8162-4aa6-a66a-d40b96403007.png)
### Рисунок 22 - role_entity.dart
### В папке entity создаем папку usercases, здесь файл auth
 ![image](https://user-images.githubusercontent.com/80402777/203837391-4352df02-1ea9-411a-978e-2f265b55e8de.png)
### Рисунок 23 - auth.dart
### Также в папке entity создаем еще одну папку repository, в ней файл auth_repository
 ![image](https://user-images.githubusercontent.com/80402777/203837412-435f326c-28fa-46fa-a71c-b62eb45a2913.png)
### Рисунок 24 - auth_repository.dart
### Далее создаем папку screens, в ней файлы, в которых будет верстка авторизации, регистрации и окон для админа с пользователем.
 ![image](https://user-images.githubusercontent.com/80402777/203837427-0c5eac2d-13e2-4433-9aea-70abad3504ac.png)
### Рисунок 25 – screens
 ![image](https://user-images.githubusercontent.com/80402777/203837436-4d032619-efcf-4d50-8d6d-e205504ff3d4.png)
### Рисунок 26 - окно регистрации с валидацией
 ![image](https://user-images.githubusercontent.com/80402777/203837448-c531c6a5-59b5-439f-802a-8d54b5cab485.png)
### Рисунок 27 - окно авторизации с валидацией
 ![image](https://user-images.githubusercontent.com/80402777/203837461-eadd25a0-bc94-43eb-9b0f-0a8e0aec2482.png)
### Рисунок 28 - окно админа
 ![image](https://user-images.githubusercontent.com/80402777/203837469-5df76762-4675-4464-8dbd-aa6bc3397dca.png)
### Рисунок 29 - окно пользователя
 ![image](https://user-images.githubusercontent.com/80402777/203837481-7b0b264f-1bea-4ebd-8c1d-8baf36495d36.png)
### Рисунок 30 - ошибка в случае несовпадения пароля
 ![image](https://user-images.githubusercontent.com/80402777/203837654-4f4b71dc-3d01-4f11-a04c-6932d75b9e7f.png)
### Рисунок 31 - пользователи в бд
 ![image](https://user-images.githubusercontent.com/80402777/203838957-9502df18-33ea-4002-adc0-e184e018e9e1.png)
### Рисунок 32 - критерии валидации для каждого поля
 

### Вывод: на данной практической работе была сделана авторизация и регистрация для пользователей.
