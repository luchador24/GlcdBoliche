#line 1 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/GlcdBoliche/mikroC/GlcdBillar.c"
char GLCD_DataPort at PORTD;
 sbit GLCD_CS1 at RB0_bit;
 sbit GLCD_CS2 at RB1_bit;
 sbit GLCD_RS at RB2_bit;
 sbit GLCD_RW at RB3_bit;
 sbit GLCD_EN at RB4_bit;
 sbit GLCD_RST at RB5_bit;
 sbit GLCD_CS1_Direction at TRISB0_bit;
 sbit GLCD_CS2_Direction at TRISB1_bit;
 sbit GLCD_RS_Direction at TRISB2_bit;
 sbit GLCD_RW_Direction at TRISB3_bit;
 sbit GLCD_EN_Direction at TRISB4_bit;
 sbit GLCD_RST_Direction at TRISB5_bit;


int i;
int g;
int y=0, y1=0;
void main() {
ANSEL=0;
ANSELH=0;
TRISB=0;
TRISD=0;
Glcd_Init();
Glcd_Fill(0);

for(g=3; g>=1; g--){
if(g==3){
for(i=128; i>=113; i--){
 Glcd_Circle_Fill(30,25-y,5,1);
 Glcd_Circle_Fill(30,35,5,1);
 Glcd_Circle_Fill(30,45,5,1);
 Glcd_Circle_Fill(40,30,5,1);
 Glcd_Circle_Fill(40,40,5,1);

 Glcd_Circle_Fill(50,35,5,1);

 Glcd_Circle(89,35,5,1);

y1=y1+1;
Glcd_Rectangle(110-y1,32,i,37,1);
Glcd_Fill(0);
#line 46 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/GlcdBoliche/mikroC/GlcdBillar.c"
}
}


if(g==2){
for(i=128; i>=99; i--){
Glcd_Rectangle(110-y1,32,113,37,1);
Glcd_Circle(i-39,35,5,1);
Glcd_Fill(0);
#line 58 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/GlcdBoliche/mikroC/GlcdBillar.c"
}
}


if(g==1){
for(i=128; i>=122; i--){
Glcd_Fill(0);
Glcd_Rectangle(110-y1,32,113,37,1);
Glcd_Circle(60,35,5,1);
Glcd_Circle_Fill(i-98,25-y,5,1);
Glcd_Circle_Fill(30,35,5,1);
Glcd_Circle_Fill(i-98,45+y,5,1);
y=y+2;
Glcd_Circle_Fill(i-88,(i-98),5,1);
Glcd_Circle_Fill(i-88,(i-88)+y,5,1);

Glcd_Circle_Fill(50,35+y,5,1);
}
}}
#line 108 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/GlcdBoliche/mikroC/GlcdBillar.c"
}
