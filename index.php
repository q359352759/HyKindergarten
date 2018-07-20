<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// [ 应用入口文件 ]

//定义资源目录   最好是写个判断，，域名访问的时候就填写
define('Resources','/HyKindergarten');
//这个是自己写的  
//if(filter_var($_SERVER["SERVER_NAME"],FILTER_VALIDATE_IP)){
// 	//ip访问	
//	define('Resources', '/zw');
//}else{
//	//域名访问	
//	define('Resources', '');
//}
// 定义应用目录
define('APP_PATH', __DIR__ . '/application/');
//define('BIND_MODULE','push/Worker');
// 加载框架引导文件
require __DIR__ . '/thinkphp/start.php';
