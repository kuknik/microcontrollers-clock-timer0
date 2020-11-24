
_Welcomm:

;Clock_Timer0.c,26 :: 		void Welcomm(){
;Clock_Timer0.c,28 :: 		Lcd_Out(1,5,"K.I.S.S.");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,29 :: 		Lcd_Out(2,1,"Keep it simple, stupid");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,31 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	CLRF       Welcomm_i_L0+0
L_Welcomm0:
	MOVLW      8
	SUBWF      Welcomm_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Welcomm1
;Clock_Timer0.c,32 :: 		Lcd_Cmd(_LCD_SHIFT_LEFT);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,33 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_Welcomm3:
	DECFSZ     R13+0, 1
	GOTO       L_Welcomm3
	DECFSZ     R12+0, 1
	GOTO       L_Welcomm3
	NOP
;Clock_Timer0.c,31 :: 		for(i=0; i<8; i++) {             // Move text to the left 7 times
	INCF       Welcomm_i_L0+0, 1
;Clock_Timer0.c,34 :: 		}
	GOTO       L_Welcomm0
L_Welcomm1:
;Clock_Timer0.c,36 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	CLRF       Welcomm_i_L0+0
L_Welcomm4:
	MOVLW      8
	SUBWF      Welcomm_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Welcomm5
;Clock_Timer0.c,37 :: 		Lcd_Cmd(_LCD_SHIFT_RIGHT);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,38 :: 		Delay_ms(50);
	MOVLW      65
	MOVWF      R12+0
	MOVLW      238
	MOVWF      R13+0
L_Welcomm7:
	DECFSZ     R13+0, 1
	GOTO       L_Welcomm7
	DECFSZ     R12+0, 1
	GOTO       L_Welcomm7
	NOP
;Clock_Timer0.c,36 :: 		for(i=0; i<8; i++) {             // Move text to the right 7 times
	INCF       Welcomm_i_L0+0, 1
;Clock_Timer0.c,39 :: 		}
	GOTO       L_Welcomm4
L_Welcomm5:
;Clock_Timer0.c,41 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,43 :: 		for(i=0; i<8; i++) {
	CLRF       Welcomm_i_L0+0
L_Welcomm8:
	MOVLW      8
	SUBWF      Welcomm_i_L0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Welcomm9
;Clock_Timer0.c,44 :: 		Lcd_Out(1,5,"K.I.S.S.");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,45 :: 		Delay_ms(120);
	MOVLW      156
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_Welcomm11:
	DECFSZ     R13+0, 1
	GOTO       L_Welcomm11
	DECFSZ     R12+0, 1
	GOTO       L_Welcomm11
;Clock_Timer0.c,46 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,47 :: 		Delay_ms(10);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Welcomm12:
	DECFSZ     R13+0, 1
	GOTO       L_Welcomm12
	DECFSZ     R12+0, 1
	GOTO       L_Welcomm12
	NOP
	NOP
;Clock_Timer0.c,43 :: 		for(i=0; i<8; i++) {
	INCF       Welcomm_i_L0+0, 1
;Clock_Timer0.c,48 :: 		}
	GOTO       L_Welcomm8
L_Welcomm9:
;Clock_Timer0.c,49 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,51 :: 		}
L_end_Welcomm:
	RETURN
; end of _Welcomm

_InitTimer0:

;Clock_Timer0.c,54 :: 		void InitTimer0(){
;Clock_Timer0.c,55 :: 		OPTION_REG = 0x86;
	MOVLW      134
	MOVWF      OPTION_REG+0
;Clock_Timer0.c,56 :: 		TMR0         = 100;
	MOVLW      100
	MOVWF      TMR0+0
;Clock_Timer0.c,57 :: 		INTCON = 0xA0;
	MOVLW      160
	MOVWF      INTCON+0
;Clock_Timer0.c,58 :: 		}
L_end_InitTimer0:
	RETURN
; end of _InitTimer0

_InitIoC:

;Clock_Timer0.c,60 :: 		void InitIoC(){
;Clock_Timer0.c,61 :: 		TRISB.B1 = 1;
	BSF        TRISB+0, 1
;Clock_Timer0.c,62 :: 		TRISB.B2 = 1;
	BSF        TRISB+0, 2
;Clock_Timer0.c,63 :: 		TRISB.B3 = 1;
	BSF        TRISB+0, 3
;Clock_Timer0.c,64 :: 		IOCB = 0x0E;
	MOVLW      14
	MOVWF      IOCB+0
;Clock_Timer0.c,65 :: 		RBIE_bit = 1;
	BSF        RBIE_bit+0, BitPos(RBIE_bit+0)
;Clock_Timer0.c,66 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Clock_Timer0.c,67 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;Clock_Timer0.c,68 :: 		}
L_end_InitIoC:
	RETURN
; end of _InitIoC

_printClock:

;Clock_Timer0.c,70 :: 		void printClock(){
;Clock_Timer0.c,71 :: 		clock[0] = (hour/10)%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _hour+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _clock+0
;Clock_Timer0.c,72 :: 		clock[1] = hour%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _hour+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _clock+1
;Clock_Timer0.c,74 :: 		clock[3] = (min/10)%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _min+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _clock+3
;Clock_Timer0.c,75 :: 		clock[4] = min%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _min+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _clock+4
;Clock_Timer0.c,77 :: 		clock[6] = (second/10)%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _second+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVLW      10
	MOVWF      R4+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _clock+6
;Clock_Timer0.c,78 :: 		clock[7] = second%10 + 48;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _second+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_U+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 0
	MOVWF      _clock+7
;Clock_Timer0.c,80 :: 		Lcd_Out(1,1, clock);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _clock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,82 :: 		switch(changePosition){
	GOTO       L_printClock13
;Clock_Timer0.c,83 :: 		case 0:
L_printClock15:
;Clock_Timer0.c,84 :: 		Lcd_Out(2,1, "         ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,85 :: 		break;
	GOTO       L_printClock14
;Clock_Timer0.c,86 :: 		case 1:
L_printClock16:
;Clock_Timer0.c,87 :: 		Lcd_Out(2,1, " ^       ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,88 :: 		break;
	GOTO       L_printClock14
;Clock_Timer0.c,89 :: 		case 2:
L_printClock17:
;Clock_Timer0.c,90 :: 		Lcd_Out(2,1, "    ^    ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,91 :: 		break;
	GOTO       L_printClock14
;Clock_Timer0.c,92 :: 		case 3:
L_printClock18:
;Clock_Timer0.c,93 :: 		Lcd_Out(2,1, "       ^ ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr7_Clock_Timer0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock_Timer0.c,94 :: 		break;
	GOTO       L_printClock14
;Clock_Timer0.c,96 :: 		}
L_printClock13:
	MOVF       _changePosition+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_printClock15
	MOVF       _changePosition+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_printClock16
	MOVF       _changePosition+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_printClock17
	MOVF       _changePosition+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_printClock18
L_printClock14:
;Clock_Timer0.c,98 :: 		}
L_end_printClock:
	RETURN
; end of _printClock

_ChangeTimeUp:

;Clock_Timer0.c,100 :: 		void ChangeTimeUp(uint8_t position){
;Clock_Timer0.c,101 :: 		switch(position){
	GOTO       L_ChangeTimeUp19
;Clock_Timer0.c,102 :: 		case 1:
L_ChangeTimeUp21:
;Clock_Timer0.c,103 :: 		if(hour < 24){
	MOVLW      24
	SUBWF      _hour+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ChangeTimeUp22
;Clock_Timer0.c,104 :: 		hour++ ;
	INCF       _hour+0, 1
;Clock_Timer0.c,105 :: 		}
	GOTO       L_ChangeTimeUp23
L_ChangeTimeUp22:
;Clock_Timer0.c,107 :: 		hour = 0;
	CLRF       _hour+0
;Clock_Timer0.c,108 :: 		}
L_ChangeTimeUp23:
;Clock_Timer0.c,109 :: 		break;
	GOTO       L_ChangeTimeUp20
;Clock_Timer0.c,110 :: 		case 2:
L_ChangeTimeUp24:
;Clock_Timer0.c,111 :: 		if(min < 60){
	MOVLW      60
	SUBWF      _min+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ChangeTimeUp25
;Clock_Timer0.c,112 :: 		min++ ;
	INCF       _min+0, 1
;Clock_Timer0.c,113 :: 		}
	GOTO       L_ChangeTimeUp26
L_ChangeTimeUp25:
;Clock_Timer0.c,115 :: 		min = 0;
	CLRF       _min+0
;Clock_Timer0.c,116 :: 		}
L_ChangeTimeUp26:
;Clock_Timer0.c,117 :: 		break;
	GOTO       L_ChangeTimeUp20
;Clock_Timer0.c,118 :: 		case 3:
L_ChangeTimeUp27:
;Clock_Timer0.c,119 :: 		if(second < 60){
	MOVLW      60
	SUBWF      _second+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ChangeTimeUp28
;Clock_Timer0.c,120 :: 		second++ ;
	INCF       _second+0, 1
;Clock_Timer0.c,121 :: 		}
	GOTO       L_ChangeTimeUp29
L_ChangeTimeUp28:
;Clock_Timer0.c,123 :: 		second = 0;
	CLRF       _second+0
;Clock_Timer0.c,124 :: 		}
L_ChangeTimeUp29:
;Clock_Timer0.c,125 :: 		break;
	GOTO       L_ChangeTimeUp20
;Clock_Timer0.c,126 :: 		default:
L_ChangeTimeUp30:
;Clock_Timer0.c,127 :: 		break;
	GOTO       L_ChangeTimeUp20
;Clock_Timer0.c,128 :: 		}
L_ChangeTimeUp19:
	MOVF       FARG_ChangeTimeUp_position+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_ChangeTimeUp21
	MOVF       FARG_ChangeTimeUp_position+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_ChangeTimeUp24
	MOVF       FARG_ChangeTimeUp_position+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_ChangeTimeUp27
	GOTO       L_ChangeTimeUp30
L_ChangeTimeUp20:
;Clock_Timer0.c,129 :: 		}
L_end_ChangeTimeUp:
	RETURN
; end of _ChangeTimeUp

_ChangeTimeDown:

;Clock_Timer0.c,131 :: 		void ChangeTimeDown(uint8_t position){
;Clock_Timer0.c,133 :: 		switch(position){
	GOTO       L_ChangeTimeDown31
;Clock_Timer0.c,134 :: 		case 1:
L_ChangeTimeDown33:
;Clock_Timer0.c,135 :: 		if(hour > 0){
	MOVF       _hour+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_ChangeTimeDown34
;Clock_Timer0.c,136 :: 		hour--;
	DECF       _hour+0, 1
;Clock_Timer0.c,137 :: 		}
	GOTO       L_ChangeTimeDown35
L_ChangeTimeDown34:
;Clock_Timer0.c,139 :: 		hour = 23;
	MOVLW      23
	MOVWF      _hour+0
;Clock_Timer0.c,140 :: 		}
L_ChangeTimeDown35:
;Clock_Timer0.c,141 :: 		break;
	GOTO       L_ChangeTimeDown32
;Clock_Timer0.c,142 :: 		case 2:
L_ChangeTimeDown36:
;Clock_Timer0.c,143 :: 		if(min > 0){
	MOVF       _min+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_ChangeTimeDown37
;Clock_Timer0.c,144 :: 		min--;
	DECF       _min+0, 1
;Clock_Timer0.c,145 :: 		}
	GOTO       L_ChangeTimeDown38
L_ChangeTimeDown37:
;Clock_Timer0.c,147 :: 		min = 59;
	MOVLW      59
	MOVWF      _min+0
;Clock_Timer0.c,148 :: 		}
L_ChangeTimeDown38:
;Clock_Timer0.c,149 :: 		break;
	GOTO       L_ChangeTimeDown32
;Clock_Timer0.c,150 :: 		case 3:
L_ChangeTimeDown39:
;Clock_Timer0.c,151 :: 		if(second > 0){
	MOVF       _second+0, 0
	SUBLW      0
	BTFSC      STATUS+0, 0
	GOTO       L_ChangeTimeDown40
;Clock_Timer0.c,152 :: 		second--;
	DECF       _second+0, 1
;Clock_Timer0.c,153 :: 		}
	GOTO       L_ChangeTimeDown41
L_ChangeTimeDown40:
;Clock_Timer0.c,155 :: 		second = 59;
	MOVLW      59
	MOVWF      _second+0
;Clock_Timer0.c,156 :: 		}
L_ChangeTimeDown41:
;Clock_Timer0.c,157 :: 		break;
	GOTO       L_ChangeTimeDown32
;Clock_Timer0.c,158 :: 		default:
L_ChangeTimeDown42:
;Clock_Timer0.c,159 :: 		break;
	GOTO       L_ChangeTimeDown32
;Clock_Timer0.c,160 :: 		}
L_ChangeTimeDown31:
	MOVF       FARG_ChangeTimeDown_position+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_ChangeTimeDown33
	MOVF       FARG_ChangeTimeDown_position+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_ChangeTimeDown36
	MOVF       FARG_ChangeTimeDown_position+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_ChangeTimeDown39
	GOTO       L_ChangeTimeDown42
L_ChangeTimeDown32:
;Clock_Timer0.c,161 :: 		}
L_end_ChangeTimeDown:
	RETURN
; end of _ChangeTimeDown

_Interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Clock_Timer0.c,163 :: 		void Interrupt(){
;Clock_Timer0.c,164 :: 		if (TMR0IF_bit){
	BTFSS      TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
	GOTO       L_Interrupt43
;Clock_Timer0.c,165 :: 		TMR0IF_bit = 0;
	BCF        TMR0IF_bit+0, BitPos(TMR0IF_bit+0)
;Clock_Timer0.c,166 :: 		TMR0 = 100;
	MOVLW      100
	MOVWF      TMR0+0
;Clock_Timer0.c,168 :: 		counter++;
	INCF       _counter+0, 1
;Clock_Timer0.c,169 :: 		if(counter < 50){
	MOVLW      50
	SUBWF      _counter+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Interrupt44
;Clock_Timer0.c,170 :: 		return;
	GOTO       L__Interrupt64
;Clock_Timer0.c,171 :: 		}
L_Interrupt44:
;Clock_Timer0.c,173 :: 		printToLCD = 1;
	MOVLW      1
	MOVWF      _printToLCD+0
;Clock_Timer0.c,175 :: 		counter = 0;
	CLRF       _counter+0
;Clock_Timer0.c,176 :: 		second++;
	INCF       _second+0, 1
;Clock_Timer0.c,177 :: 		if(second < 60){
	MOVLW      60
	SUBWF      _second+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Interrupt45
;Clock_Timer0.c,178 :: 		return;
	GOTO       L__Interrupt64
;Clock_Timer0.c,179 :: 		}
L_Interrupt45:
;Clock_Timer0.c,181 :: 		second = 0;
	CLRF       _second+0
;Clock_Timer0.c,182 :: 		min++;
	INCF       _min+0, 1
;Clock_Timer0.c,183 :: 		if(min < 60){
	MOVLW      60
	SUBWF      _min+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Interrupt46
;Clock_Timer0.c,184 :: 		return;
	GOTO       L__Interrupt64
;Clock_Timer0.c,185 :: 		}
L_Interrupt46:
;Clock_Timer0.c,187 :: 		min = 0;
	CLRF       _min+0
;Clock_Timer0.c,188 :: 		hour++;
	INCF       _hour+0, 1
;Clock_Timer0.c,189 :: 		if(hour < 24){
	MOVLW      24
	SUBWF      _hour+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Interrupt47
;Clock_Timer0.c,190 :: 		return;
	GOTO       L__Interrupt64
;Clock_Timer0.c,191 :: 		}
L_Interrupt47:
;Clock_Timer0.c,192 :: 		hour = 0;
	CLRF       _hour+0
;Clock_Timer0.c,194 :: 		}
L_Interrupt43:
;Clock_Timer0.c,196 :: 		if(RBIF_bit){
	BTFSS      RBIF_bit+0, BitPos(RBIF_bit+0)
	GOTO       L_Interrupt48
;Clock_Timer0.c,197 :: 		if(BTN_SWITCH == 0){
	BTFSC      PORTB+0, 1
	GOTO       L_Interrupt49
;Clock_Timer0.c,198 :: 		if(changePosition<3){
	MOVLW      3
	SUBWF      _changePosition+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_Interrupt50
;Clock_Timer0.c,199 :: 		changePosition++;
	INCF       _changePosition+0, 1
;Clock_Timer0.c,200 :: 		TMR0IE_bit = 0;
	BCF        TMR0IE_bit+0, BitPos(TMR0IE_bit+0)
;Clock_Timer0.c,201 :: 		}else {
	GOTO       L_Interrupt51
L_Interrupt50:
;Clock_Timer0.c,202 :: 		changePosition = 0;
	CLRF       _changePosition+0
;Clock_Timer0.c,203 :: 		TMR0IE_bit = 1;
	BSF        TMR0IE_bit+0, BitPos(TMR0IE_bit+0)
;Clock_Timer0.c,204 :: 		}
L_Interrupt51:
;Clock_Timer0.c,205 :: 		}
L_Interrupt49:
;Clock_Timer0.c,206 :: 		if(BTN_UP == 0){
	BTFSC      PORTB+0, 2
	GOTO       L_Interrupt52
;Clock_Timer0.c,207 :: 		ChangeTimeUp(changePosition);
	MOVF       _changePosition+0, 0
	MOVWF      FARG_ChangeTimeUp_position+0
	CALL       _ChangeTimeUp+0
;Clock_Timer0.c,208 :: 		}
L_Interrupt52:
;Clock_Timer0.c,209 :: 		if(BTN_DOWN == 0){
	BTFSC      PORTB+0, 3
	GOTO       L_Interrupt53
;Clock_Timer0.c,210 :: 		ChangeTimeDown(changePosition);
	MOVF       _changePosition+0, 0
	MOVWF      FARG_ChangeTimeDown_position+0
	CALL       _ChangeTimeDown+0
;Clock_Timer0.c,211 :: 		}
L_Interrupt53:
;Clock_Timer0.c,213 :: 		printToLCD = 1;
	MOVLW      1
	MOVWF      _printToLCD+0
;Clock_Timer0.c,214 :: 		RBIF_bit = 0;
	BCF        RBIF_bit+0, BitPos(RBIF_bit+0)
;Clock_Timer0.c,215 :: 		}
L_Interrupt48:
;Clock_Timer0.c,217 :: 		}
L_end_Interrupt:
L__Interrupt64:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _Interrupt

_main:

;Clock_Timer0.c,219 :: 		void main() {
;Clock_Timer0.c,220 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;Clock_Timer0.c,221 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,222 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock_Timer0.c,223 :: 		Welcomm();
	CALL       _Welcomm+0
;Clock_Timer0.c,224 :: 		InitTimer0();
	CALL       _InitTimer0+0
;Clock_Timer0.c,225 :: 		InitIoC();
	CALL       _InitIoC+0
;Clock_Timer0.c,226 :: 		printClock();
	CALL       _printClock+0
;Clock_Timer0.c,228 :: 		while(1){
L_main54:
;Clock_Timer0.c,229 :: 		if(printToLCD){
	MOVF       _printToLCD+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main56
;Clock_Timer0.c,230 :: 		printToLCD = 0;
	CLRF       _printToLCD+0
;Clock_Timer0.c,231 :: 		printClock();
	CALL       _printClock+0
;Clock_Timer0.c,232 :: 		}
L_main56:
;Clock_Timer0.c,233 :: 		}
	GOTO       L_main54
;Clock_Timer0.c,236 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
