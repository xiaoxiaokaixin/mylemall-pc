/*轮播图*/
 function task(){
      var img=lunbo.querySelector(".show");
      img.className="";
      if(img.nextElementSibling!=null)
        img.nextElementSibling.className="show" ;
      else
        img.parentNode.children[0].className="show";
    }
  var timer=setInterval(task,3000);
  lunbo.onmouseover=function(){
    clearInterval(timer);
  }
  lunbo.onmouseout=function(){
    timer=setInterval(task,3000);
  }

/*列表显示隐藏*/

for(var i=0;i<list_show.children.length;i++){
    var li=list_show.children[i];
    var div=li.parentElement.nextElementSibling;
    li.onmouseover=function(){
      div.style.display="block";
    }
    div.onmouseover=function () {
      div.style.display="block";
    }
    div.onmouseout=function(){
      div.style.display="none";
    }
    li.onmouseout=function(){
      div.style.display="none";
    }
}

$(function(){
	$.ajax({
		url:"http://localhost:3000/index/getIndexProducts",
		type:"get",
		dataType:"json",//ajax可自动将json转为obj
		success:function(res){
			console.log(res);
			//一楼第一行商品
			var{title,details,price,pic}=res[0];
			var html=`<img src="${pic}"/>
          <div>
            <p>${title}</p>
            <p>${details}</p>
            <p>￥${price}</p>
          </div>`;
			var a2=document.querySelector("div.f1_row:first-child>a.block_all");
			a2.innerHTML=html;
		//遍历一楼剩余商品
		var html="";
	      for(var p of res.slice(1,3)){
	      var {title,pic,price,href}=p;
			html+=`<a href="product.html" class="block_all">
	          <img src="${pic}"/>
	          <div>
	            <p>${title}</p>
	            <p>${details}</p>
	            <p>￥${price}</p>
	          </div>
	        </a>`
			}
	      var f1_row=a2.parentNode.nextElementSibling;
	      f1_row.innerHTML=html;
	      
	      var html="";
	      for(var p of res.slice(3,5)){
	      var {title,pic,price,href}=p;
			html+=`<a href="product.html" class="block_all">
	          <img src="${pic}"/>
	          <div>
	            <p>${title}</p>
	            <p>${details}</p>
	            <p>￥${price}</p>
	          </div>
	        </a>`
			}
	      var f1_row=document.querySelector("div.f1_row:nth-child(3)")
	      f1_row.innerHTML=html;
	      
	      //遍历二楼产品
	      var html="";
      for(var p of res.slice(5,8)){
        var {title,pic,price,href}=p;
        html+=`<a href="product.html">
          <img src="${pic}" alt="">
          <p>${title}</p>
          <p>${details}</p>
          <p>￥${price}</p>
        </a>`;
      }
      var f2_row=document.querySelector("div.f2_row1");
      f2_row.innerHTML=html;
      
      var html="";
      for(var p of res.slice(8)){
        var {title,pic,price,href}=p;
        html+=`<a href="product.html">
          <img src="${pic}" alt="">
          <div>
            <p>${title}</p>
            <p>￥${price}</p>
          </div>
        </a>`;
      }
      var f2_row=document.querySelector("div.f2_row2");
      f2_row.innerHTML=html;
      
	  }
	})
})






