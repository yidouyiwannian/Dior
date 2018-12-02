const mysql=require('mysql');
var pool=mysql.createpool();
pool=({
	host:'127.0.0.1',
	port:3306,
	user:root,
	password:'',
	database:'dior'
	connectionLimit:10000,
});
module.exports=pool;

