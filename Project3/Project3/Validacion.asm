
; Materia: Lenguajes de Interfaz
; Alumno: Montoya Roman Gabriela Concepcion
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Practica: 03 Validacion de Cadena no Vacia
; Descripcion: Verifica mediante TEST si ECX es cero o valido y retorna el resultado en EAX.

INCLUDE Irvine32.inc

.data
    msgentra BYTE "Entrada valida", 0
    msgerror BYTE "Entrada vacia", 0

.code
; Procedimiento ValidarNoVacia
; Entrada: ECX = longitud de la cadena
; Salida:  EAX = 0 si está vacía, 1 si no está vacía
ValidarNoVacia PROC
    xor  eax, eax                     ; Inicializa registro EAX = 0 
    test ecx, ecx                     
    jz   fin                          ; Si ECX = 0, salta a fin y retornar EAX = 0
    mov  eax, 1                       ; Si ECX != 0, asigna EAX = 1 entrada valida
fin:
    ret                               
ValidarNoVacia ENDP

main PROC
    mov  ecx, 7                       ; Asigna la longitud de prueba 
    call ValidarNoVacia               ; Invocamos validacion, resultado queda en EAX

    test eax, eax                     
    jz   entradaInvalida              

    ; Caso entrada válida (EAX = 1)
    mov  edx, OFFSET msgentra         ; Carga la direccion del mensaje de entrada valida
    call WriteString                  ; Imprime cadena en consola
    call Crlf                         ; Da un salto de linea
    jmp  salir                       

entradaInvalida:
    ; Caso entrada vacía (EAX = 0)
    mov  edx, OFFSET msgerror         ; Carga la direccion del mensaje de entrada vacia
    call WriteString                  ; Imprime la cadena en consola
    call Crlf                         ; Da un salto de línea

salir:
    exit                             
main ENDP

END main