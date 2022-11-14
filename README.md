# Практическая работа №2

### Тема: Реализация классов, отвечающих за работу базы данных

### Цель работы: научиться реализовывать классы и модели.

### Ход работы:

### Для начала работы с базой данных необходимо создать даталогическую модель базы данных.

<img src="Screenshot_3.png" alt="video demo"/>

### Необходимо скачать библиотеки, которые нужны в работе с базой данных.

<img src="dependency.png" alt="video demo"/>

### В папке common создадим файл data_base_request.dart.

<img src="request.png" alt="video demo"/>

### В папке model создадим модели базы данных:

<img src="modelSupplier.png" alt="video demo"/>

### Девять моделей:

<img src="models.png" alt="video demo"/>

### В папке entity создаем сущности:

<img src="entitySupplier.png" alt="video demo"/>

###  Девять сущностей:

<img src="entities.png" alt="video demo"/>

### В папках db создадим файл data_base_helper.dart.

### В этом файле будут хранится функции добавления, удаления, обновления базы.

### - init - инициализация базы данных для всех платформ

<img src="init.png" alt="video demo"/>

### - onUpdateTable - обновление таблиц

<img src="update.png" alt="video demo"/>

### - onCreateTable - создание таблиц 

<img src="create.png" alt="video demo"/>

### - onInitTable - заполнение таблиц данными

<img src="initTable.png" alt="video demo"/>

### - onDropDataBase - удаление базы данных 

<img src="delete.png" alt="video demo"/>

### Демонстрация базы данных:

<img src="viewdb.png" alt="video demo"/>

### Вывод: в данной практической работе были реализованы классы и модели, отвечающие за работу базы данных для склада.
