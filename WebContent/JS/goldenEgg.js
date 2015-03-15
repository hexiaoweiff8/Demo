$(document).ready(function(){
	var cvs = document.getElementById("cvs");//获取canves
	var ctx = cvs.getContext('2d');//获取画板
	if(ctx){
		
		//通用方法定义
		//加载图片
		var loadImage = function(url){
			var image = new Image();
			image.src = url;
			if(image.complete){
				ctx.drawImage(image);
			}else{
				image.onload = function(){
					ctx.drawImage(image);
				};
				image.onerror = function(){
					alert("加载失败");
				};
			}
		};
		//程序流程------------
		//加载默认效果------
		//加载中奖
		//加载未中奖
		//加载宝箱
		//开始动画----------
		
		//动画流程: 显示3个箱子, 点击哪个打开哪个, 显示
		//背景使用div背景, 弹出的确认框也是用div
		//其他效果使用
	}
	
	
});