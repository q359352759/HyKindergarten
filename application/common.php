<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
//分页
//$Total总数，$pageSize每页数量，$pageIndex第几页$DisplayQuantity页码左右数量
function paging($Total,$pageSize,$pageIndex,$DisplayQuantity=5){
	$obj=array();
	$obj['upper']=$pageIndex==1 ? '' : $pageIndex-1 ;				//上一页
	$obj['page']=array();											//中间页
	$obj['lower']=$pageIndex>=$Total/$pageSize ? "" :$pageIndex+1;	//下一页
	for($i=0;$i<$Total/$pageSize;$i++){
	    if(($i+1)-($pageIndex-$DisplayQuantity) < 0 || $i-($pageIndex+$DisplayQuantity) >= 0){
	        	
	    }else{
	    	$obj['page'][] = ($i+1);
	    }
	}
	return $obj;
}

//文件上传
function upload($file='file'){
	$time=microtime(true);
	$extension = substr(strrchr($_FILES[$file]['name'], '.'), 0);
	$upload_file= iconv("UTF-8", "GB2312", "Upload/" .$time. $extension);
	move_uploaded_file($_FILES[$file]["tmp_name"],$upload_file);	
	return $time.$extension;
}
//base64 转图片并保存

function base($base64){
	$base64_image_content = $base64;
	//匹配出图片的格式
	if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $base64_image_content, $result)){
		$type = $result[2];
		$new_file = "Upload/";
		if(!file_exists($new_file)){
			//检查是否有该文件夹，如果没有就创建，并给予最高权限
			mkdir($new_file, 0700);
		}
		$new_file_1 = time().rand(1,100).".{$type}";
		if (file_put_contents($new_file.$new_file_1, base64_decode(str_replace($result[1], '', $base64_image_content)))){
			//返回图片名
			return $new_file_1;
		}else{
			return 'false';
		}
	}
}

function treeType($data,$val){
	$tree = array();
	foreach ($data as $obj) {
		if ($obj['parentId'] == $val) {
			$obj['children'] = treeType($data,$obj['Id']);
			if ($obj['children'] == null) {
				unset($obj['children']);
			}
			$tree[] = $obj;
		}
	}
	return $tree;
}
	
	//根据IP地址从新浪获取地理位置
	function getIPLoc_sina($queryIP){
        //获取数据
//      $url = 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip='.$queryIP;
//      $resJson = file_get_contents($url);
//      $resObj = json_decode($resJson);
//      if(is_object($resObj)){
//          return $resObj->country.'-'.$resObj->province.'-'.$resObj->city;;
//      }else{
//          return '未知';
//      }
		$url = 'http://ip.taobao.com/service/getIpInfo.php?ip='.$queryIP;
        $resJson = file_get_contents($url);
        $resObj = json_decode($resJson);
        if(is_object($resObj)){
        	if($resObj->code=='0'){
        		return $resObj->data->country.
        				($resObj->data->region=='' ? '' : '-'.$resObj->data->region).
        				($resObj->data->city=='' ? '' : '-'.$resObj->data->city).
        				($resObj->data->isp=='' ? '' : '-'.$resObj->data->isp);
        	}else{
        		return '未知';
        	}
        }else{
            return '未知';
        }
		
    }