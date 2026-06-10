# HW_3_Val
домашнее задание по docker и bash  
Валь Максим Алексеевич БТАДБ252
# команды
wsl
./run.sh build_generator   # собрать образ для контейнера генератора
./run.sh run_generator     # запустить контейнер, который сгенерирует data/data.csv локально
./run.sh create_local_data # в директории local_data создает data.csv (для локальной отладки)
./run.sh build_reporter    # собрать образ для контейнера аналитика
./run.sh run_reporter      # запустить контейнер, который сгенерирует html отчет локально в директории data
./run.sh clear_data # Удаляет все сгенерированные данные — файлы `.csv` и `.html` из папки `data/`
./run.sh inside_generator # Запускает контейнер генератора и выводит её содержимое data изнутри контейнера
./run.sh inside_reporter # Аналогично предыдущей команде, но для контейнера аналитика