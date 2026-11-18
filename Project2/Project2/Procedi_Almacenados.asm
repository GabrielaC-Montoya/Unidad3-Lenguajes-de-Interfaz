
; Materia: Lenguajes de Interfaz
; Alumno: Montoya Roman Gabriela Cocepcion
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 02 Procedimientos Almacenados
; Descripcion: Demuestra llamadas anidadas entre procedimientos y el retorno LIFO.

INCLUDE Irvine32.inc

.data
    msgMain     BYTE "Inicio en Main (EAX = 5)", 0
    msgEntraA   BYTE "Entrando a rutinaA", 0
    msgEntraB   BYTE "Entrando a rutinaB (EDX = 10)", 0
    msgContA    BYTE "Continuando la ejecucion en rutinaA", 0
    msgFinMain  BYTE "Regreso a Main. Fin del programa.", 0

.code
main PROC
    mov  eax, 5                       ; Asigna el valor inicial 5 a EAX
    mov  edx, OFFSET msgMain          ; Carga ladirección del mensaje inicial
    call WriteString                  ; Muestra el mensaje en consola
    call Crlf                         ; Da un salto de línea

    call rutinaA                      ; Llama a rutinaA

    mov  edx, OFFSET msgFinMain       ; Carga la dirección del mensaje final
    call WriteString                  ; Muestra el mensaje de cierre
    call Crlf                        
    exit                             
main ENDP


; Procedimiento rutinaA: invoca a rutinaB y continua su ejecucion al regresar
rutinaA PROC
    mov  edx, OFFSET msgEntraA        ; Carga el mensaje de entrada a rutinaA
    call WriteString                  ; Imprime en consola
    call Crlf                         

    call rutinaB                      ; Llamada anidada a rutinaB

    mov  edx, OFFSET msgContA         ; Carga el mensaje de continuación en rutinaA
    call WriteString                  
    call Crlf                         
    ret                               ; Retornar a main
rutinaA ENDP

; Procedimiento rutinaB: asigna un valor a EDX y retorna a rutinaA
rutinaB PROC
    mov  edx, OFFSET msgEntraB        ; Carga el mensaje de entrada a rutinaB
    call WriteString                 
    call Crlf                         

    mov  edx, 10                      ; Asigna el valor 10 al registro EDX
    ret                               
rutinaB ENDP

END main