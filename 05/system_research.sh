#!/in/bash
echo $val
echo Total number of folders "(including all nested ones)" = $(find $val* -type d 2>/dev/null | wc -l)
# 2>dev/null при ошибке в отказе разрешения поиск переходит по данному пути, чтобы ошибок не было в выводе
echo TOP 5 folders of maximum size arranged in descending order "(path and size):"
echo "$(find $val* -type d 2>/dev/null -exec du -h {} + |sort -hr| sed -n '1,5p' | awk '{print NR, "-", $2",", $1}')"
# sort -hr - человекческий вид сортировки в убывание (в обратном порядке)
# -exec [cmd] {} [delimeter] - позволяет мне создать свое кастнмное дейсвтиве внутри утилиты find 
echo Total number of files = $(find $val* -type f 2>/dev/null | wc -l)
echo Number of:
echo Configuration files "(with the .conf extension)" = $(find $1* -type f -name "*.conf" 2>/dev/null | wc -l)
# -name ищем файл вот с таким именем
echo Text files = $(find $1* -type f -name "*.txt" 2>/dev/null | wc -l)
echo Executable files = $(find $1* -type f -executable 2>/dev/null | wc -l)
echo Log files "(with the extension .log)" = $(find $1* -type f -name "*.log" 2>/dev/null | wc -l)
echo Archive files = $(find $1* -type f -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" 2>/dev/null | wc -l)
echo Symbolic links = $(find $1* -type l 2>/dev/null | wc -l)

echo TOP 10 files of maximum size arranged "in descending order (path, size and type):"
echo "$( find $1* -type f 2>/dev/null -exec du -h {} + |sort -hr| sed -n '1,10'p | awk '{printf("%d - %s %s, ",NR,$2, $1); system("bash -c '\''file -b --mime-type "$2"'\''")}')"
echo TOP 10 executable files of the maximum size arranged "in descending order (path, size and MD5 hash of file)"
echo "$(find $1* -type f -executable 2>/dev/null -exec du -h {} + |sort -hr| sed -n '1,10'p | awk '{printf("%d %s %s ",NR,$2, $1); system("bash -c '\''md5sum "$2"'\''")}'| awk '{printf("%d - %s, %s, %s\n",NR,$2, $3, $4 )}')"
# file -b - запрещает ввывод имени и адрессов файлов, а mime-type - показывает его медиотип 
# md5sum - показывает хэш-сумму и название файла, чью хэш сумму он показывает
