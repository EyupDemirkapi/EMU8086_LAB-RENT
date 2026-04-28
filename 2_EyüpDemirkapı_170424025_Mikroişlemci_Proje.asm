.MODEL SMALL
.STACK 100H

.DATA
    ; --- Oyuncu Degiskenleri ---
    o_x          DW 8        
    o_y          DW 8        
    o_eski_x     DW 8        
    o_eski_y     DW 8        
    
    ; --- Oyun Kontrol Degiskenleri ---
    kalan_sure   DB 60       
    eski_saniye  DB ?        
    harita_ptr   DW ?        
    
    ; --- Metin Mesajlari ---
    msj_menu     DB 'SEVIYE SECIN: 1:KOLAY 2:ORTA 3:ZOR (ESC:CIKIS)$'
    msj_kazandin DB 13,10,'TEBRIKLER! LABIRENTI COZDUNUZ! (Tusa Bas)$ '
    msj_kaybettin DB 13,10,'SURENIZ DOLDU! KAYBETTINIZ! (Tusa Bas)$ '
    etiket_sure  DB 'KALAN SURE: $'

    ; --- 20x20 Haritalar ---
    h_kolay DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            DB 1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,1
            DB 1,0,1,1,0,1,0,1,1,1,1,0,1,0,1,1,1,1,0,1
            DB 1,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,1
            DB 1,1,0,1,1,1,1,1,1,1,1,0,1,0,1,0,1,1,1,1
            DB 1,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,1
            DB 1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1
            DB 1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1
            DB 1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,0,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1
            DB 1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1
            DB 1,0,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1
            DB 1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,1
            DB 1,1,1,1,1,0,1,0,0,1,1,1,1,1,1,1,1,1,0,1
            DB 1,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1
            DB 1,0,1,0,0,0,1,1,0,0,0,1,1,1,1,1,1,1,2,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    h_orta  DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            DB 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
            DB 1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
            DB 1,0,1,0,0,0,0,1,0,0,0,1,0,0,0,0,0,1,0,1
            DB 1,0,1,1,1,1,0,1,0,1,0,1,0,1,1,1,0,1,0,1
            DB 1,0,0,0,0,1,0,1,0,1,0,1,0,0,0,1,0,1,0,1
            DB 1,1,1,1,0,1,0,1,0,1,0,1,1,1,0,1,0,1,0,1
            DB 1,0,0,0,0,1,0,0,0,1,0,0,0,1,0,1,0,0,0,1
            DB 1,0,1,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
            DB 1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1
            DB 1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1
            DB 1,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1
            DB 1,0,1,0,1,1,1,1,1,1,0,1,1,1,1,1,0,1,2,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    h_zor   DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
            DB 1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1
            DB 1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,0,1
            DB 1,0,1,0,0,0,0,0,1,0,1,0,1,0,0,0,0,1,0,1
            DB 1,0,1,0,1,1,1,0,1,0,1,0,1,0,1,1,0,1,0,1
            DB 1,0,1,0,1,0,0,0,1,0,0,0,1,0,1,0,0,1,0,1
            DB 1,0,1,0,1,0,1,1,1,1,1,1,1,0,1,0,1,1,0,1
            DB 1,0,1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,1
            DB 1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1
            DB 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1
            DB 1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,1
            DB 1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1
            DB 1,0,1,0,1,1,1,1,1,1,1,1,1,1,0,1,0,1,0,1
            DB 1,0,0,0,1,0,0,0,0,0,0,0,0,1,0,1,0,0,0,1
            DB 1,1,1,0,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1
            DB 1,0,0,0,1,0,1,0,0,0,0,1,0,1,0,1,0,0,0,1
            DB 1,0,1,1,1,0,1,0,1,1,0,1,0,1,0,1,0,1,2,1
            DB 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

    r_x DW ?
    r_y DW ?

.CODE
BASLAT:
    MOV AX, @DATA
    MOV DS, AX

MENUYU_GOSTER:
    MOV AX, 03H             
    INT 10H
    LEA DX, msj_menu
    MOV AH, 09H
    INT 21H
    MOV AH, 01H             
    INT 21H
    
    CMP AL, '1'
    JE  KOLAY_YUKLE
    CMP AL, '2'
    JE  ORTA_YUKLE
    CMP AL, '3'
    JE  ZOR_YUKLE
    CMP AL, 27              
    JE  CIKIS_YAP
    JMP MENUYU_GOSTER

KOLAY_YUKLE:
    LEA BX, h_kolay
    JMP OYUN_START
ORTA_YUKLE:
    LEA BX, h_orta
    JMP OYUN_START
ZOR_YUKLE:
    LEA BX, h_zor
    JMP OYUN_START

OYUN_START:
    MOV harita_ptr, BX
    MOV o_x, 8
    MOV o_y, 8
    MOV o_eski_x, 8
    MOV o_eski_y, 8
    MOV kalan_sure, 60
    MOV AX, 13H             
    INT 10H
    CALL HARITAYI_CIZ

OYUN_DONGUSU:
    CALL SURE_KONTROL
    MOV CX, o_eski_x
    MOV DX, o_eski_y
    MOV AL, 0               
    CALL BLOK_CIZ
    MOV CX, o_x
    MOV DX, o_y
    MOV AL, 04H             
    CALL BLOK_CIZ
    MOV AH, 01H
    INT 16H
    JZ  OYUN_DONGUSU
    MOV AH, 00H
    INT 16H
    MOV o_eski_x, CX
    MOV o_eski_y, DX
    MOV BX, o_x
    MOV DX, o_y
    CMP AL, 'w'
    JE  GIT_UP
    CMP AL, 's'
    JE  GIT_DOWN
    CMP AL, 'a'
    JE  GIT_LEFT
    CMP AL, 'd'
    JE  GIT_RIGHT
    CMP AL, 27
    JE  MENUYU_GOSTER
    JMP OYUN_DONGUSU

GIT_UP:    SUB DX, 8
           JMP CARPISMA_TESTI
GIT_DOWN:  ADD DX, 8
           JMP CARPISMA_TESTI
GIT_LEFT:  SUB BX, 8
           JMP CARPISMA_TESTI
GIT_RIGHT: ADD BX, 8
           JMP CARPISMA_TESTI

CARPISMA_TESTI:
    CALL HARITA_OKU
    CMP AL, 1
    JE  OYUN_DONGUSU
    CMP AL, 2
    JE  KAZANDIN
    MOV o_x, BX
    MOV o_y, DX
    JMP OYUN_DONGUSU

KAZANDIN:
    MOV AX, 03H
    INT 10H
    LEA DX, msj_kazandin
    MOV AH, 09H
    INT 21H
    MOV AH, 00H
    INT 16H
    JMP MENUYU_GOSTER

KAYBETTIN:
    MOV AX, 03H
    INT 10H
    LEA DX, msj_kaybettin
    MOV AH, 09H
    INT 21H
    MOV AH, 00H
    INT 16H
    JMP MENUYU_GOSTER

CIKIS_YAP:
    MOV AX, 03H
    INT 10H
    MOV AH, 4CH
    INT 21H

; --- PROSEDURLER ---

HARITAYI_CIZ PROC
    MOV SI, harita_ptr
    MOV DX, 0
    MOV BP, 0
H_Y_DONGU:
    MOV CX, 0
    MOV AH, 0
H_X_DONGU:
    PUSH AX
    MOV AL, [SI]
    CMP AL, 1
    JE  RE_DUVAR
    CMP AL, 2
    JE  RE_CIKIS
    JMP RE_SON
RE_DUVAR:
    MOV AL, 07H
    JMP RE_CIZ
RE_CIKIS:
    MOV AL, 02H
RE_CIZ:
    CALL BLOK_CIZ
RE_SON:
    POP AX
    INC SI
    ADD CX, 8
    INC AH
    CMP AH, 20
    JL  H_X_DONGU
    ADD DX, 8
    INC BP
    CMP BP, 20
    JL  H_Y_DONGU
    RET
HARITAYI_CIZ ENDP

BLOK_CIZ PROC
    PUSH CX
    PUSH DX
    MOV r_y, 8
B1: MOV r_x, 8
    PUSH CX
B2: MOV AH, 0CH
    INT 10H
    INC CX
    DEC r_x
    JNZ B2
    POP CX
    INC DX
    DEC r_y
    JNZ B1
    POP DX
    POP CX
    RET
BLOK_CIZ ENDP

HARITA_OKU PROC
    PUSH BX
    PUSH DX
    PUSH CX
    MOV AX, DX
    MOV CL, 8
    DIV CL
    MOV CL, 20
    MUL CL
    MOV DI, AX
    MOV AX, BX
    MOV CL, 8
    DIV CL
    MOV AH, 0
    ADD DI, AX
    MOV SI, harita_ptr
    MOV BX, DI
    MOV AL, [SI+BX]
    POP CX
    POP DX
    POP BX
    RET
HARITA_OKU ENDP

SURE_KONTROL PROC
    MOV AH, 2CH
    INT 21H
    CMP DH, eski_saniye
    JE  S_K_BITIR
    MOV eski_saniye, DH
    DEC kalan_sure
    CMP kalan_sure, 0
    JLE SURE_DOLDU
    MOV AH, 02H
    MOV BH, 0
    MOV DH, 22
    MOV DL, 1
    INT 10H
    LEA DX, etiket_sure
    MOV AH, 09H
    INT 21H
    MOV AL, kalan_sure
    MOV AH, 0
    MOV CL, 10
    DIV CL
    ADD AX, 3030H
    MOV BX, AX
    MOV AH, 0EH
    MOV AL, BL
    INT 10H
    MOV AL, BH
    INT 10H
S_K_BITIR:
    RET
SURE_DOLDU:
    POP AX ; Call yiginini temizle
    JMP KAYBETTIN
SURE_KONTROL ENDP

END BASLAT