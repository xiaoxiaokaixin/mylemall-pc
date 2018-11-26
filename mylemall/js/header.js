/*头部*/
//鼠标触发二维码
//var span=$("#mobie");
//var div=span.next();
//div.css("display:none");
//span.onmouseover=function(){
//	div.css("display:block");
//}
//div.onmouseover=function(){
//	div.css("display:block");
//}
//div.onmouseout=function(){
//	div.css("display:none");
//}
//span.onmouseout=function(){
//	div.css("display:none");
//}

$(function(){
	$("<link rel='stylesheet' href='css/header.css'>").appendTo("head")
	$.ajax({
		url:"http://127.0.0.1:3000/header.html",
		type:"get",
		success:function(res){
			$("#header").replaceWith(res)
			
    		//1. 查找触发事件的元素
	      var $btnSearch=$("input.nav_button");
	      var $input=$("input.nav_search");       
	      //2. 绑定事件
	      $btnSearch.click(function(){
	        //  3. 查找要修改的元素
	        //  4. 修改元素
	        var kw=$input.val().trim();
	        if(kw!=="")
	          location.href=
	            `product.html?kwords=${kw}`;
	      })
	      $input.keyup(function(e){
	        if(e.keyCode==13) $btnSearch.click()
	      })
	      
	      if(location.search.indexOf("kwords")!=-1){
	        var kwords=decodeURI(
	          location.search.split("=")[1]
	        )
	        $input.val(kwords)
	      }
	      
				$("#btnLogin").click(function(){
	        location.href=
	          "login.html?back="+location.href;
	      })
		   
		   
    	}
	});
	
})



