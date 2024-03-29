# Bash-monitoring

Учебный проект по написанию скриптов для мониторинга системы на bash

1. Принимает на вход один текстовый параметр и выводит его. Если параметров несколько или введено число - информирует об ошибке
2. Скрипт для вывода основной информации о систем с возможностью сохранить результаты вывод в отдельный файл. Вывод скрипта:
   
**HOSTNAME** = сетевое имя

**TIMEZONE** = временная зона в виде: America/New_York UTC -5 (временная зона, должна браться из системы и быть корректной для текущего местоположения)

**USER** = текущий пользователь который запустил скрипт

**OS** = тип и версия операционной системы

**DATE** = текущее время в виде: 12 May 2020 12:24:36

**UPTIME** = время работы системы

**UPTIME_SEC** = время работы системы в секундах

**IP** = ip-адрес машины в любом из сетевых интерфейсов

**MASK** = сетевая маска любого из сетевых интерфейсов в виде: xxx.xxx.xxx.xxx

**GATEWAY** = ip шлюза по умолчанию

**RAM_TOTAL** = размер оперативной памяти в Гб c точностью три знака после запятой в виде: 3.125 GB

**RAM_USED** = размер используемой памяти в Гб c точностью три знака после запятой

**RAM_FREE** = размер свободной памяти в Гб c точностью три знака после запятой

**SPACE_ROOT** = размер рутового раздела в Mб с точностью два знака после запятой в виде: 254.25 MB

**SPACE_ROOT_USED** = размер занятого пространства рутового раздела в Mб с точностью два знака после запятой

**SPACE_ROOT_FREE** = размер свободного пространства рутового раздела в Mб с точностью два знака после запятой


3. Основа - скрипт номер два, без возможности сохранить выбор, но можно задать параметры ввывода, напимер:
   script03.sh 1 3 4 5
Обозначения цветов: (1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)
*Параметр 1* - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
*Параметр 2* - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
*Параметр 3* - это фон значений (после знака '=')
*Параметр 4* - это цвет шрифта значений (после знака '=')

4. Основа - скрипт 3, но цветовое оформление берется из конфигурационного файла.
  
5. Скрипт, запускаемый с одним параметром. 
Параметр - это абсолютный или относительный путь до какой-либо директории. Параметр должен заканчиваться знаком '/', например:
script05.sh /var/log/

Скрипт выводит следующую информацию о каталоге, указанном в параметре:
- Общее число папок, включая вложенные
- Топ 5 папок с самым большим весом в порядке убывания (путь и размер)
- Общее число файлов
- Число конфигурационных файлов (с расширением .conf), текстовых файлов, исполняемых файлов, логов (файлов с расширением .log), архивов, символических ссылок
- Топ 10 файлов с самым большим весом в порядке убывания (путь, размер и тип)
- Топ 10 исполняемых файлов с самым большим весом в порядке убывания (путь, размер и хеш)
- Время выполнения скрипта
