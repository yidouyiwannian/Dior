const express=require('express');
const bodyParser=require('body-parser');
const userRouter=require('./router/user_router.js');
//创建服务器
var server=express();
server.listen(3000);//回头换成云服务的端口
//托管静态资源
server.use(express.static("public"));
//设置body不要本身的延伸
server.use(bodyParser.urlencoded{
	extended:false
});

//把路由器挂载到服务器
server.use('/user',userRouter);