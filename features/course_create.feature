# language: ru
Функционал: создание нового курса
    Как администратор
    Я хочу зайти на страницу всех пользователей.
    Создать новый курс.

    Сценарий: создание курса
        Допустим залогинен пользователь с email "admin@admin.com" и паролем "123456"
        
        Если он создаёт курс с данными: название "Разработчик Ruby on Rails"
        То курс Разработчик Ruby on Rails видно в списке курсов