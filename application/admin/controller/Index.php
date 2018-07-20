<?php
namespace app\admin\controller;
use think\Db;
use app\admin\model;
class Index extends \think\Controller{
    public function index(){
//      return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p> ThinkPHP V5<br/><span style="font-size:30px">十年磨一剑 - 为API开发设计的高性能框架</span></p><span style="font-size:22px;">[ V5.0 版本由 <a href="http://www.qiniu.com" target="qiniu">七牛云</a> 独家赞助发布 ]</span></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script><script type="text/javascript" src="http://ad.topthink.com/Public/static/client.js"></script><thinkad id="ad_bd568ce7058a1091"></thinkad>';
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		//根据时间获取数量
//		SELECT* FROM `access` WHERE DATE_FORMAT(`time`,'%Y-%m') = '2018-02'
		$monthList=[];
		$pcList=[];
		$MobileList=[];
		for($i=11;$i>=0;$i--){
			$monthList[]=date("Y-m", strtotime("-$i month"));
			$pcList[]=db('access')->where('type',0)->where("DATE_FORMAT(`time`,'%Y-%m')='".date('Y-m', strtotime("-$i month"))."'")->count();
			$MobileList[]=db('access')->where('type',1)->where("DATE_FORMAT(`time`,'%Y-%m')='".date('Y-m', strtotime("-$i month"))."'")->count();
		}
				
		$this->assign('monthList',json_encode($monthList));			//年月
		$this->assign('pcList',json_encode($pcList));				//电脑访问记录
		$this->assign('MobileList',json_encode($MobileList));		//手机访问记录
		
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量
		$this->assign('leavingIsRead',$leavingIsRead);
		//左侧导航
		$this->assign('action','index');
		return $this->fetch();
	}
	//登录
	public function login(){
		return $this->fetch();
	}
	//用户管理
	public function user(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量

		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('action','user');
		return $this->fetch();
	}

	public function basic(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		$list=db('basic')->select();
		$obj=array();
		foreach($list as $r){
			$obj[$r['key']]=$r;
		}
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量

		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('obj',$obj);
		$this->assign('action','basic');
		return $this->fetch();
	}
	
	//banner
	public function banner(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		if(!input('?get.t')){
			return '参数错误';
		}
//		0首页，1集团介绍，2办学理念，3教师风采，4宝贝风采，5特色活动，6家园共育，7教育科研
		$typeNme=['首页banner','集团介绍banner','办学理念banner','教师风采banner','宝贝风采banner','特色活动banner','家园共育banner','教育科研banner'];
		//根据type获取数据
		$bannerList=model('index')->getbanner(input('get.t'));
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量

		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('bannerList',$bannerList);
		$this->assign('typeNme',$typeNme);
		$this->assign('action','banner_'.input('get.t'));
		$this->assign('type',input('get.t'));
		return $this->fetch();
	}
	//新闻产品类型
	public function type(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		if(!input('?get.t')){
			return '参数错误';
		}
		$typeNme=['','园区类型','教师风采类别','宝贝风采','特色活动','家园共育','教育科研','园区荣誉','人员照片'];
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量

		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('type',input('get.t'));
		$this->assign('typeNme',$typeNme);
		$this->assign('action','type_'.input('get.t'));
		return $this->fetch();	
	}
	//园区荣誉
	public function Honor(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		if(!input('?get.t')){
			return '参数错误';
		}
		$typeNme=['','园区类型','教师风采类别','宝贝风采','特色活动','家园共育','教育科研','园区荣誉','人员照片'];
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量
		
		$schoolList=model('index')->getType(1);		//获取园区
		
		$this->assign('schoolList',$schoolList);
		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('type',input('get.t'));
		$this->assign('typeNme',$typeNme);
		$this->assign('action','Honor_'.input('get.t'));
		return $this->fetch();	
	}

	//Resources  资源0表示新闻1表示产品
	public function Resources(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		if(!input('?get.t')){
			return '参数错误';
		}
		$schoolList=model('index')->getType(1);
		
		$typeNme=['','园区特色','教师风采','宝贝风采','特色活动','家园共育','教育科研','园区荣誉','人员照片'];
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量
		
		$this->assign('schoolList',$schoolList);
		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('type',input('get.t'));
		$this->assign('typeNme',$typeNme);
		$this->assign('action','Resources_'.input('get.t'));
		return $this->fetch();
	}
	public function page(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		if(!input('?get.t')){
			return '参数错误';
		}

		//根据Type类型获取type数据
		$typeList=model('Index')->getType(input('get.t'));
		//查询学校
		$schoolList=model('Index')->getType(1);
		
		$typeNme=['','园区特色','页面','宝贝风采','特色活动','家园共育','教育科研','园区荣誉','人员照片'];
		if(input('?get.i')){
			$details=db('page')->where('Id',input('get.i'))->select()[0];
//			$join=[['type t2','t2.Id=t1.typeId']];
			$details['type']=db('page_type')->alias('t1')->join('type t2','t2.Id=t1.typeId')->where('t1.pageId',input('get.i'))->field('t2.*')->select();
			$details['school']=db('page_school')->alias('t1')->join('type t2','t2.Id=t1.schoolId')->where('t1.pageId',input('get.i'))->field('t2.*')->select();
			foreach($typeList as &$obj){
				foreach($details['type'] as $obj_1){
					if($obj['Id']==$obj_1['Id']){
						$obj['selected']=1;
					}
				}
			}
			foreach($schoolList as &$obj){
				foreach($details['school'] as $obj_1){
					if($obj['Id']==$obj_1['Id']){
						$obj['schoolselected']=1;
					}
				}
			}
			

		}else{
			$details=[];
		}

		$this->assign('details',$details);
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量
		
		$this->assign('schoolList',$schoolList);
		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('typeList',$typeList);
		$this->assign('type',input('get.t'));
		$this->assign('typeNme',$typeNme);
		$this->assign('action','Resources_'.input('get.t'));
		return $this->fetch();
	}
	//导航
	public function menu(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		if(!input('?get.t')){
			return '参数错误';
		}
		
		$typeNme=['顶部导航','底部导航'];
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量

		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('typeNme',$typeNme);
		$this->assign('type',input('get.t'));
		$this->assign('action','menu_'.input('get.t'));
		return $this->fetch();
	}
	//用户留言
	public function leaving(){
		if(!input('?session.user0103')){
			$this->redirect('admin/index/login');
		}else{
			$this->assign('user',json_decode(input('session.user0103'),true)[0]);
		}
		
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量
		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('action','leaving'.input('get.t'));
		return $this->fetch();
	}
	//访问记录
	public function access(){
		$leavingIsRead=db('leaving')->where('isRead',0)->count();		//留言未读数量
		$this->assign('leavingIsRead',$leavingIsRead);
		$this->assign('action','access');
		return $this->fetch();
	}
	
}
