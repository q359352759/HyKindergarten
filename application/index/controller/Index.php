<?php
namespace app\index\controller;
//调用model
use app\index\model;
use think\Request;
class Index extends \think\Controller{
    public function index(){
    	$basic=model('index')->getBasic();
		$banner=model('index')->getbanner(0);	//0首页，1集团介绍，2办学理念，3教师风采，4宝贝风采，5特色活动，6家园共育，7教育科研
		$schoolTypeList=model('index')->getType(1);	//根据类型获取分类 1园区，2教师风采3宝贝风采4特色活动5家园共育6教育科研
		$teacherList=model('index')->getTypePage(0,1,3,2);		//获取教师3条教师信息	
		
		$this->assign('banner',$banner);		//banner
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('teacherList',$teacherList);
    	return $this->fetch();
    }
	//园所荣誉
	public function Honor($i=0){
		//type表 1园区介绍，2教师风采，3宝贝风采，4特色活动，5家园共育，6教育科研 7表示园区荣誉
		
		$banner=model('index')->getbanner(1);		//0首页，1集团介绍，2办学理念，3教师风采，4宝贝风采，5特色活动，6家园共育，7教育科研
		$schoolTypeList=model('index')->getType(1);	//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研

		$thisId=$i==0 ? $schoolTypeList[0]['Id'] : $i;
		//根据类型获取page
		$HonorList=model('index')->getTypePage(0,1,100,7,$i);	//7表园区荣誉
		
		
		
		$this->assign('HonorList',$HonorList);
		$this->assign('banner',$banner);		//banner
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('thisId',$thisId);
		return $this->fetch();
	}
	//园区介绍
	public function park($i=0){
		$thisId=$i;
		$banner=model('index')->getbanner(1);	//0首页，1集团介绍，2办学理念，3教师风采，4宝贝风采，5特色活动，6家园共育，7教育科研
		$schoolTypeList=model('index')->getType(1);	//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6驾驭科研
		$schoolCharacteristicList=[];				//园区列表
		$schoolIntroduce='';						//当前园区简介
		if($i!=0){
			//根据类型获取page
			$schoolCharacteristicList=model('index')->getTypePage(0,1,10,1,$i);
			foreach($schoolTypeList as $obj){
				if($obj['Id']==$i){
					$schoolIntroduce=$obj['introduce'];
				}
			}
		}
		
		$this->assign('schoolCharacteristicList',$schoolCharacteristicList);
		$this->assign('banner',$banner);		//banner
		$this->assign('schoolIntroduce',$schoolIntroduce);
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('thisId',$thisId);
		return $this->fetch();
	}
	//教师风采
	public function teacher($i=0){
		$schoolTypeList=model('index')->getType(1);			//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		$schoolId=$i==0 ? $schoolTypeList[0]['Id'] : $i;
		
		$teacherTypeList=model('index')->getType(2);		//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		foreach($teacherTypeList as &$obj){
			$obj['list']=model('index')->getTypePage($obj['Id'],1,6,'',$i);		//获取教师3条教师信息	
		}
		
		$this->assign('schoolId',$schoolId);
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('teacherTypeList',$teacherTypeList);
		return $this->fetch();
	}
	//宝贝风采
	public function baby($i=0){
		$schoolTypeList=model('index')->getType(1);			//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		$schoolId=$i==0 ? $schoolTypeList[0]['Id'] : $i;
		
		$babyTypeList=model('index')->getType(3);			//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		foreach($babyTypeList as &$obj){
			$obj['details']=model('index')->getTypePage($obj['Id'],1,6,'',$schoolId);		//获取教师3条教师信息	
		}
		
		
		$this->assign('schoolId',$schoolId);
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('babyTypeList',$babyTypeList);
		return $this->fetch();
	}
	//特色活动
	public function activity($i=0,$s=0,$p=1){
		$schoolTypeList=model('index')->getType(1);			//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		$activityTypeList=model('index')->getType(4);		
		$thisType=$i==0 ? 1 : $i;	//这里的 $thisType 表示展示样式
		$schoolId=$s==0 ? $schoolTypeList[0]['Id'] : $s;
		
		$pageIndex=$p;
		$pageSize=10;
		
		$activityList=model('index')->getTypePage($activityTypeList[$thisType-1]['Id'],$p,10,'',$schoolId);
	
		$this->assign('thisType',$thisType);
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('schoolId',$schoolId);
		$this->assign('pageIndex',$pageIndex);
		$this->assign('pageSize',$pageSize);
		$this->assign('activityList',$activityList);
		$this->assign('activityTypeList',$activityTypeList);
		
		return $this->fetch();
	}
	//家园共育
	public function home($i=0){
		$schoolTypeList=model('index')->getType(1);			//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		$homeTypeList=model('index')->getType(5);
		$schoolId=$i==0 ? $schoolTypeList[0]['Id'] : $i;
		foreach($homeTypeList as &$obj){
			$obj['list']=model('index')->getTypePage($obj['Id'],1,5,'',$schoolId);
		}
		
		$this->assign('homeTypeList',$homeTypeList);
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('schoolId',$schoolId);
		return $this->fetch();
	}
	//教育科研
	public function education($i=1,$s=0,$p=1){
		$schoolTypeList=model('index')->getType(1);			//根据类型获取分类 1园区2教师风采3宝贝风采4特色活动5家园共育6教育科研
		$schoolId=$s==0 ? $schoolTypeList[0]['Id'] : $s;
		$educationTypeList=model('index')->getType(6);
		$thisType=$i;	//表示使用哪种样式
		$pageSize=$i%5==2 ? 9 : 10;
		$pageIndex=$p;
		$educationList=model('index')->getTypePage($educationTypeList[$thisType-1]['Id'],$pageIndex,$pageSize,'',$schoolId);
		
		
		
		$this->assign('pageIndex',$pageIndex);
		$this->assign('schoolTypeList',$schoolTypeList);
		$this->assign('schoolId',$schoolId);
		$this->assign('educationTypeList',$educationTypeList);
		$this->assign('thisType',$thisType);
		$this->assign('educationList',$educationList);
		return $this->fetch();
	}
	//教师详情
	public function teacherlist(){
		$thisType=input('get.t');
		$this->assign('thisType',$thisType);
		
		return $this->fetch();
	}
	//新闻中心
	public function newlist(){
		$thisType=input('get.t');
		$this->assign('thisType',$thisType);
		return $this->fetch();
	}
	//详情
	public function details($i=0){
		$detailsObj=model('index')->pageDetails($i);
		
		$this->assign('detailsObj',$detailsObj);
		return $this->fetch();
	}
	
	
}
