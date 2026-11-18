
; Materia: Lenguajes de Interfaz
; Alumno: Montoya Roman Gabriela Concepcion 
; Horario: 9:00 - 10:00 AM
; Docente: Dr. José Luis Medina Jiménez
; Práctica: 01 Procedimientos
; Descripcion: Demuestra la definicion, llamada (CALL) y retorno (RET) de un procedimiento en ensamblador x86.


INCLUDE Irvine32.inc

.data
    mensajeInicio        BYTE "Inicio del programa", 0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
    mensajeFin           BYTE "Fin del programa", 0

.code
main PROC
    mov  edx, OFFSET mensajeInicio        ; Carga la dirección del mensaje inicial
    call WriteString                      ; Imprime la cadena en consola
    call Crlf                            

    ; Primera llamada al procedimiento
    call mensajeAviso                     ; Llama a mensajeAviso
    mov  eax, 10                          ; Asigna 10 a EAX

    ; Segunda llamada al procedimiento
    call mensajeAviso                     ; Llama nuevamente a mensajeAviso
    mov  eax, 20                          ; Asigna 20 a EAX

    mov  edx, OFFSET mensajeFin           ; Carga la direccion del mensaje final
    call WriteString                      ; Imprime la cadena final
    call Crlf                             
    exit                                  
main ENDP

; Procedimiento mensajeAviso: imprime un mensaje en consola y retorna
mensajeAviso PROC
    mov  edx, OFFSET mensajeProcedimiento ; Carga la direccion del mensaje interno
    call WriteString                      ; Imprime cadena en consola
    call Crlf                            
    ret                                   
mensajeAviso ENDP

END main