const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/getProducts",(req,res)=>{
	
	var output={ pageSize:15 } //每页10个商品
	output.pno=req.query.pno;
	
	var sql="SELECT * FROM product_details";
	pool.query(sql,[],(err,result)=>{
		if(err) console.log(err);
		output.count=result.length;//获得总记录数
	    output.pageCount=Math.ceil(//计算总页数
	    output.count/output.pageSize);
	    output.products=//截取分页后的结果集
	    result.slice(output.pno*15,output.pno*15+15);

	    res.writeHead(200,{
	      "Content-Type":"application/json;charset=utf-8",
	      "Access-Control-Allow-Origin":"*"
	    })
	    res.write(JSON.stringify(output))
	    res.end()
  })
	
})
module.exports=router;