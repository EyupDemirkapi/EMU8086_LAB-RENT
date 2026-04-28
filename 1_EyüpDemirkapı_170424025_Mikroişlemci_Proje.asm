ORG 100h

.DATA
    ; 1:Duvar, 0:Yol, 2:Oyuncu, 3:Cikis (20x20)
    HARITA_KOLAY    DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                    DB 1,2,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1
                    DB 1,0,1,0,1,0,1,1,1,1,0,0,1,0,1,1,1,1,0,1
                    DB 1,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1
                    DB 1,0,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1
                    DB 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,1
                    DB 1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,1,1,1,0,1
                    DB 1,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,1,0,1
                    DB 1,0,1,1,0,1,1,1,1,1,1,1,0,1,1,1,0,1,0,1
                    DB 1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
                    DB 1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
                    DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
                    DB 1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
                    DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
                    DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1
                    DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
                    DB 1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
                    DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
                    DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
                    DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1

    HARITA_ORTA     DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                    DB 1,2,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1
                    DB 1,1,1,1,1,0,1,0,1,1,1,1,1,1,0,1,0,1,0,1
                    DB 1,0,0,0,1,0,1,0,1,0,0,0,0,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,0,0,1,0,1,1,0,1,0,0,0,1,0,1
                    DB 1,0,1,0,1,1,1,1,1,0,1,0,0,1,1,1,1,1,0,1
                    DB 1,0,1,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,1
                    DB 1,0,1,1,1,1,1,1,1,1,1,0,0,1,0,1,1,1,1,1
                    DB 1,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,0,0,0,1
                    DB 1,1,1,1,1,1,1,1,1,0,1,0,0,1,1,1,1,1,0,1
                    DB 1,0,0,0,0,0,0,0,1,0,1,0,1,1,0,0,0,1,0,1
                    DB 1,0,1,1,1,1,1,0,1,0,0,0,0,1,0,1,0,1,0,1
                    DB 1,0,1,0,0,0,1,0,1,1,1,1,0,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,0,0,0,1,0,0,0,1,0,0,0,1
                    DB 1,0,1,0,1,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1
                    DB 1,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1
                    DB 1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1
                    DB 1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0,1
                    DB 1,0,1,1,1,1,0,0,0,1,1,1,1,1,0,0,0,0,0,1
                    DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1

    HARITA_ZOR      DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                    DB 1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
                    DB 1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
                    DB 1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
                    DB 1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,1,1,1,1,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,0,0,0,0,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,0,1,3,0,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,0,1,1,1,1,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,0,0,0,0,0,0,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,0,1,0,1
                    DB 1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,1,0,1
                    DB 1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1
                    DB 1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
                    DB 1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
                    DB 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
                    DB 1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
                    DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1

    MESAJ_GIRIS     DB 'Labirent Oyunu - Hareket: WASD', 13, 10, 'Zorluk Sec: 1-Kolay, 2-Orta, 3-Zor: $'
    MESAJ_KAYIP     DB 13, 10, 'SURE BITTI! KAYBETTINIZ. $'
    MESAJ_GALIBIYET DB 13, 10, 'TEBRIKLER! CIKISA ULASTINIZ. $'
    
    OYUNCU_X        DW 1
    OYUNCU_Y        DW 1
    OYUN_SURESI     DW 60       ; 60 Saniye limit
    SANIYE_SAYAC    DB 0        ; Gerçek saniye için döngü sayacý
    GUNCEL_HARITA   DW ?

.CODE
BASLAT:
    MOV AX, 03h
    INT 10h

    MOV DX, OFFSET MESAJ_GIRIS
    MOV AH, 09h
    INT 21h
    
    MOV AH, 01h
    INT 21h
    
    CMP AL, '1'
    JE SEC_KOLAY
    CMP AL, '2'
    JE SEC_ORTA
    MOV GUNCEL_HARITA, OFFSET HARITA_ZOR
    JMP OYUN_START

SEC_KOLAY:
    MOV GUNCEL_HARITA, OFFSET HARITA_KOLAY
    JMP OYUN_START

SEC_ORTA:
    MOV GUNCEL_HARITA, OFFSET HARITA_ORTA

OYUN_START:
    MOV AX, 0B800h
    MOV ES, AX

OYUN_DONGUSU:
    CALL EKRANI_CIZ         
    CALL SUREYI_YAZDIR      

    MOV AH, 01h
    INT 16h
    JZ ZAMAN_GUNCELLE       
    
    MOV AH, 00h             
    INT 16h
    
    CMP AL, 'w'
    JE D_YUKARI
    CMP AL, 's'
    JE D_ASAGI
    CMP AL, 'a'
    JE D_SOLA
    CMP AL, 'd'
    JE D_SAGA
    JMP ZAMAN_GUNCELLE

D_YUKARI:
    MOV AX, OYUNCU_Y
    DEC AX
    MOV BX, OYUNCU_X
    CALL HAREKET_ET
    JMP ZAMAN_GUNCELLE
D_ASAGI:
    MOV AX, OYUNCU_Y
    INC AX
    MOV BX, OYUNCU_X
    CALL HAREKET_ET
    JMP ZAMAN_GUNCELLE
D_SOLA:
    MOV AX, OYUNCU_Y
    MOV BX, OYUNCU_X
    DEC BX
    CALL HAREKET_ET
    JMP ZAMAN_GUNCELLE
D_SAGA:
    MOV AX, OYUNCU_Y
    MOV BX, OYUNCU_X
    INC BX
    CALL HAREKET_ET
    JMP ZAMAN_GUNCELLE

ZAMAN_GUNCELLE:
    ; 0.1 saniye gecikme
    MOV CX, 01h
    MOV DX, 86A0h      
    MOV AH, 86h
    INT 15h

    INC SANIYE_SAYAC
    CMP SANIYE_SAYAC, 10    ; 10 döngü = 1 saniye
    JNE OYUN_DONGUSU        

    MOV SANIYE_SAYAC, 0     
    DEC OYUN_SURESI         
    JZ BITIS_KAYIP          
    
    JMP OYUN_DONGUSU

; --- FONKSÝYONLAR ---

HAREKET_ET PROC
    PUSH AX
    PUSH BX
    MOV CX, 20
    MUL CX
    ADD AX, BX
    MOV SI, GUNCEL_HARITA
    ADD SI, AX
    MOV DL, [SI]    
    CMP DL, 1       
    JE H_CIK
    CMP DL, 3       
    JE BITIS_GALIP
    
    MOV AX, OYUNCU_Y
    MOV CX, 20
    MUL CX
    ADD AX, OYUNCU_X
    MOV DI, GUNCEL_HARITA
    ADD DI, AX
    MOV BYTE PTR [DI], 0
    
    POP BX
    POP AX
    MOV OYUNCU_X, BX
    MOV OYUNCU_Y, AX
    
    MOV AX, OYUNCU_Y
    MOV CX, 20
    MUL CX
    ADD AX, OYUNCU_X
    MOV DI, GUNCEL_HARITA
    ADD DI, AX
    MOV BYTE PTR [DI], 2
    RET
H_CIK:
    POP BX
    POP AX
    RET
HAREKET_ET ENDP

EKRANI_CIZ PROC
    MOV DI, 380             
    MOV SI, GUNCEL_HARITA
    MOV CX, 20              
S_D:
    PUSH CX
    MOV CX, 20              
K_D:
    LODSB                   
    CMP AL, 1
    JE Y_D
    CMP AL, 2
    JE Y_O
    CMP AL, 3
    JE Y_C
    MOV AL, ' '
    MOV AH, 07h
    JMP Y_S
Y_D: 
    MOV AL, '#'
    MOV AH, 04h
    JMP Y_S
Y_O: 
    MOV AL, 'P'
    MOV AH, 0Eh
    JMP Y_S
Y_C: 
    MOV AL, 'E'
    MOV AH, 0Ah
Y_S:
    MOV ES:[DI], AX
    ADD DI, 2
    LOOP K_D
    ADD DI, 120
    POP CX
    LOOP S_D
    RET
EKRANI_CIZ ENDP

SUREYI_YAZDIR PROC
    MOV DI, 70
    MOV AX, 0720h
    MOV CX, 10
T_D:
    MOV ES:[DI], AX
    ADD DI, 2
    LOOP T_D

    MOV DI, 70              
    MOV AX, OYUN_SURESI
    MOV BX, 10
    MOV CX, 0
P_D:
    MOV DX, 0
    DIV BX
    PUSH DX
    INC CX
    CMP AX, 0
    JNE P_D
B_D:
    POP DX
    ADD DL, 30h
    MOV AL, DL
    MOV AH, 0Eh
    MOV ES:[DI], AX
    ADD DI, 2
    LOOP B_D
    RET
SUREYI_YAZDIR ENDP

BITIS_GALIP:
    CALL EKRANI_CIZ
    MOV DX, OFFSET MESAJ_GALIBIYET
    JMP CIKIS_YAP
BITIS_KAYIP:
    MOV DX, OFFSET MESAJ_KAYIP
CIKIS_YAP:
    MOV AH, 09h
    INT 21h
    MOV AH, 4Ch
    INT 21h
END BASLAT