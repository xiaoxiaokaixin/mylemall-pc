
//遍历所有商品
$(function(){
	if(location.search.indexOf("kwords=")!=-1){
    var kwords=decodeURI(
      location.search.split("=")[1]
    );
	var pno=0;
	function loadPage(no=0){//no:新页号
		pno=no;
		$.ajax({
			url:"http://127.0.0.1:3000/products/getProducts",
			type:"get",
			data:{pno},
			dataType:"json",
			success:function(output){
//				console.log(output);
				var { products,pageCount }=output;
				var html="";
				for(var p of products){
					var {dpic,title,price}=p;
				html+=`<li>
					<div class="pro_img">
						<img src="${dpic}" alt="" />
					</div>
					<div class="pro_title">
						${title}
					</div>
					<div class="pro_price">
						￥${price}
					</div>
					<a href="" class="btn">购买</a>
				</li>`	
				}
				
				var $ul=document.querySelector("ul.result_list");
				$ul.innerHTML=html;
				
				var html="";
	          for(var i=1;i<=pageCount;i++){
	            html+=`<li class="page-item"><a href="#" class="page-link ${i==pno+1?'bg-danger text-white':'bg-transparent'}">${i}</a></li>`
	          }
	          	//删除中间li:
         $fenye.children(":not(:first-child):not(:last-child)").remove()
				$fenye.children().first().after(html)
		        if(pno==0){//如果当前页是第一页就禁用上一页
	            $fenye.children().first().addClass("disabled")
	          }else{//否则就启用上一页
	            $fenye.children().first().removeClass("disabled")
	          }
	          if(pno==pageCount-1){
	            $fenye.children().last().addClass("disabled")
	          }else{
	            $fenye.children().last().removeClass("disabled")
	          }
				
				//鼠标停留在产品上的动态
				var lis=document.querySelectorAll(".result_list>li")
				var btns=document.getElementsByClassName("btn");
				for(var i=0;i<lis.length;i++){
					(function(j){
						lis[j].onmouseover=function(){
							lis[j].style.border="1px solid #D8011A";
							btns[j].style.background="#D8011A";
							btns[j].style.color="white";
						}
						lis[j].onmouseout=function(){
							lis[j].style.border="1px solid #ffffff";
							btns[j].style.background="#ffffff";
							btns[j].style.color="#C80000";
						}
					})(i)
				}
				
				
			}
		})
	}
	 loadPage();
	var $fenye=$("ul.pagination");
	//只在页面首次加载时，在分页按钮的父元素上绑定一次
    $fenye.on("click","a",function(e){
      e.preventDefault();
      var $a=$(this);
      //除了禁用和当前正在激活按钮之外才能点击
      if(!$a.parent().is(".disabled,bg-danger,text-white")){
        if($a.parent().is(":first-child"))//上一页
          var no=pno-1;//新页号=当前页号-1
        else if($a.parent().is(":last-child"))
          var no=pno+1;//新页号=当前页号+1
        else//1、2、3按钮
          var no=$a.html()-1;//新页号=按钮内容-1
        loadPage(no);//重新加载新页号的页面内容
      }
    });
	
	}	
	
})

