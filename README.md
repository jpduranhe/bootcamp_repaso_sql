# Ejercicio Repaso Modulo 3



<img src="https://octodex.github.com/images/codercat.jpg"
     alt="Markdown Monster icon"
     style="width:150px" />

## Tipos numéricos
| Tipo          | Rango valor c/signo                                    | Rango valor s/signo                                        |Tamaño Almacenamiento |
|:------------- |:-------------------------------------------------------|:-----------------------------------------------------------|:--------------------:|
| TinyInt       | -128 a 127                                             | 0 a 255                                                    |1 byte                |
| Bit ó Bool    | 0 o 1                                                  |                                                            |2 bytes               |
| SmallInt      | -32768 a 32767                                         | 0 a 65535                                                  |3 bytes               |
| MediumInt     | -8.388.608 a 8.388.607                                 | 0 a 16777215.                                              |4 bytes               |
| Integer, Int  | -2147483648 a 2147483647                               | 0 a 429.4967.295                                           |4 bytes               |
| BigInt        | -9.223.372.036.854.775.808 a 9.223.372.036.854.775.807 | 0 a 18.446.744.073.709.551.615                             |8 bytes               |
| Float         | -3.402823466E+38 a -1.175494351E-38                    | 0 y desde 1.175494351E-38 a 3.402823466E+38                |4 bytes               |
| xReal, Double | -1.7976931348623157E+308 a -2.2250738585072014E-308    | 0 y desde 2.2250738585072014E-308 a 1.7976931348623157E+308|8 bytes               | 









## Tipos Fecha
| Tipo          | Rango valor                                                                                    |Formato            |Tamaño|Tamaño Almacenamiento |
|:--------------|:-----------------------------------------------------------------------------------------------|:------------------|------|:--------------------:|
| Date          |desde el 1 de enero del 1001 al 31 de diciembre de 9999                                         |YYYY-MM-DD         |      |3 bytes               |
| DateTime      |desde el 1 de enero del 1001 a las 00:00:00 al 31 de diciembre del 9999 a las 23:59:59 segundos |YYYY-MM-DD HH:MM:SS|      |8 bytes               |
| TimeStamp     |desde el 1 de enero de 1970 al año 2037                                                         |aaaammddhhmmss     |14    |4 bytes               |
|               |                                                                                                |aammddhhmmss       |12    |                      |
|               |                                                                                                |aaaammdd           |8     |                      |
|               |                                                                                                |aammdd             |6     |                      |
|               |                                                                                                |aamm               |4     |                      |
|               |                                                                                                |aa                 |2     |                      |
|Time           |desde -838:59:59  a 838:59:59                                                                   |HH:MM:SS           |      |3 bytes               |
|Year           |desde el año 1901 al año 2155                                                                   |YYYY o YY          |      |1 bytes               |




## Tipos cadena

|                       |Rango valor                                                                                     |                   |      |Tamaño Almacenamiento !
|:----------------------|:-----------------------------------------------------------------------------------------------|:------------------|------|:--------------------:|
|Char(n)                |desde 0 a 255 caracteres                                                                        |                   |      |n bytes               !
|VarChar(n)             |0 a 255 caracteres                                                                              |                   |      |n +1 bytes            !
|TinyText y TinyBlob    |longitud máxima de 255 caracteres                                                               |                   |      |Longitud+1 bytes      !
|Blob y Text            |texto con un máximo de 65535 caracteres                                                         |                   |      |Longitud +2 bytes     !
|MediumBlob y MediumText|texto con un máximo de 16.777.215 caracteres                                                    |                   |      |Longitud +3 bytes     !
|LongBlob y LongText    |texto con un máximo de caracteres 4.294.967.295                                                 |                   |      |Longitud +4 bytes     !
|Enum                   |hasta 65535 valores distintos                                                                   |                   |      |1 ó dos bytes         !
|Set                    |                                                                                                |                   |      |1, 2, 3, 4 ó 8 bytes  !



## Diferencia de almacenamiento entre los tipos Char y VarChar
| Valor                 | CHAR(4) Almacenamiento  | VARCHAR(4) Almacenamiento!
|:----------------------|:------------------------|:-------------------------|
| ''                    |4 bytes                  |1 byte                    |
| 'ab'                  |4 bytes                  |3 byte                    |
| 'abcd'                |4 bytes                  |4 byte                    |
| 'abcdefgh'            |4 bytes                  |5 byte                    |
                 
[Fuente de la inforamción](https://desarrolloweb.com/articulos/1054.php)

