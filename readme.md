ios-dev-resources
=================

> 说明：IOS 开发知识及资源沉淀。

<br>

### 一. IOS应用开发知识体系

![IOS应用开发知识体系](resources/IOS应用开发知识体系.png)

<br>

### 二. 常用工具
***

* xcode
* [CocoaPods](http://cocoapods.org/)

<br>

### 三. 编程语言
***

* [Objective-C](oc.md)
* Swift

<br>

### 四. 常用框架
***

#### **1. UIKit**

> 注：从 IOS 7.0 开始被废弃的类，不会整理在这里。

* **控制类型**

	* **UIButton**

		* 作用：按钮

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UIButton/preview.png)
			* [示例源码](UIKit/UIButton/UIButtonDemo)


	* **UISlider**

		* 作用：滑块

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UISlider/preview.png)
			* [示例源码](UIKit/UISlider/UISliderDemo)


	* **UISwitch**

		* 作用：开/关按钮

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UISwitch/preview.png)
			* [示例源码](UIKit/UISwitch/UISwitchDemo)


	* **UIDatePicker**

		* 作用：日期 & 时间选择

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UIDatePicker/preview.png)
			* [示例源码](UIKit/UIDatePicker/UIDatePickerDemo)


	* **UIPageControl**

		* 作用：分页

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UIDatePicker/preview.png)
			* [示例源码](UIKit/UIDatePicker/UIDatePickerDemo)


	* **UIRefreshControl**

		* 作用：下拉刷新

		* 父类：UIControl

		* 注意：只能用于UITableViewController中

		* 示例：
			* [效果预览](UIKit/UIRefreshControl/preview.png)
			* [示例源码](UIKit/UIRefreshControl/UIRefreshControlDemo)

		* 参考：
			* [下拉刷新和上拉加载的原理](http://blog.csdn.net/hmt20130412/article/details/32695305)


	* **UISegmentedControl**

		* 作用：类似于PC端的tabbar组件

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UISegmentedControl/preview.png)
			* [示例源码](UIKit/UISegmentedControl/UISegmentedControlDemo)


	* **UIStepper**

		* 作用：+ & -

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UIStepper/preview.png)
			* [示例源码](UIKit/UIStepper/UIStepperDemo)


	* **UITextField**

		* 作用：文本输入框

		* 父类：UIControl

		* 示例：
			* [效果预览](UIKit/UITextField/preview.png)
			* [示例源码](UIKit/UITextField/UITextFieldDemo)


* **可访问性**

	* **UIAccessibilityElement**

		* 作用：让 APP 支持无障碍

		* 父类：NSObject

		* 参考：
			* [让你的iOS APP支持无障碍使用](http://numbbbbb.gitbooks.io/ios-accessibility-programming-guide-in-chinese/content/ios_app/README.html)


* **导航类型**

	* **UINavigationController**

		* 作用：它是一个特殊view controller，用于管理层次内容的导航。

		* 父类：UIViewController

		* 示例：
			* [效果预览](UIKit/UINavigationController/preview.png)
			* [示例源码](UIKit/UINavigationController/UINavigationControllerDemo)

		* 注意：使用时，需要将它作为应用的rootViewController

		* 参考：
			* [UINavigationController使用详解（一）](http://blog.csdn.net/totogo2010/article/details/7681879)
			* [UINavigationController使用详解（二）](http://blog.csdn.net/totogo2010/article/details/7682433)
			* [UINavigationController使用详解（三）](http://blog.csdn.net/totogo2010/article/details/7682641)


	* **UINavigationBar**

		* 作用：导航条

		* 父类：UIView

		* 示例：
			* [效果预览](UIKit/UINavigationBar/preview.png)
			* [示例源码](UIKit/UINavigationBar/UINavigationBarDemo)

		* 参考：
			* [定制导航栏和状态栏](http://beyondvincent.com/blog/2013/11/03/120-customize-navigation-status-bar-ios-7/)
			* [UINavigationBar & UINavigationBarDelegate](http://code.tutsplus.com/tutorials/ios-sdk-uitextfield-uitextfielddelegate--mobile-10943)	
	

	* **UINavigationItem**

		* 作用：管理显示在导航条上的按钮和视图

		* 父类：NSObject

		* 示例：
			* [效果预览](UIKit/UINavigationItem/preview.png)
			* [示例源码](UIKit/UINavigationItem/UINavigationItemDemo)


	* **UITabBarController**

		* 作用：

		* 父类：UIViewController

		* 示例：
			* [效果预览](UIKit/UITabBarController/preview.png)
			* [示例源码](UIKit/UITabBarController/UITabBarControllerDemo)

		* 注意：使用时，需要将它设置为应用的rootViewController

		* 参考：
			* [UITabBarController使用详解](http://www.cnblogs.com/smileEvday/archive/2012/05/20/UITabBarController.html)


	* **UITabBar**

		* 作用：标签栏

		* 父类：UIView

		* 示例：
			* [效果预览](UIKit/UITabBar/preview.png)
			* [示例源码](UIKit/UITabBar/UITabBarDemo)

		* 参考：
			* [UITabBar使用示例](http://blog.csdn.net/ljloving/article/details/7609593)
			* [UITabBar详细说明](http://blog.sina.com.cn/s/blog_9c2363ad0101edck.html)


	* **UITabBarItem**

		* 作用：显示在标签栏上的按钮

		* 父类：UIBarItem

		* 示例：
			* [效果预览](UIKit/UITabBar/preview.png)
			* [示例源码](UIKit/UITabBar/UITabBarDemo)


	* **UIBarButtonItem**

		* 作用：显示在导航条和工具条上的按钮

		* 父类：UIBarItem

		* 示例：
			* [效果预览](UIKit/UIBarButtonItem/preview.png)
			* [示例源码](UIKit/UIBarButtonItem/UIBarButtonItemDemo)


* **菜单类型**

	* **UIPopoverController**

		* 作用：管理弹出层

		* 父类：NSObject

		* 注意：该类只能用于 ipad 设备，在其他设备上使用会产生异常。

		* 参考：
			* [自定义弹出窗口](http://mobile.51cto.com/iphone-396554.htm)


	* **UIMenuController**

		* 作用：菜单

		* 父类：NSObject

		* 示例：
			* [效果预览](UIKit/UIMenuController/preview.png)
			* [示例源码](UIKit/UIMenuController/UIMenuControllerDemo)

		* 参考：
			* [UIMenuController控件的使用及菜单调不出的解决方法](http://blog.csdn.net/jekkihun/article/details/8020685)


	* **UIMenuItem**

		* 作用：菜单项

		* 父类：NSObject

		* 示例：
			* [效果预览](UIKit/UIMenuController/preview.png)
			* [示例源码](UIKit/UIMenuController/UIMenuControllerDemo)


	* **UIPickerView**

		* 作用：滚轮选择器

		* 父类：UIView

		* 示例：
			* [效果预览](UIKit/UIPickerView/preview.png)
			* [示例源码](UIKit/UIPickerView/UIPickerViewDemo)


* **手势类型**

	* **UIGestureRecognizer**

		* 作用：手势识别类的抽象基类

		* 父类：NSObject

		* 示例：

		* 参考：
			* [IOS开发之手势——UIGestureRecognizer](http://www.cnblogs.com/iphone520/archive/2011/10/27/2226548.html)


	* **UILongPressGestureRecognizer**

		* 作用：长按

		* 父类：UIGestureRecognizer

		* 示例：


	* **UIPanGestureRecognizer**

		* 作用：拖移

		* 父类：UIGestureRecognizer

		* 示例：


	* **UIPinchGestureRecognizer**

		* 作用：二指往內或往外拨动

		* 父类：UIGestureRecognizer

		* 示例：


	* **UIRotationGestureRecognizer**

		* 作用：旋转

		* 父类：UIGestureRecognizer

		* 示例：


	* **UISwipeGestureRecognizer**

		* 作用：滑动

		* 父类：UIGestureRecognizer

		* 示例：


	* **UITapGestureRecognizer**

		* 作用：点一下

		* 父类：UIGestureRecognizer

		* 示例：


* **窗口类型**

	* **UIWindow**

		* 作用：定义一个窗口对象，用于管理和协调显示于设备屏幕上的应用视图。

		* 父类：UIView

		* 示例：
			* [示例代码](UIKit/UIWindow/UIWindowDemo)
	
		* 参考：
			* [UIWindow简介](http://www.cnblogs.com/wendingding/p/3770052.html)
			* [UIWindowLevel & KeyWindow](http://www.cnblogs.com/smileEvday/archive/2012/11/16/UIWindow.html)
	
	
	* **UIAlterView**

		* 作用：alert对话框

		* 父类：UIView

		* 示例：
			* [效果预览](UIKit/UIAlertView/preview.png)
			* [示例代码](UIKit/UIAlertView/UIAlertViewDemo)

		* **注意：IOS8已弃用该类**


	* **UIActionSheet**

		* 作用：多操作对话框

		* 父类：UIView

		* 示例：
			* [效果预览](UIKit/UIActionSheet/preview.png)
			* [示例代码](UIKit/UIActionSheet/UIActionSheetDemo)

		* **注意：IOS8已弃用该类**


* **其他**

	* **UILocalNotification**

		* 作用：本地通知

		* 父类：NSObject

		* 示例：暂无Demo（模拟器上无法测试该功能）

		* 参考：
			* [IOS UILocalNotification](http://blog.csdn.net/crayondeng/article/details/12753717)
			* [UILocalNotification详解](http://blog.csdn.net/qi_ruihua/article/details/8819338)


	* **UILabel**

		* 作用：显示只读文本

		* 父类：UIView

		* 示例：
			* [预览效果](UIKit/UILabel/preview.png)
			* [示例源码](UIKit/UILabel/UILabelDemo)


	* **UIImage**

		* 作用：载入图像数据

		* 父类：NSObject

		* 示例：
			* [预览效果](UIKit/UIImageView/preview.png)
			* [示例源码](UIKit/UIImageView/UIImageViewDemo)


	* **UIImageView**

		* 作用：提供了一个视图容器来显示图像

		* 父类：UIView

		* 示例：
			* [预览效果](UIKit/UIImageView/preview.png)
			* [示例源码](UIKit/UIImageView/UIImageViewDemo)


	* **UIProgressView**

		* 作用：进度条

		* 父类：UIView

		* 示例：
			* [预览效果](UIKit/UIProgressView/preview.png)
			* [示例源码](UIKit/UIProgressView/UIProgressViewDemo)


	* **UIScrollView**

		* 作用：滚动视图（幻灯片）

		* 父类：UIView

		* 示例：
			* [预览效果](UIKit/UIScrollView/preview.png)
			* [示例源码](UIKit/UIScrollView/UIScrollViewDemo)

		* 参考：
			* [理解UIScrollView](http://blog.jobbole.com/70143/)
			* [UIScrollView](http://www.cnblogs.com/xmqios/p/3489560.html)


<br>

### 五. 参考资料
***

* [IOS开发官方教程（中文版）](https://developer.apple.com/LIBRARY/ios/referencelibrary/GettingStarted/RoadMapiOSCh/FirstTutorial.html#//apple_ref/doc/uid/TP40012668-CH3-SW1)
* [App Programming Guide for iOS](https://developer.apple.com/library/ios/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40007072)
* [IOS人机界面指南（官方英文版）](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/MobileHIG/IconMatrix.html#//apple_ref/doc/uid/TP40006556-CH27-SW1)
* [IOS7人机界面指南（中文版，腾讯团队翻译）](http://isux.tencent.com/ios-human-interface-guidelines-ui-design-basics-ios7.html)
* [UIView与CALayer的区别](http://blog.csdn.net/weiwangchao_/article/details/7771538)
* [自动布局教程(1) 中文版](http://www.cocoachina.com/industry/20131203/7462.html)
* [自动布局教程(2) 英文版](http://www.raywenderlich.com/50319/beginning-auto-layout-tutorial-in-ios-7-part-2)
* [iOS开发之xib技巧介绍](http://www.cocoachina.com/industry/20140529/8603.html)
* [结队开发之多storyboard](http://www.cocoachina.com/industry/20140530/8620.html)
* [storyboard使用简介](http://www.cocoachina.com/industry/20131213/7537.html)
* [手写UI & xib & storyboard](http://www.cocoachina.com/industry/20140102/7640.html)
* [Xcode应用程序构建阶段（Build Phases）分析（1）](http://www.entlib.net/?p=1645)
* [Xcode应用程序构建阶段（Build Phases）分析（2）](http://www.entlib.net/?p=1654)
* [初探 iOS8 中的 Size Class](http://blog.csdn.net/pleasecallmewhy/article/details/39295327)
* [iphone6 屏幕特性图解](http://www.paintcodeapp.com/news/iphone-6-screens-demystified)
* [iOS8中LaunchImage和LaunchScreen的完美结合](http://www.simpleapples.com/2014/10/launchsreen-and-launchimage/)
* [IOS基础 -- 静态库](http://www.cnblogs.com/monicaios/p/3539920.html)
* [IOS基础 -- 内存分析](http://www.cnblogs.com/monicaios/p/3541095.html)
