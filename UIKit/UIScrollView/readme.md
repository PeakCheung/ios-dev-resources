# UIScrollView

### DEMO

* [预览效果](preview.png)

* [示例源码](UIScrollViewDemo)

<br>

### 参考

* [理解UIScrollView](http://blog.jobbole.com/70143/)
			
* [UIScrollView](http://www.cnblogs.com/xmqios/p/3489560.html)

<br>

### UIScrollViewDelegate协议方法的执行顺序

> 注：在一次滑动过程中，scrollViewDidScroll会调用多次。

1. scrollViewWillBeginDragging

2. scrollViewDidScroll

3. scrollViewDidEndDragging

4. scrollViewWillBeginDecelerating

5. scrollViewDidScroll

6. scrollViewDidEndDecelerating