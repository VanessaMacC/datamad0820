# Imprime en consola Hello World
echo "Hello world"
# Crea un directorio nuevo llamado new_dir
mkdir new_dir
# Elimina ese directorio
rm -r new_dir
# Copia el archivo sed.txt dentro de la carpeta lorem a la carpeta lorem-copy.
cp -R ./lorem/sed.txt ./lorem-copy/sed.txt
# Copia los otros dos archivos de la carpeta lorem a la carpeta lorem-copy en una sola línea mediante ;.
cp -R ./lorem/at.txt ./lorem-copy/at.txt ; ./lorem/lorem.txt ./lorem-copy/lorem.txt
# Uno de los archivos me deniega el acceso, lo ejecuto con chmod +x ./lorem/lorem.txt
# Muestra el contenido del archivo sed.txt dentro de la carpeta lorem
cat ./lorem/sed.txt  
# Muestra el contenido de los archivos at.txt y lorem.txt dentro de la carpeta lorem
cat ./lorem/at.txt ./lorem/lorem.txt 
# Visualiza las primeras 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat ./lorem-copy/sed.txt | head -n 3
# Visualiza las ultimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy
cat ./lorem-copy/sed.txt | tail -n 3
# Añade Homo homini lupus. al final de archivo sed.txt dentro de la carpeta lorem-copy
nano ./lorem-copy/sed.txt 
# se copia el texto al final del archivo y ctrl+E para salir y luego guardar la modificación
# Visualiza las últimas 3 líneas del archivo sed.txt dentro de la carpeta lorem-copy. Deberías ver ahora Homo homini lupus
cat ./lorem-copy/sed.txt | tail -n 3
# se hace comprobación y aparece la modificación
# Sustituye todas las apariciones de et por ET del archivo at.txt dentro de la carpeta lorem-copy. Deberás usar sed
sed -i '' 's/et/ET/g' ./lorem-copy/at.txt
# Encuentra al usuario activo en el sistema
whoami
# Encuentra dónde estás en tu sistema de ficheros
pwd
# Lista los archivos que terminan por .txt en la carpeta lorem
find -f ./lorem/*.txt
ls -f ./lorem/*.txt
# Cuenta el número de líneas que tiene el archivo sed.txt dentro de la carpeta lorem
cat ./lorem/sed.txt  | wc -l
# Cuenta el número de archivos que empiezan por lorem que están en este directorio y en directorios internos
find . -name "lorem*" | wc -l
# Encuentra todas las apariciones de et en at.txt dentro de la carpeta lorem
????
# Cuenta el número de apariciones del string et en at.txt dentro de la carpeta lorem
grep 'et' ./lorem/at.txt | wc -l
# Cuenta el número de apariciones del string et en todos los archivos del directorio lorem-copy
grep -r 'et' ./lorem-copy/ | wc -l

## Bonus
# Almacena en una variable name tu nombre
name="Vanessa"
# Imprime esa variable
echo $name
# Crea un directorio nuevo que se llame como el contenido de la variable name
mkdir Vanessa
# Elimina ese directorio
rm -r Vanessa
# Por cada archivo dentro de la carpeta lorem imprime el número de carácteres que tienen sus nombres. 
# Intenta primero mostrar los archivos mediante un bucle for
# i.Imprime los ficheros
for file in $(ls lorem) # al dar a import me da for>
echo $file
# ii. Imprime las longitudes de los nombres de los ficheros
for file in $(ls lorem)
echo -n "$file" | wc -m
# iii. Imprime outputs con la siguiente estructura: lorem has 5 characters lenght
for file in $(ls lorem) 
echo "$file has ???? characters lenght"
# Muestra información sobre tu procesador por pantalla
top
# Crea 3 alias y haz que estén disponibles cada vez que inicias sesión
alias vass="cd/Users/Vanesuki/repos/datamad0820"
alias vane="cd/Users/Vanesuki/repos/datamad0820"
alias vanesuki="cd/Users/Vanesuki/repos/datamad0820"
#### Y hasta aquí he llegado!

