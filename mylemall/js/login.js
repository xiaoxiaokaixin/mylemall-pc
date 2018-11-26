/*登陆方式展开收起*/
var sq=document.getElementById("sq");
sq.onclick=function(){
    var imgs=document.querySelectorAll(".form_fbot a img");
    if(sq.innerHTML=="&lt;收起"){
        sq.innerHTML="展开&gt;";
        imgs[3].style.display="none";
        imgs[4].style.display="none";
        imgs[5].style.display="none";
    }
    else{
        sq.innerHTML="&lt;收起";
        imgs[3].style.display="";
        imgs[4].style.display="";
        imgs[5].style.display="";
    }
}

$(function(){
	$("div.fourth_row>a").click(function(){
		var uname=$("input.uname").val();
	    var upwd=$("input.upwd").val();
	    (async function(){
	      var res=await $.ajax({
	        url:"http://127.0.0.1:3000/users/signin",
	        type:"post",
	        data:{uname,upwd},
	        dataType:"json"
	      })
	      if(res.ok==0)
	        alert(res.msg);
	      else{
	        alert("登录成功！即将返回来时的页面...")
	        if(location.search.startsWith("?back=")){
	          var url=location.search.slice(6)
	        }else{
	          var url="index.html"
	        }
	        location.href=url;
	      }
	    })()
	})
})






