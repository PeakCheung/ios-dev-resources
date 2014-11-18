> Objective-C knowledge

<br>

### SDK

	说明：它的全称是Software Development Kit，即软件开发工具包。

<br>

### 代码编译步骤
===

在C,C++或Objective-C中，代码文件的编译步骤：

1. 预处理器读入并处理整个文件
2. 将预处理器的输出结果作为输入交给编译器

<br>

### 预处理指令
===

**1. 什么是预处理指令**

	说明：预处理指令都以 # 开头，最常用的三个为 #include、#import 和 #define 。
	
**2. #define**

	说明：即可用于“定义常量“，也可用于“构建宏（类似函数的代码段）”。
	
	例子：
		// 定义常量
		#define PI 3.1415926
		
		// 构建宏
		#define MAX(A,B) ((A) > (B) ? (A) : (B))
	
**3. #include 与 #import**

	说明：两者的作用都是“先要求预处理器读取某个文件，然后将输入的内容添加至输出结果”。
	
	区别：
		* #include -- 允许多次导入同一个文件
		* #import -- 会确保同一个文件只被导入一次
	
**4. #import <xx.h> 与 #import "xx.h"**

	区别：
		* #import <xx.h> -- 编译器会先在预先设定好的标准目录下查找相应的声明文件（.h文件）。
		* #import "xx.h" -- 编译器会先在项目目录下查找相应的声明文件。

<br>

### 关键字
===

**const**

	说明：它表示在程序的整个运行过程中，xx指针的值不会发生变化。
	
	例子：const *xx
	
**extern**

	说明：它表示 xx 是存在的，但是会在另一个文件中定义。
	
	例子：
	
		// xx.h
		extern NSString const *xx;
		
		// xx.m（另一个文件）
		NSString const *xx = @"haha";
		
**typedef**

	说明：它是C语言语句，用来为已有数据类型取别名，以达到简化编程的目的。
	
	语法：typedef type name;
	
	例子：typedef int UINT;
		 UINT a = 1;
		
<br>

### 所有权修饰符
===

**__strong**

**__weak**

	说明：(1) 若附有 __weak 修饰符的变量所引用的对象被废弃，则该变量的值会变为 nil。
	
		 (2) 使用附有 __weak 修饰符的变量，就是使用注册到 autoreleasepool 中的对象。
		  
		 原因：因为 __weak 修饰符只持有对象的弱引用，在访问对象的过程中，对象有可能被废弃。如果把要访问的对象
		      注册到 autoreleasepool 中，那么在 @autoreleasepool 块结束之前都能确保对象存在。因此使用附
		      有 __weak 修饰符的变量时，就是使用注册到 autoreleasepool 中的对象。
		      
		 (3) 对于所有使用 allowsWeakReference 方法返回 NO 的类，都绝对不能使用 __weak 修饰符。
		 
		 (4) 在使用 __weak 修饰符的变量时，当被赋值对象的 retainWeakReference 方法返回 NO 的情况下，该变
		     量将使用 nil。

**__autoreleasing**
		
<br>

### Block
===

**简介**

	说明：它是带有自动变量值的匿名函数（相当于javascript中的匿名函数）。
	
**声明一个Block**

	语法：^ [返回值类型] [参数列表] 表达式
	
	说明：[返回值类型] 与 [参数列表] 是可选的，当省略返回值类型时，若表达式中有return语句就使用该返回值类型
	    （如有多个return语句，则所有return的返回值必须相同），否则就使用 void 类型。
	
	例子：// 完整版
		 ^int (int num) {
			return num + 1;
		 }
		 
		 // 省略返回值类型（与完整版等价）
		 ^(int num) {
		 	return num + 1;
		 }
		 
**声明Block类型变量**

	语法：变量类型  (^变量名)(Block参数类型);
	
	例子：int (^blk)(int) = ^(int num) {return num + 1;};

**Block及Block类型变量的应用**

	(1) 使用Block类型变量向函数传递Block
	
	例子：void func(int (^blk)(int)) {...}
		 
	(2) 在函数返回值中指定Block类型
	
	例子：int (^func())(int) {
			return ^(int num) {return num + 1;};
		 }
		 
	(3) 借助 typedef 简化上述应用方式
	
	例子：typedef int (^blk_t)(int);
		 blk_t blk = ^(int num) {return num + 1;};
		 void func(blk_t blk) {...} // 作为函数参数
		 blk_t func() { return ^(int num) {return num + 1;}; } // 作为函数返回值

**Block对自动变量值的截获**

	说明：在执行Block语法的瞬间，会保存被引用到的变量值。
	
	例子：
    
    	{
        	int num = 24;
        	typedef void (^blk_t)(void);
        	blk_t blk = ^{NSLog(@"%d", num);}; // 会保存变量num的值
        	num = 30; // 改写num的值
        	blk(); // 输出 24
    	}
		 
**__block说明符**

	说明：被Block引用的变量，默认是不能对其赋值的（会报错），但通过在目标变量声明前附加 __block 说明符，则可以
	     进行赋值。

	例子：
	
    	{
        	__block int num = 24;
        	typedef void (^blk_t)(void);
        	blk_t blk = ^{
        		num = 30; // 重新赋值
        		NSLog(@"%d", num);
        	}; // 会保存变量num的值
        	blk(); // 输出 30
    	}
    	
**Block存储域**

	说明：Block也是Objective-C对象，它对应着三个类：_NSConcreteStackBlock，_NSConcreteGlobalBlock，
	     _NSConcreteMallocBlock，由这三个类所生成的Block实例对象，分别存储在不同的存储域：
	     
	     * _NSConcreteStackBlock -- 栈
	     * _NSConcreteGlobalBlock -- 程序的数据区域
	     * _NSConcreteMallocBlock -- 堆
	     
		 在ARC开启的情况下，
		 
		 * 若Block内未引用任何变量，或Block内只引用了全局变量、静态全局变量、静态局部变量，或在全局的地方使用
		   Block，则会将Block对象存储在“程序的数据区域”：
		   
		   		// 例：Block内未引用任何变量
		   		typedef void (^blk)(void);
		   		blk blk_a = ^{NSLog(@"%d", 1);};
		   		NSLog(@"%@", blk_a); // 输出 <__NSGlobalBlock__: 0x10f0f80e0>
		   		
		   		// 例：Block内引用了全局变量，静态全局变量和静态局部变量
		   		int a = 1; // 全局变量
				static int b = 2; // 静态全局变量
				int main(int argc, char * argv[]) {
    				@autoreleasepool {
    				    static int c = 3; // 静态局部变量
            			typedef void (^blk)(void);
            			blk obj_a = ^{NSLog(@"%d", a);};
            			blk obj_b = ^{NSLog(@"%d", b);};
            			blk obj_c = ^{NSLog(@"%d", c);};
            			NSLog(@"%@", obj_a); // 输出 <__NSGlobalBlock__: 0x101f740d0>
            			NSLog(@"%@", obj_b); // 输出 <__NSGlobalBlock__: 0x101f74110>
            			NSLog(@"%@", obj_c); // 输出 <__NSGlobalBlock__: 0x101f74150>
    				}
				}
		   		
		 * 其他情况，则会自动将Block对象复制到“堆”中：
		 
		 		{
		 			typedef void (^blk)(void);
		 			int val = 10;
		 			blk obj = ^{NSLog(@"%d", val);};
		 			NSLog(@"%@", obj); // 输出 <__NSMallocBlock__: 0x7f91cb399330>
		 		}
		 		
**栈上的Block什么时候会复制到堆？**

	* 调用Block的copy实例方法时
	* Block作为函数返回值返回时
	* 将Block赋值给附有__strong修饰符的id类型变量或Block类型变量时
	* 向方法名种含有usingBlock的Cocoa框架方法或GCD的API传递Block时		 		
**__block变量存储域**

	说明：使用__block变量的Block从栈复制到堆上时，__block变量也会受到影响：
	
		 * 若一个Block中使用了__block变量，则当该Block从栈复制到堆时，Block使用的所有__block变量也会被复
		   制到堆上，并被Block持有。	 		
		   
		 * 在Block已复制到堆的情形下，再次复制该Block，对该Block使用到的__block变量没有任何影响。
		 
	注意：__block 说明符不能与 __autoreleasing 修饰符同时使用，会引起编译错误。
	
<br>

### GCD
===

**什么是GCD**

	说明：它是一种异步执行任务的技术，它以简洁的方法实现了极为复杂繁琐的多线程编程。
	
**线程 & 多线程**

	说明：* 一个CPU执行的CPU命令列是一条无分叉路径，这就是线程。
	     * 一个物理的CPU芯片实际上有多个CPU（如64核就有64个CPU），当多个CPU并行执行多个CPU命令列时即为“多线
	       程”。
	       
**多线程编程存在的问题**

	* 数据竞争：多个线程更新相同的资源而导致数据不一致。
	* 死锁：多个线程相互持续等待。
	* 使用太多线程会消耗大量内存。
	
**什么是主线程**

	说明：应用程序启动时，最先执行的进程，即为“主线程”。
	
**GCD的使用**

	说明：开发者只需定义想执行的任务并追加到适当的Dispatch Queue中即可。
	
	例子：dispatch_queue_t queue = dispatch_queue_create("com.test.gcd.myqueue", NULL);
		 dispatch_async(queue, ^{
		 	// 想执行的任务
		 });
		 
**Dispatch Queue**

	说明：它是执行处理的等待队列，会按照任务的追加顺序来执行，目前存在以下几种 Dispatch Queue：
	
		(1) Serial Dispatch Queue
	
			说明：使用一个线程来处理任务，当队列中的前一个任务处理结束后，才会处理下一个。
		
			用法：dispatch_queue_t 变量名 = dispatch_queue_create(名称, NULL);
		
			例子：dispatch_queue_t queue = dispatch_queue_create("com.xidanjueying.test", NULL);
		
			注意：
		
				* “名称”，推荐使用应用程序ID（逆序域名，如"com.xidanjueying.test"）
				* 当生成多个 Serial Dispatch Queue 时，各个 Serial Dispatch Queue 将并行执行
	
		(2) Concurrent Dispatch Queue
	
			说明：使用多个线程来处理任务，不用等待前一个任务处理结束，可以并行处理多个任务。
			
			用法：dispatch_queue_t 变量名 = dispatch_queue_create(名称, DISPATCH_QUEUE_CONCURRENT);
		
			注意：在IOS和OSX中，线程的数量基于Dispatch Queue中的处理数、CPU核数及CPU负荷等当前系统状态来决定。
		
		(3) Main Dispatch Queue
	
			说明：它是在主线程中执行的 Dispatch Queue，它是 Serial Dispatch Queue 。
		
			用法：dispatch_queue_t 变量名 = dispatch_get_main_queue();
		
		(4) Global Dispatch Queue
	
			说明：它是所有应用程序都能使用的 Concurrent Dispatch Queue，它有4个执行优先级：
			 	* 高优先级 -- DISPATCH_QUEUE_PRIORITY_HIGH
			 	* 默认优先级 -- DISPATCH_QUEUE_PRIORITY_DEFAULT
			 	* 低优先级 -- DISPATCH_QUEUE_PRIORITY_LOW
			 	* 后台优先级 -- DISPATCH_QUEUE_PRIORITY_BACKGROUND
			 
			用法：// 例：高优先级
			 	 dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);	
			 
	注意：使用 Main Dispatch Queue 和 Global Dispatch Queue 时，不用执行 dispatch_retain 和 
	     dispatch_release 函数（如果你执行了这俩函数，既不会引起任何变化，也不会出现任何问题）。		
	
**Dispatch Queue的内存管理**	

	说明：ARC只能管理Objective-C对象的内存使用，而 Dispatch Queue 不是Objective-C对象，因此Dispatch 
	     Queue 必须由程序员负责释放 -- 通过  dispatch_retain 和 dispatch_release 函数的引用计数来管理
	     内存。
	     
	注意：
	
		* 使用名称中含有"create"的GCD API生成的对象，在不再需要的时候，有必要通过 dispatch_release 函数进
		  行释放。
		  
		* 通过函数或方法获取 Dispatch Queue 以及其他名称中含有“create“的API生成对象时，有必要通过 
		  dispatch_retain 函数持有，并在不需要时通过 dispatch_release 函数释放。
		  
		* 对于 Main Dispatch Queue 和 Global Dispatch Queue，无需调用 dispatch_retain 和 
		  dispatch_release 来管理内存。
	     
	例子：dispatch_retain(queue); // 持有
		 dispatch_release(queue); // 释放
		 
**dispatch_set_target_queue**

	作用：变更生成的Dispatch Queue的执行优先级。
	
	用法：dispatch_set_target_queue(希望变更优先级的queue, 优先级与目标优先级相同的queue);
	
	例子：
		 // 希望变更优先级的queue
		 dispatch_queue_t queue = dispatch_queue_create("com.exam.test", NULL);
		 // 优先级与目标优先级相同的queue
		 dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
		 // 将 queue 的优先级变更为 高优先级
		 dispatch_set_target_queue(queue, globalQueue);
		 
	备注：dispatch_queue_create函数生成的Dispatch Queue，其执行优先级与Global Dispatch Queue的默认优  
	     先级一样。
	     
**dispatch_set_target_queue 对 Serial Dispatch Queue的影响**

	说明：如果将多个 Serial Dispatch Queue 中用 dispatch_set_target_queue 函数指定目标为某一个 Serial 
	     Dispatch Queue，那么原本应并行执行的多个 Serial Dispatch Queue，在目标 Serial Dispatch    
	     Queue 上串行执行。
	     
	例一：多个 Serial Dispatch Queue，未使用 dispatch_set_target_queue 的情况
	
		dispatch_queue_t q1 = dispatch_queue_create("com.exam.test", NULL);
    	dispatch_queue_t q2 = dispatch_queue_create("com.exam.test", NULL);
    	dispatch_queue_t q3 = dispatch_queue_create("com.exam.test", NULL);

    	dispatch_async(q1, ^{
        	NSLog(@"1");
    	});
    	dispatch_async(q2, ^{
        	NSLog(@"2");
    	});
    	dispatch_async(q3, ^{
        	NSLog(@"3");
    	});
		
		// xcode控制输出
		2014-10-31 14:14:26.051 doodle[29456:1388210] 3
		2014-10-31 14:14:26.051 doodle[29456:1388211] 2
		2014-10-31 14:14:26.051 doodle[29456:1388208] 1
		
		从 [29456:1388210], [29456:1388211], [29456:1388208] 可看出是三个线程并行执行。
		
	例二：多个 Serial Dispatch Queue，使用 dispatch_set_target_queue 将其中一个设为目标
	
		dispatch_queue_t q1 = dispatch_queue_create("com.exam.test", NULL);
    	dispatch_queue_t q2 = dispatch_queue_create("com.exam.test", NULL);
    	dispatch_queue_t q3 = dispatch_queue_create("com.exam.test", NULL);
    	// 将 q1 设定为目标
    	dispatch_set_target_queue(q2, q1);
    	dispatch_set_target_queue(q3, q1);

    	dispatch_async(q1, ^{
        	NSLog(@"1");
    	});
    	dispatch_async(q2, ^{
        	NSLog(@"2");
    	});
    	dispatch_async(q3, ^{
        	NSLog(@"3");
    	});		
			
	    // xcode控制台输出
	    2014-10-31 14:25:37.302 doodle[29492:1393252] 1
		2014-10-31 14:25:37.303 doodle[29492:1393252] 2
		2014-10-31 14:25:37.303 doodle[29492:1393252] 3

		从 [29492:1393252] 可看出是一个线程串行执行
		
**dispatch_after**

作用：在指定时间追加任务到 Dispatch Queue 。
	
用法：`dispatch_after(time, queue, ^{...});`
	
参数说明：

	* time -- 表示在多久之后将任务追加到 Dispatch Queue，可以是相对时间
	 （通过 dispatch_time 函数获得），也可以是绝对时间（通过 dispatch_walltime 函数获得）。
	
	* queue -- Dispatch Queue
	
例子：

	// time 为相对时间，表示从现在开始 3 秒后
	// DISPATCH_TIME_NOW，表示现在的时间
	// ull，全称unsigned long long，是C语言的数值字面量
	// NSEC_PER_SEC表示单位为毫微秒，NSEC_PER_MSEC则表示单位为豪秒
	dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 3ull * NSEC_PER_SEC);
	dispatch_after(time, dispatch_get_main_queue(), ^{
		NSLog(@"test");
	});
		
		
<br>

### 参考资料

* [@property和@synthesize关键字详解](http://www.cnblogs.com/QM80/p/3576282.html)
* [Objective-C简介](http://zh.wikipedia.org/wiki/Objective-C)
		
