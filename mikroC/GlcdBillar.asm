
_main:

;GlcdBillar.c,19 :: 		void main() {
;GlcdBillar.c,20 :: 		ANSEL=0;
	CLRF       ANSEL+0
;GlcdBillar.c,21 :: 		ANSELH=0;
	CLRF       ANSELH+0
;GlcdBillar.c,22 :: 		TRISB=0;
	CLRF       TRISB+0
;GlcdBillar.c,23 :: 		TRISD=0;
	CLRF       TRISD+0
;GlcdBillar.c,24 :: 		Glcd_Init();
	CALL       _Glcd_Init+0
;GlcdBillar.c,25 :: 		Glcd_Fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GlcdBillar.c,27 :: 		for(g=3; g>=1; g--){
	MOVLW      3
	MOVWF      _g+0
	MOVLW      0
	MOVWF      _g+1
L_main0:
	MOVLW      128
	XORWF      _g+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      1
	SUBWF      _g+0, 0
L__main16:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;GlcdBillar.c,28 :: 		if(g==3){
	MOVLW      0
	XORWF      _g+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      3
	XORWF      _g+0, 0
L__main17:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;GlcdBillar.c,29 :: 		for(i=128; i>=113; i--){
	MOVLW      128
	MOVWF      _i+0
	CLRF       _i+1
L_main4:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      113
	SUBWF      _i+0, 0
L__main18:
	BTFSS      STATUS+0, 0
	GOTO       L_main5
;GlcdBillar.c,30 :: 		Glcd_Circle_Fill(30,25-y,5,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVF       _y+0, 0
	SUBLW      25
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVF       _y+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       FARG_Glcd_Circle_Fill_y_center+1
	SUBWF      FARG_Glcd_Circle_Fill_y_center+1, 1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,31 :: 		Glcd_Circle_Fill(30,35,5,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      35
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,32 :: 		Glcd_Circle_Fill(30,45,5,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      45
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,33 :: 		Glcd_Circle_Fill(40,30,5,1);
	MOVLW      40
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,34 :: 		Glcd_Circle_Fill(40,40,5,1);
	MOVLW      40
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      40
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,36 :: 		Glcd_Circle_Fill(50,35,5,1);
	MOVLW      50
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      35
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,38 :: 		Glcd_Circle(89,35,5,1);
	MOVLW      89
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      35
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;GlcdBillar.c,40 :: 		y1=y1+1;
	INCF       _y1+0, 1
	BTFSC      STATUS+0, 2
	INCF       _y1+1, 1
;GlcdBillar.c,41 :: 		Glcd_Rectangle(110-y1,32,i,37,1);
	MOVF       _y1+0, 0
	SUBLW      110
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      32
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVF       _i+0, 0
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      37
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GlcdBillar.c,42 :: 		Glcd_Fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GlcdBillar.c,29 :: 		for(i=128; i>=113; i--){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;GlcdBillar.c,46 :: 		}
	GOTO       L_main4
L_main5:
;GlcdBillar.c,47 :: 		}
L_main3:
;GlcdBillar.c,50 :: 		if(g==2){
	MOVLW      0
	XORWF      _g+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main19
	MOVLW      2
	XORWF      _g+0, 0
L__main19:
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;GlcdBillar.c,51 :: 		for(i=128; i>=99; i--){
	MOVLW      128
	MOVWF      _i+0
	CLRF       _i+1
L_main8:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main20
	MOVLW      99
	SUBWF      _i+0, 0
L__main20:
	BTFSS      STATUS+0, 0
	GOTO       L_main9
;GlcdBillar.c,52 :: 		Glcd_Rectangle(110-y1,32,113,37,1);
	MOVF       _y1+0, 0
	SUBLW      110
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      32
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      113
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      37
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GlcdBillar.c,53 :: 		Glcd_Circle(i-39,35,5,1);
	MOVLW      39
	SUBWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      35
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;GlcdBillar.c,54 :: 		Glcd_Fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GlcdBillar.c,51 :: 		for(i=128; i>=99; i--){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;GlcdBillar.c,58 :: 		}
	GOTO       L_main8
L_main9:
;GlcdBillar.c,59 :: 		}
L_main7:
;GlcdBillar.c,62 :: 		if(g==1){
	MOVLW      0
	XORWF      _g+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVLW      1
	XORWF      _g+0, 0
L__main21:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;GlcdBillar.c,63 :: 		for(i=128; i>=122; i--){
	MOVLW      128
	MOVWF      _i+0
	CLRF       _i+1
L_main12:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVLW      122
	SUBWF      _i+0, 0
L__main22:
	BTFSS      STATUS+0, 0
	GOTO       L_main13
;GlcdBillar.c,64 :: 		Glcd_Fill(0);
	CLRF       FARG_Glcd_Fill_pattern+0
	CALL       _Glcd_Fill+0
;GlcdBillar.c,65 :: 		Glcd_Rectangle(110-y1,32,113,37,1);
	MOVF       _y1+0, 0
	SUBLW      110
	MOVWF      FARG_Glcd_Rectangle_x_upper_left+0
	MOVLW      32
	MOVWF      FARG_Glcd_Rectangle_y_upper_left+0
	MOVLW      113
	MOVWF      FARG_Glcd_Rectangle_x_bottom_right+0
	MOVLW      37
	MOVWF      FARG_Glcd_Rectangle_y_bottom_right+0
	MOVLW      1
	MOVWF      FARG_Glcd_Rectangle_color+0
	CALL       _Glcd_Rectangle+0
;GlcdBillar.c,66 :: 		Glcd_Circle(60,35,5,1);
	MOVLW      60
	MOVWF      FARG_Glcd_Circle_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_x_center+1
	MOVLW      35
	MOVWF      FARG_Glcd_Circle_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_color+0
	CALL       _Glcd_Circle+0
;GlcdBillar.c,67 :: 		Glcd_Circle_Fill(i-98,25-y,5,1);
	MOVLW      98
	SUBWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVF       _y+0, 0
	SUBLW      25
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVF       _y+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       FARG_Glcd_Circle_Fill_y_center+1
	SUBWF      FARG_Glcd_Circle_Fill_y_center+1, 1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,68 :: 		Glcd_Circle_Fill(30,35,5,1);
	MOVLW      30
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      35
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,69 :: 		Glcd_Circle_Fill(i-98,45+y,5,1);
	MOVLW      98
	SUBWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVF       _y+0, 0
	ADDLW      45
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _y+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,70 :: 		y=y+2;
	MOVLW      2
	ADDWF      _y+0, 1
	BTFSC      STATUS+0, 0
	INCF       _y+1, 1
;GlcdBillar.c,71 :: 		Glcd_Circle_Fill(i-88,(i-98),5,1);
	MOVLW      88
	SUBWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVLW      98
	SUBWF      _i+0, 0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,72 :: 		Glcd_Circle_Fill(i-88,(i-88)+y,5,1);
	MOVLW      88
	SUBWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      _i+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVF       R0+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVF       _y+0, 0
	ADDWF      R0+0, 0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _y+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,74 :: 		Glcd_Circle_Fill(50,35+y,5,1);
	MOVLW      50
	MOVWF      FARG_Glcd_Circle_Fill_x_center+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_x_center+1
	MOVF       _y+0, 0
	ADDLW      35
	MOVWF      FARG_Glcd_Circle_Fill_y_center+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _y+1, 0
	MOVWF      FARG_Glcd_Circle_Fill_y_center+1
	MOVLW      5
	MOVWF      FARG_Glcd_Circle_Fill_radius+0
	MOVLW      0
	MOVWF      FARG_Glcd_Circle_Fill_radius+1
	MOVLW      1
	MOVWF      FARG_Glcd_Circle_Fill_color+0
	CALL       _Glcd_Circle_Fill+0
;GlcdBillar.c,63 :: 		for(i=128; i>=122; i--){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;GlcdBillar.c,75 :: 		}
	GOTO       L_main12
L_main13:
;GlcdBillar.c,76 :: 		}}
L_main11:
;GlcdBillar.c,27 :: 		for(g=3; g>=1; g--){
	MOVLW      1
	SUBWF      _g+0, 1
	BTFSS      STATUS+0, 0
	DECF       _g+1, 1
;GlcdBillar.c,76 :: 		}}
	GOTO       L_main0
L_main1:
;GlcdBillar.c,108 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
