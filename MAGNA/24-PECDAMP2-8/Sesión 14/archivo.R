# Asignación de variables
x <- 10
y <- 5
suma <- x + y
suma

# Crear un vector
numeros <- c(1, 2, 3, 4, 5)
letras <- c("a", "b", "c")

# Operaciones con vectores
numeros * 2       # Multiplicación escalar
sum(numeros)      # Suma de elementos


# Matriz
matriz <- matrix(c(1, 2, 3, 4, 5, 1, 2, 3, 4), nrow = 3, ncol = 3)


matriz

# Data frame
datos <- data.frame(
  nombre = c("Juan", "Ana", "Pedro"),
  edad = c(25, 30, 35)
)
datos


# Manipulación de Datos con Librerías Populares

# Filtrar datos
library(dplyr)
datos <- data.frame(
  nombre = c("Juan", "Ana", "Pedro"),
  edad = c(25, 30, 35)
)
datos %>% filter(edad > 25)

# Seleccionar columnas
datos %>% select(nombre)

# Carga de datos desde un archivo CSV
datos <- read.csv("C:/Users/Fernando/Downloads/dataset_mantenimiento_predictivo.csv")
head(datos)  # Vista previa de los datos

# Carga de datos desde un archivo XLSX
# primero instalr libreria de excel
install.packages("readxl")
library("readxl")

datos2 <- "C:/Users/Fernando/Downloads/modulo07_dataset_mantenimiento.xlsx"
datos2 = read_excel(datos2,sheet="Sheet1")
head(datos2)  # Vista previa de los datos

# Resumen rápido de datos
summary(datos)    # Estadísticas básicas
str(datos)        # Estructura del data frame

# Gráficos simples con plot
# Gráfico de dispersión
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
plot(x, y, type = "p", col = "red", main = "Gráfico de dispersión")

# Introducción a ggplot2

# primero creamos el dataframe
datos <- data.frame(
  nombre = c("Juan", "Ana", "Pedro"),
  edad = c(25, 30, 35)
)
# Luego creamos el gráfico personalizado
library(ggplot2)
ggplot(data = datos, aes(x = nombre, y = edad)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(title = "Edades por persona", x = "Nombre", y = "Edad")


###################################
############ Ejemplo1  ############
###################################

# Crear un data frame con datos ficticios de ventas
ventas <- data.frame(
  producto = c("Producto A", "Producto B", "Producto C", "Producto D", "Producto E"),
  ventas_totales = c(120, 150, 100, 80, 200),
  region = c("Norte", "Sur", "Este", "Oeste", "Centro")
)

# Guardar el archivo CSV en una ubicación específica
write.csv(ventas, "C:/Users/Fernando/Downloads/ventas.csv", row.names = FALSE)

# Mensaje para confirmar que el archivo se creó correctamente
cat("El archivo 'ventas.csv' se ha guardado en la ubicación especificada.\n")


###################################
############ Ejemplo2  ############
###################################

# Paso 1: Cargar datos
ventas <- read.csv("C:/Users/Fernando/Downloads/ventas.csv")

# Paso 2: Resumen
summary(ventas)

# Paso 3: Gráfico
ggplot(data = ventas, aes(x = producto, y = ventas_totales)) +
  geom_bar(stat = "identity", fill = "coral") +
  labs(title = "Ventas por Producto", x = "Producto", y = "Ventas Totales")

