# Lenguajes de Interfaz — Unidad 3 (Ensamblador x86)

Repositorio oficial con las prácticas de la **Unidad 3** de la materia **Lenguajes de Interfaz**, desarrolladas en lenguaje ensamblador de 32 bits (MASM) utilizando la biblioteca **Irvine32**.

## Datos Generales

* **Alumno:** Montoya Roman Gabriela Concepcion
* **Docente:** Dr. José Luis Medina Jiménez
* **Materia:** Lenguajes de Interfaz
* **Horario:** 9:00 - 10:00 AM

---

## Índice de Prácticas (Enlaces Directos al Código Fuente)

1. **[Práctica 01 - Procedimientos](./Project1/Project1/Procedimientos.asm)**
   * Definición, invocación (`CALL`) y retorno (`RET`) de un procedimiento personalizado en ensamblador x86 usando Irvine32.

2. **[Práctica 02 - Procedimientos Almacenados](./Project2/Project2/Procedi_Almacenados.asm)**
   * Llamadas anidadas entre subrutinas (`main` -> `rutinaA` -> `rutinaB`) y control del flujo de retorno LIFO.

3. **[Práctica 03 - Validación de Cadena No Vacía](./Project3/Project3/Validacion.asm)**
   * Validación de valores en el registro `ECX` mediante la instrucción `TEST` y retorno del estado de validación en `EAX`.

4. **[Práctica 04 - Paso de Parámetros por Pila](./Project4/Project4/Parametros.asm)**
   * Paso de argumentos a través de la pila mediante marco base (`EBP` / `ESP`), preservación de registros y limpieza con `RET 8`.

5. **[Práctica 05 - Macros](./Project5/Project5/Macros.asm)**
   * Definición, inclusión de archivos (`.inc`) y expansión de macros con parámetros en ensamblador x86.
