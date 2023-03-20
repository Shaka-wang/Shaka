//����:ADC0809ģ����ԣ���ȡIN3�ڵ�ģ���
//���뻷��: KEIL UVISION2
//��Ƭ������12M  ��Ƭ���ͺ�AT89S52
//��Ƭ������: ������Ҫ��
//���ߣ������ٵ���Ԫ����
//���ڣ�2013.06.20
//���ܣ�

#include <reg52.h>
#include <intrins.h>

#define uchar unsigned char
#define uint  unsigned int


// adc0809ģ�����
#define uchar unsigned char 
sbit STR=P1^0; //��Ƭ��P1.0��ģ��STR����, ����ת���ź�
sbit EOC=P1^1; //��Ƭ��P1.1��ģ��EOC�� ת�������źţ��ߵ�ƽ��Ч
sbit OE=P1^2; //��Ƭ��P1.2��ģ��OE,��������źţ��ߵ�ƽ��Ч
sbit CLK=P1^3; //��Ƭ��P1.3��CLK ��ADC0809ʱ��,����50-800KHZ��Ƶ��
               //һ��ѡ��500K
#define adc0809_data  P3// ADC0809ģ���D0-D7�ֱ��P3.0-P3.7
/*��ַѡ�� A ��H  
           B ��H
           C ��L
ѡ��ͨ��IN3����ȻҲ����ͨ��������õ�ַ
     REF+ ��VCC
     REF- ��GND
���� AD=256*(VIN-(VREF-))/(VREF+)-(VREF-)
     (VREF+)=5V��
     ��VREF-)=0V;
     AD=256*VIN/5
����IN3�ڵĵ�ѹVIN=AD*5/256;
*/
uchar AD_DATA[1]; //����IN0ͨ��ת���������
uint  addata2;
//==============LCD1602�ӿ����ӷ���=====================
/*-----------------------------------------------------
       |DB0-----P0.0 | DB4-----P0.4 | RW-------P2.3    |
       |DB1-----P0.1 | DB5-----P0.5 | RS-------P2.4    |
       |DB2-----P0.2 | DB6-----P0.6 | E--------P2.2    |
       |DB3-----P0.3 | DB7-----P0.7 | 
    ---------------------------------------------------*/
//================================================*/              
#define LCM_Data     P0    //LCD1602���ݽӿ�
#define Busy         0x80   //���ڼ��LCM״̬���е�Busy��ʶ
sbit    LCM_RW     = P2^3;  //��д��������ˣ�LCD1602�ĵ����
sbit    LCM_RS     = P2^4;  //�Ĵ���ѡ������ˣ�LCD1602�ĵ��Ľ�
sbit    LCM_E      = P2^2;  //ʹ���ź������,LCD1602�ĵ�6��





//**************��������***************************************
void    WriteDataLCM		(uchar WDLCM);//LCDģ��д����
void    WriteCommandLCM	(uchar WCLCM,BuysC); //LCDģ��дָ��
uchar   ReadStatusLCM(void);//��LCDģ���æ��
void    DisplayOneChar(uchar X,uchar Y,uchar ASCII);//�ڵ�X+1�еĵ�Y+1λ����ʾһ���ַ�
void    LCMInit(void);//LCD��ʼ
void    delayms(uint ms);//1MS��׼��ʱ����
void    delay(uchar i); //��ʱ����2
void    DisplayListChar(uchar X,uchar Y,uchar delayms, uchar code *DData);
void   judge_xianshi(void);//��ʾ�������

void init();//ϵͳ��ʼ������
void AD();//��ȡAD����

uchar flag1;
//***********************������******************************
main()   
{   
   init();//ϵͳ��ʼ������
   LCMInit();
   while(1)
   {
       AD();
       judge_xianshi();
       delayms(100);
       
   }

}
/*********
ϵͳ��ʼ��
***********/ 
void init() 
{  
  EA=1; //�����ж�
  TMOD=0x02; //�趨��ʱ�� T0������ʽ
  TH0=216; //����T0�жϲ���CLK�ź�
  TL0=216;  
  TR0=1; //������ʱ��T0 
  ET0=1; 
  STR=0; 
  OE=0; 
 
}  
void   judge_xianshi()
{
  addata2=AD_DATA[0]*100;//����������100��Ϊ������ȡС��λ��2λ��׼��
  DisplayListChar(0,1,0, "xingxiangrong");//��Һ���ĵ�һ����ʾ�ַ�"XINGXIANGR"
  DisplayListChar(1,0,0, "AD="); //��Һ���ĵڶ��е�0λ��ʼ��ʾ"AD="
  DisplayOneChar( 1, 3, AD_DATA[0]/100+0x30); //��ʾAD���ݵİ�λ
  DisplayOneChar( 1, 4, AD_DATA[0]/10%10+0x30);//��ʾAD���ݵ�ʮλ
  DisplayOneChar( 1, 5, AD_DATA[0]%10+0x30);//��ʾAD���ݵĸ�λ
  DisplayListChar(1,7,0, "Vin="); //��Һ���ĵڶ��е�8λ��ʼ��ʾ"Vin="
//����VIN=AD*5/256����ȡIN3ͨ������ĵ�ѹ
  DisplayOneChar( 1, 11, AD_DATA[0]/51+0x30);//��ʾ�����ѹ������λ
  DisplayListChar(1,12,0, ".");//��ʾС����
  DisplayOneChar( 1, 13, addata2/51/10%10+0x30);//��ʾ�����ѹС����1λ
  DisplayOneChar( 1, 14, addata2/51%10+0x30);//��ʾ�����ѹС����2λ
  DisplayListChar(1,15,0, "V");
}
/***********AD
ת������
**********/ 
void AD() 
{ 
   STR=0; 
   //ADDR�����������ͨ��0����������߼�һ��������ַ�ĳ��� 
   delay(10);  
   STR=1; //����ADת��
   delay(10); 
   STR=0;  
   while(0==EOC);//�ȴ�ת������ 
   OE=1;  
   AD_DATA[0]=adc0809_data; //��ȡAD���ݣ����ݷ�ΧΪ0-255
   OE=0;  
} 
/***********T0
�жϷ������
************/ 
void t0(void) interrupt 1 using 0 
{  
   CLK=~CLK; 
}  
/*====================================================================  
  ��ָ��λ����ʾһ���ַ�:�� X ��,�� y��
  ע��:�ַ������ܳ���16���ַ�
======================================================================*/
void DisplayListChar(uchar X,uchar Y,uchar ms, uchar code *DData)
{
 unsigned char ListLength;

 ListLength = 0;

 X &= 0x1;
 Y &= 0xF; //����X���ܴ���15��Y���ܴ���1
 while (DData[ListLength]!='\0') //�������ִ�β���˳�
  { 
     if (Y <= 0xF) //X����ӦС��0xF
     {
        DisplayOneChar(X, Y, DData[ListLength]); //��ʾ�����ַ�
        ListLength++;
        Y++;
	    delayms(ms);//��ʱ��ʾ�ַ���
     }
     else
	    break;//����ѭ����
  }
}
/*======================================================================
 LCM��ʼ��
======================================================================*/
void LCMInit(void) 
{
 LCM_Data = 0;
 WriteCommandLCM(0x38,0); //������ʾģʽ���ã������æ�ź�
 delayms(5);
 WriteCommandLCM(0x38,0);
 delayms(5);
 WriteCommandLCM(0x38,0);
 delayms(5);
 WriteCommandLCM(0x38,1); //��ʾģʽ����,��ʼҪ��ÿ�μ��æ�ź�
 WriteCommandLCM(0x08,1); //�ر���ʾ
 WriteCommandLCM(0x01,1); //��ʾ����
 WriteCommandLCM(0x06,1); // ��ʾ����ƶ�����
 WriteCommandLCM(0x0C,1); // ��ʾ�����������
 delayms(100);
}
//==============================LCD1602��ʾ�ӳ���================================================
// д���ݺ���: E =������ RS=1 RW=0
//======================================================================*/
void WriteDataLCM(uchar WDLCM)
{
 ReadStatusLCM(); //���æ
 LCM_Data = WDLCM;
 LCM_RS = 1;
 LCM_RW = 0;
 LCM_E = 0; //�������ٶ�̫�߿���������С����ʱ
 LCM_E = 0; //��ʱ
 LCM_E = 1;
}
/*====================================================================
  дָ���: E=������ RS=0 RW=0
======================================================================*/
void WriteCommandLCM(uchar WCLCM,BuysC) //BuysCΪ0ʱ����æ���
{
 if (BuysC) ReadStatusLCM(); //������Ҫ���æ
 LCM_Data = WCLCM;
 LCM_RS = 0;
 LCM_RW = 0;
 LCM_E = 0;
 LCM_E = 0;
 LCM_E = 1;
}
/*====================================================================
  ������д����֮ǰ������LCD������״̬:E=1 RS=0 RW=1;
  DB7: 0 LCD���������У�1 LCD������æ��
  ��״̬
======================================================================*/
uchar ReadStatusLCM(void)
{
 LCM_Data = 0xFF;
 LCM_RS = 0;
 LCM_RW = 1;
 LCM_E = 0;
 LCM_E = 0;
 LCM_E = 1;
 while (LCM_Data & Busy); //���æ�ź�  
 return(LCM_Data);
}
/*======================================================================
�� ��:     ��1602 ָ��λ����ʾһ���ַ�:��һ��λ��0~15,�ڶ���16~31
˵ ��:     �� X ��,�� y ��  ע��:�ַ������ܳ���16���ַ�
======================================================================*/
void DisplayOneChar( uchar X, uchar Y, uchar ASCII)
{
  X &= 0x1;
  Y &= 0xF; //����Y���ܴ���15��X���ܴ���1
  if (X) Y |= 0x40; //��Ҫ��ʾ�ڶ���ʱ��ַ��+0x40;
  Y |= 0x80; // ���ָ����
  WriteCommandLCM(Y, 0); //���ﲻ���æ�źţ����͵�ַ��
  WriteDataLCM(ASCII);
}
/*====================================================================
  �趨��ʱʱ��:x*1ms
====================================================================*/
void delayms(uint Ms)
{
  uint i,TempCyc;
  for(i=0;i<Ms;i++)
  {
    TempCyc =70;
    while(TempCyc--);
  }
}
/**********
��ʱ����
************/ 
void delay(uchar i) 
{ 
uchar j; 
while(i--) 
{  
for(j=125;j>0;j--) 
; 
} 
}  

