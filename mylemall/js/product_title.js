/*产品详情页导航*/
window.onscroll=function(){
    var topScroll =document.documentElement.scrollTop;//滚动的距离,距离顶部的距离
    var nav  = document.getElementById("product_nav");//获取到导航栏id
    if(topScroll >175){
        nav.style.position = 'fixed';
        nav.style.top = '0';
        nav.style.zIndex = '9999';
        nav.style.borderTop='none';
        document.getElementById("kong").style.display="block";
    }else{
        //当滚动距离小于175的时候执行下面的内容，也就是让导航栏恢复原状
        nav.style.position = 'static';
        nav.style.borderTop='2px solid #333333';
        document.getElementById("kong").style.display="none";
    }
}








