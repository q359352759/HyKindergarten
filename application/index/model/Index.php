<?php
namespace app\index\model;
use think\Db;
use think\Request;
use Mobile_Detect;
class Index extends \think\Model {
	public function index(){
      	return "hello 哈哈";
  	}
	public function getMenu($type){
		$r=db('menu')->where('menuType',$type)->order('sort is null,sort asc')->select();
		foreach($r as &$obj){
			if($obj['type']==1){
				$obj['Formerly']=db('page')->where('Id',$obj['pageId'])->field('title')->select()[0]['title'];
			}
		}
		return treeType($r,0);
	}
	public function getBasic(){
		$list=db('basic')->select();
		$obj=array();
		foreach($list as $r){
			$obj[$r['key']]=$r;
		}
		return $obj;
	}
	//根据类型获取banner
	public function getbanner($type){
		$r=db('banner')->where('type',$type)->order('sort')->select();
		return $r;
	}
	//根据类型获取分类0新闻1产品2合作伙伴3服务Logo
	public function getType($type){
		$r=db('type')->where('type',$type)->order('sort is null,sort asc')->select();
		return $r;
	}
	//根据产品分类获取page			
	public function getTypePage($typeId,$pageIndex,$pageSize,$type,$schoolId=0){
		if($typeId==0){			//查询该类型的数据
			if($schoolId==0){	
				$arr=[];
				$arr['list']=db('page')->where('type',$type)->order('sort is null,sort asc')->order('CreationTime DESC ')->page($pageIndex,$pageSize)->select();
				$count=db('page')->where('type',$type)->count();
				$arr['page']=paging($count,$pageSize,$pageIndex);		//分页
			}else{
				$arr=[];
				$arr['list']=db('page')->alias('t1')->join('page_school t2','t2.pageId=t1.Id')->where('t1.type',$type)->where('t2.schoolId',$schoolId)
				->order('t1.sort is null,t1.sort asc')->order('t1.CreationTime DESC ')->page($pageIndex,$pageSize)->field('t1.*')->select();
				$count=db('page')->alias('t1')->join('page_school t2','t2.pageId=t1.Id')->where('t1.type',$type)->where('t2.schoolId',$schoolId)->count();
				$arr['page']=paging($count,$pageSize,$pageIndex);		//分页
			}
		}else{
			//根据type类型获取page数据
			if($schoolId==0){
				$join = [
					//这里可以写多个表
					['page_type t2','t2.pageId=t1.Id'],
					['type t3','t3.Id=t2.typeId']
				];
				$arr=[];
				$arr['list']=db('page')->alias('t1')->join($join)->where('t3.Id',$typeId)->order('t1.sort is null,t1.sort asc')
					->order('t1.CreationTime DESC ')->page($pageIndex,$pageSize)->field('t1.*')->select();
				$count=db('page')->alias('t1')->join($join)->where('t3.Id',$typeId)->count();
				$arr['page']=paging($count,$pageSize,$pageIndex);
			}else{
				$join = [
					//这里可以写多个表
					['page_type t2','t2.pageId=t1.Id'],
					['type t3','t3.Id=t2.typeId'],
					['page_school t4','t4.pageId=t1.Id']
				];
				$arr=[];
				$arr['list']=db('page')->alias('t1')->join($join)->where('t3.Id',$typeId)->where('t4.schoolId',$schoolId)
					->order('t1.sort is null,t1.sort asc')->order('t1.CreationTime DESC ')
					->page($pageIndex,$pageSize)->field('t1.*')->select();
				$count=db('page')->alias('t1')->join($join)->where('t3.Id',$typeId)->where('t4.schoolId',$schoolId)->count();
				$arr['page']=paging($count,$pageSize,$pageIndex);
			}
		}
		return $arr;
	}
	
	
	//根据pageId获取详情
	public function pageDetails($pageId){
		$r=db('page')->where('Id',$pageId)->select()[0];
		return $r;
	}
	//给page添加点击次数
	public function clickPage($pageId){
		$r=db('page')->where('Id',$pageId)->setInc('Clicks',1);
		return $r;
	}
	//根据pageId获取评论
	public function getPageComment($pageId,$pageIndex,$pageSize){
		$arr=[];
		$arr['list']=db('page_comment')->where('pageId',$pageId)->order('time DESC')->page($pageIndex,$pageSize)->select();
		$count=db('page_comment')->where('pageId',$pageId)->count();
		$arr['pageIng']=paging($count,$pageSize,$pageIndex);
		return $arr;
	}
	
	//添加访问记录
	public function access(){
		$request=Request::instance();
		$MobileDetect=new Mobile_Detect();
		$data=[];
		$data['Ip']=$request->ip();
		$data['Browser']=input('post.Browser');
//		$data['Browser']='http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];			//被访问页面
		$data['type']=$request->isMobile() ? '1' : '0';		//0表示电脑 1表示手机		
		
		if($MobileDetect->isiOS()){
            $OS= 'iOS';
        }else if($MobileDetect->isAndroidOS()){
            $OS='AndroidOS';
        }else if($MobileDetect->isBlackBerryOS()){
            $OS='BlackBerryOS';
        }else if($MobileDetect->isSymbianOS()){
            $OS='SymbianOS';
        }else if($MobileDetect->isWindowsMobileOS()){
            $OS='WindowsMobileOS';
        }else if($MobileDetect->isWindowsPhoneOS()){
            $OS='WindowsPhoneOS';
        }else{
            $OS = $_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/win/i', $OS)) {
                $OS = 'Windows';
            } elseif (preg_match('/mac/i', $OS)) {
                $OS = 'MAC';
            } elseif (preg_match('/linux/i', $OS)) {
                $OS = 'Linux';
            } elseif (preg_match('/unix/i', $OS)) {
                $OS = 'Unix';
            } elseif (preg_match('/bsd/i', $OS)) {
                $OS = 'BSD';
            }
        }
		$data['os']=$OS;
		//判断浏览器类型
		if($MobileDetect->isChrome()){
            $Browser='Chrome';
        }else if($MobileDetect->isOpera()){
            $Browser='Opera';
        }else if($MobileDetect->isEdge()){
            $Browser= 'Edge';
        }else if($MobileDetect->isIE()){
            $Browser= 'IE';
        }else if($MobileDetect->isFirefox()){
            $Browser= 'Firefox';
        }else if($MobileDetect->isSafari()){
            $Browser= 'Safari';
        }else if($MobileDetect->isUCBrowser()){
            $Browser= 'UC浏览器';
        }else if($MobileDetect->isbaidubrowser()){
            $Browser= '百度浏览器';
        }else{
            $Browser = $_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/MSIE/i', $Browser)) {
                $Browser= 'IE';
            } elseif (preg_match('/Edge/i', $Browser)) {
               $Browser = 'Edge';
            } elseif (preg_match('/Firefox/i', $Browser)) {
                $Browser = 'Firefox';
            } elseif (preg_match('/Chrome/i', $Browser)) {
                $Browser = 'Chrome';
            } elseif (preg_match('/Safari/i', $Browser)) {
                $Browser = 'Safari';
            } elseif (preg_match('/Opera/i', $Browser)) {
                $Browser = 'Opera';
            } else {
                $Browser = '未知';
            }
        }
		$data['AccessType']=$Browser;
		$data['address']=getIPLoc_sina($request->ip());		//根据 Ip获取地址
		$data['time']=date('Y-m-d H:i:s');
		db('access')->insert($data);

	}
}