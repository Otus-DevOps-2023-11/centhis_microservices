# centhis_microservices
centhis microservices repository

Homework Docker 1-2

- Автотесты Github настроены по аналогии с репозиторием Infra
- Установка docker не потребовалась, docker-machine установлена
- Создан контейнер hello-world
- Выполнено знакомство с базовыми командами docker
- В docker-1.log добавлено обьяснение разницы между контейнером и образом
- Установка Yandex Cloud CLI не потребовалась
- В облаке создана ВМ и подключена к docker-machine
- Практика из демо повторена через docker-machine
- Создан Dockerfile для приложения reddit
- На основе Dockerfile создан образ контейнера
- На основе образа контейнера создан контейнер
- Контейнер загружен в dockerhub
- Работа контейнера проверена
- Создана конфигруция terraform для создания ВМ в облаке. Количество ВМ вынесено в переменную
- Созданы плейбуки ansible для установки docker и запуска контейнера из dockerhub
- создана конфигурация packer для создания образа ВМ с установленным docker и загруженным контейнером.

Homework Docker 3

- Для написания Dockerfile испольщуется VSCode. Отдельный linter не требуется
- Создана ВМ, выполнено подключение через docker-machine
- Исходный код приложений добавлен в репозиторий в папку src
- Созданы необходимые Dockerfile
- Сеть для приложения создана
- В процессе запуска решена проблема несогласованности версий пакетов (не полностью). Добиться корректной работы приложения не удалось
- Проверен предложенный способ улучшения Dockerfile. Размер образа уменьшился
- Добавлен volume для контейнера с mongodb
