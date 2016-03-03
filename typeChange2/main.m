//
//  main.m
//  typeChange2
//
//  Created by Mac on 16/2/25.
//  Copyright © 2016年 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       /*  //定义一个short类型变量
        short sValue=5;
        //表达式中的sValue将自动提升到int类型，因此下面表达式占用空间将输出4
        NSLog(@"%ld",sizeof(sValue-2));//4,表示4个字节
        //2.0为浮点数，下面计算结果也是浮点数
        double d=sValue/2.0;
        NSLog(@"%g",d);//2.5
        
        
        
        NSLog(@"7除以0.0的结果：%g",7/0.0);//正无穷：inf (Infinity)
        NSLog(@"-7除以0.0的结果：%g",-7/0.0);//负无穷：-inf (-Infinity)
        NSLog(@"7除以0的结果：%g",7/0);//出现警告，输出负无穷大
        
        
        NSLog(@"3对2取余的结果是：%d",3%2);//1
        // NSLog(@"3对2.0取余的结果是：%g",3%2.0); 编译报错，必须都为整数
        NSLog(@"3对0取余的结果是：%d",3%0);//警告，输出0
        
        double  a=1.2;
        double b=pow(a, 5);//求a的5次方，并计算结果
        NSLog(@"%g",b);//输出b的值 2.48832
        double c=sqrt(a);//求a的平方根
        NSLog(@"%g",c);//1.09545
        double d=arc4random()%10;//计算随机数，返回一个0~10之间的伪随机数
        NSLog(@"%g",d);
        double e=sin(1.57);
        
        //求1.57的sin函数值：1.57当成弧度值
        NSLog(@"%g",e);//1
    
        
        double x=-5.0;
        x=-x;//将x求负，值编程5.0
        
        int a;
        int b;
        int c;
        a=b=c=7;
        NSLog(@"%d,%d,%d",a,b,c);//7,7,7
        
        NSLog(@"97和'a'是否相等：%d",(97=='a'));//1 ，char本质还是整数类型
        
        
        
        int a=2;
        int b=3;
        int c=++a>2||(b--<1);
        // ||具有短路功能
        NSLog(@"%d,%d,%d",a,b,c);//3,3,1
        
        
        int a=2;
        a=(a*=3,5<8);//将逗号表达式的值赋给变量a,结果a的值位真（1）
        NSLog(@"%d",a);//1
        //对a连续赋值，最后a的值位9，整个逗号表达式返回9，x的值为9
        int x=(a=3,a=4,a=5,a=6,a=9);
        NSLog(@"a:%d,x:%d",a,x);//a:9,x:9
        
        
        int a=5;
        int b=5;
        a>b?NSLog(@"a大于b"):(a<b?NSLog(@"a小余b"):NSLog(@"a等于b"));//a等于b
        
        int i=0;//定义循环计数器
    start: //自定义标签
        NSLog(@"i:%d",i);
        i++;
        if(i<10){
            //如果i小余10，再次跳转到标签start
            goto start;
        }
        

        for (int i=0; i<5; i++) {//外循环
            for (int j=0; j<3; j++) {//内循环
                NSLog(@"i的值位：%d，j的值为：%d",i,j);
                if (j>=1) {
                    goto outer;//跳到outer标签处
                }
            }
        outer:;//标签后面的分号代表一条空语句
        }
   
        NSLog(@"循环结束");
    }
        */
        
        int len=5;
        //定义数组，不执行初始化，系统进行默认初始值
        int arr[len];
        //定义数组，指定长度，并进行初始化
        /*int arr2[len]={2,45,6,32,2}; 
           len报错:Variable-sized object may not be initialized
           可变大小的对象不能被初始化
         */
       
        int arr3[5]={2,45,6,32,2};
        //只指定前面3个元素的值，后面2个数组元素默认为0
        int arr4[5]={2,45,5};
        //使用花括号位指定位置进行赋值,其他的为默认值
        int arr41[10]={[1]=88,[5]=2,[2]=22};
        //数组长度为3
        int arr5[]={2,45,5};
        
        //定义长度位4的指针类型数组，所有的数组元素默认为空
        NSDate *arr6[4];
        //定义指针类型的数组，初始化，系统判断长度为4
        char *arr10[]={'h','a','o','z'};
        NSLog(@"%ld",sizeof(arr10));//32
        //编译正确,只会保留h,g,b,使用debug查看
        char *arr7[]={"haoren","goodMan","betterMan"};
        NSLog(@"%ld",sizeof(arr7));//24,
        // char *arr7[]={@"haoren",@"goodMan",@"betterMan"};//编译正确
        //定义长度为4的数组，后面元素位空
        NSString * arr8[4]={@"Objective-C",@"swift"};
        
        
        return 0;
}
}