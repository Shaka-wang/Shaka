//功能:ADC0809模块测试，读取IN3口的模拟电
//编译环境: KEIL UVISION2
//单片机晶振：12M  单片机型号AT89S52
//单片机晶振: 无特殊要求
//作者：兴向荣电子元件店
//日期：2013.06.20
//功能：

#include <reg52.h>
#include <intrins.h>

#define uchar unsigned char
#define uint  unsigned int


// adc0809模块接线
#define uchar unsigned char 
sbit STR=P1^0; //单片机P1.0接模块STR引脚, 启动转换信号
sbit EOC=P1^1; //单片机P1.1接模块EOC， 转换结束信号，高电平有效
sbit OE=P1^2; //单片机P1.2接模块OE,输出允许信号，高电平有效
sbit CLK=P1^3; //单片机P1.3接CLK ，ADC0809时钟,输入50-800KHZ的频率
               //一般选用500K
#define adc0809_data  P3// ADC0809模块的D0-D7分别接P3.0-P3.7
/*地址选择 A 接H  
           B 接H
           C 接L
选择通到IN3，当然也可以通过软件设置地址
     REF+ 接VCC
     REF- 接GND
这样 AD=256*(VIN-(VREF-))/(VREF+)-(VREF-)
     (VREF+)=5V；
     （VREF-)=0V;
     AD=256*VIN/5
所以IN3口的电压VIN=AD*5/256;
*/
uchar AD_DATA[1]; //保存IN0通道转换后的数据
uint  addata2;
//==============LCD1602接口连接方法=====================
/*-----------------------------------------------------
       |DB0-----P0.0 | DB4-----P0.4 | RW-------P2.3    |
       |DB1-----P0.1 | DB5-----P0.5 | RS-------P2.4    |
       |DB2-----P0.2 | DB6-----P0.6 | E--------P2.2    |
       |DB3-----P0.3 | DB7-----P0.7 | 
    ---------------------------------------------------*/
//================================================*/              
#define LCM_Data     P0    //LCD1602数据接口
#define Busy         0x80   //用于检测LCM状态字中的Busy标识
sbit    LCM_RW     = P2^3;  //读写控制输入端，LCD1602的第五脚
sbit    LCM_RS     = P2^4;  //寄存器选择输入端，LCD1602的第四脚
sbit    LCM_E      = P2^2;  //使能信号输入端,LCD1602的第6脚





//**************函数声明***************************************
void    WriteDataLCM		(uchar WDLCM);//LCD模块写数据
void    WriteCommandLCM	(uchar WCLCM,BuysC); //LCD模块写指令
uchar   ReadStatusLCM(void);//读LCD模块的忙标
void    DisplayOneChar(uchar X,uchar Y,uchar ASCII);//在第X+1行的第Y+1位置显示一个字符
void    LCMInit(void);//LCD初始
void    delayms(uint ms);//1MS基准延时程序
void    delay(uchar i); //延时函数2
void    DisplayListChar(uchar X,uchar Y,uchar delayms, uchar code *DData);
void   judge_xianshi(void);//显示处理程序

void init();//系统初始化设置
void AD();//读取AD数据

uchar flag1;
//***********************主程序******************************
main()   
{   
   init();//系统初始化设置
   LCMInit();
   while(1)
   {
       AD();
       judge_xianshi();
       delayms(100);
       
   }

}
/*********
系统初始化
***********/ 
void init() 
{  
  EA=1; //开总中断
  TMOD=0x02; //设定定时器 T0工作方式
  TH0=216; //利用T0中断产生CLK信号
  TL0=216;  
  TR0=1; //启动定时器T0 
  ET0=1; 
  STR=0; 
  OE=0; 
 
}  
void   judge_xianshi()
{
  addata2=AD_DATA[0]*100;//把数据扩大100，为下面求取小数位后2位做准备
  DisplayListChar(0,1,0, "xingxiangrong");//在液晶的第一行显示字符"XINGXIANGR"
  DisplayListChar(1,0,0, "AD="); //在液晶的第二行第0位开始显示"AD="
  DisplayOneChar( 1, 3, AD_DATA[0]/100+0x30); //显示AD数据的百位
  DisplayOneChar( 1, 4, AD_DATA[0]/10%10+0x30);//显示AD数据的十位
  DisplayOneChar( 1, 5, AD_DATA[0]%10+0x30);//显示AD数据的各位
  DisplayListChar(1,7,0, "Vin="); //在液晶的第二行第8位开始显示"Vin="
//根据VIN=AD*5/256，求取IN3通到输入的电压
  DisplayOneChar( 1, 11, AD_DATA[0]/51+0x30);//显示输入电压的整数位
  DisplayListChar(1,12,0, ".");//显示小数点
  DisplayOneChar( 1, 13, addata2/51/10%10+0x30);//显示输入电压小数后1位
  DisplayOneChar( 1, 14, addata2/51%10+0x30);//显示输入电压小树后2位
  DisplayListChar(1,15,0, "V");
}
/***********AD
转换函数
**********/ 
void AD() 
{ 
   STR=0; 
   //ADDR这样如果不是通道0，可以在这边加一条其他地址的程序 
   delay(10);  
   STR=1; //启动AD转换
   delay(10); 
   STR=0;  
   while(0==EOC);//等待转换结束 
   OE=1;  
   AD_DATA[0]=adc0809_data; //读取AD数据，数据范围为0-255
   OE=0;  
} 
/***********T0
中断服务程序
************/ 
void t0(void) interrupt 1 using 0 
{  
   CLK=~CLK; 
}  
/*====================================================================  
  按指定位置显示一串字符:第 X 行,第 y列
  注意:字符串不能长于16个字符
======================================================================*/
void DisplayListChar(uchar X,uchar Y,uchar ms, uchar code *DData)
{
 unsigned char ListLength;

 ListLength = 0;

 X &= 0x1;
 Y &= 0xF; //限制X不能大于15，Y不能大于1
 while (DData[ListLength]!='\0') //若到达字串尾则退出
  { 
     if (Y <= 0xF) //X坐标应小于0xF
     {
        DisplayOneChar(X, Y, DData[ListLength]); //显示单个字符
        ListLength++;
        Y++;
	    delayms(ms);//延时显示字符串
     }
     else
	    break;//跳出循环体
  }
}
/*======================================================================
 LCM初始化
======================================================================*/
void LCMInit(void) 
{
 LCM_Data = 0;
 WriteCommandLCM(0x38,0); //三次显示模式设置，不检测忙信号
 delayms(5);
 WriteCommandLCM(0x38,0);
 delayms(5);
 WriteCommandLCM(0x38,0);
 delayms(5);
 WriteCommandLCM(0x38,1); //显示模式设置,开始要求每次检测忙信号
 WriteCommandLCM(0x08,1); //关闭显示
 WriteCommandLCM(0x01,1); //显示清屏
 WriteCommandLCM(0x06,1); // 显示光标移动设置
 WriteCommandLCM(0x0C,1); // 显示开及光标设置
 delayms(100);
}
//==============================LCD1602显示子程序================================================
// 写数据函数: E =高脉冲 RS=1 RW=0
//======================================================================*/
void WriteDataLCM(uchar WDLCM)
{
 ReadStatusLCM(); //检测忙
 LCM_Data = WDLCM;
 LCM_RS = 1;
 LCM_RW = 0;
 LCM_E = 0; //若晶振速度太高可以在这后加小的延时
 LCM_E = 0; //延时
 LCM_E = 1;
}
/*====================================================================
  写指令函数: E=高脉冲 RS=0 RW=0
======================================================================*/
void WriteCommandLCM(uchar WCLCM,BuysC) //BuysC为0时忽略忙检测
{
 if (BuysC) ReadStatusLCM(); //根据需要检测忙
 LCM_Data = WCLCM;
 LCM_RS = 0;
 LCM_RW = 0;
 LCM_E = 0;
 LCM_E = 0;
 LCM_E = 1;
}
/*====================================================================
  正常读写操作之前必须检测LCD控制器状态:E=1 RS=0 RW=1;
  DB7: 0 LCD控制器空闲，1 LCD控制器忙。
  读状态
======================================================================*/
uchar ReadStatusLCM(void)
{
 LCM_Data = 0xFF;
 LCM_RS = 0;
 LCM_RW = 1;
 LCM_E = 0;
 LCM_E = 0;
 LCM_E = 1;
 while (LCM_Data & Busy); //检测忙信号  
 return(LCM_Data);
}
/*======================================================================
功 能:     在1602 指定位置显示一个字符:第一行位置0~15,第二行16~31
说 明:     第 X 行,第 y 列  注意:字符串不能长于16个字符
======================================================================*/
void DisplayOneChar( uchar X, uchar Y, uchar ASCII)
{
  X &= 0x1;
  Y &= 0xF; //限制Y不能大于15，X不能大于1
  if (X) Y |= 0x40; //当要显示第二行时地址码+0x40;
  Y |= 0x80; // 算出指令码
  WriteCommandLCM(Y, 0); //这里不检测忙信号，发送地址码
  WriteDataLCM(ASCII);
}
/*====================================================================
  设定延时时间:x*1ms
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
延时函数
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

