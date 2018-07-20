<?php
namespace app\admin\controller;
use think\Db;
use think\response\Redirect;
use think\Session;
use think\Request;
use app\admin\model;
class Post extends \think\Controller{
	//登录
    public function login(){
    	$r=0;
		if(input('?post.Account') && input('?post.Password')){
			$map['Account']=input('post.Account');
			$map['Password']=md5(input('post.Password'));
			$r=db('user')->where($map)->count();
			$user=db('user')->where($map)->select();
			if($r==1){
				Session::set('user0103',json_encode($user));
			}
		}
		echo $r;
    }
	//退出
	public function SignOut(){
		session('user0103', null);
		echo 1;
	}
	//查询用户
	public function getUser(){
		$content=new \stdClass();
		$content->list=db('user')->where('Name','LIKE',"%".input('post.query')."%")->page(input('post.pageIndex'),input('post.pageSize'))->select();
		$content->count=db('user')->where('Name','LIKE',"%".input('post.query')."%")->count();
		$content->paging=paging($content->count,input('post.pageSize'),input('post.pageIndex'));
		echo json_encode($content);
	}
	//删除用户
	public function deleteUser(){
		$r=db('user')->where('Id',input('post.Id'))->delete();
		echo $r;
	}
	//修改和添加用户
	public function updateUser(){
		$val=[
				'Account'=>input('post.Account'),
				"Name"=>input('post.Name'),
				'Password'=>input('post.Password'),
				'Photo'=>input('post.Photo'),
				'Remarks'=>input('post.Remarks'),
				'Telephone'=>input('post.Telephone')
			];
		if(input('post.Id')!=''){
			$Id=db('user')->where('Account',input('post.Account'))->field('Id')->select();
			if((count($Id)>0 && $Id[0]['Id']==input('post.Id')) || count($Id)==0){
				if(input('?post.pwd') && input('post.pwd')!=''){
					$val['Password']=md5(input('post.pwd'));
				}

				$r=db('user')->where('Id',input('post.Id'))->update($val);
				echo $r;
			}else{
				echo "账号已存在";	
			}
		}else{
			$c=db('user')->where('Account',input('post.Account'))->count();
			if($c>0){
				echo '账号已存在';
			}else{
				$val['Password']=md5(input('post.pwd'));
				$val['CreationTime']=date('Y-m-d H:i:s');

				$r=db('user')->insert($val);
				echo $r;
			}
		}
	}
	//基本信息
	public function basic(){
		if(!empty($_FILES['mainLogo']['tmp_name'])){			//主LOGO
			$mainLogo=upload('mainLogo');
		}else{
			$mainLogo=input('post.mainLogo_src');
		}
		if(!empty($_FILES['attachLogo']['tmp_name'])){			//附logo
			$attachLogo=upload('attachLogo');
		}else{
			$attachLogo=input('post.attachLogo_src');
		}
		if(!empty($_FILES['QrCode']['tmp_name'])){				//二维码
			$QrCode=upload('QrCode');
		}else{
			$QrCode=input('post.QrCode_src');
		}
		$r=db('basic')->where('key','mainLogo')->setField('val',$mainLogo);
		$r=db('basic')->where('key','attachLogo')->setField('val',$attachLogo);
		$r=db('basic')->where('key','QrCode')->setField('val',$QrCode);
		$r=db('basic')->where('key','WebsiteTitle')->setField('val',input('post.WebsiteTitle'));
		$r=db('basic')->where('key','keywords')->setField('val',input('post.keywords'));
		$r=db('basic')->where('key','description')->setField('val',input('post.description'));
		$r=db('basic')->where('key','Telephone')->setField('val',input('post.Telephone'));
		$r=db('basic')->where('key','QQ')->setField('val',input('post.QQ'));
		$r=db('basic')->where('key','ICP')->setField('val',input('post.ICP'));
		$r=db('basic')->where('key','mailbox')->setField('val',input('post.mailbox'));
		$r=db('basic')->where('key','address')->setField('val',input('post.address'));
		$r=db('basic')->where('key','Culture')->setField('val',input('post.Culture'));
		$r=db('basic')->where('key','Subtitle')->setField('val',input('post.Subtitle'));
		echo $r;
	}
	public function banner(){
		//删除所有type的数据
		db('banner')->where('type',input('post.type'))->delete();
		$post=input('post.');
		$data=$post['data'];
		$val=[];
		foreach($data as $obj){
			$val_1=[];
			$val_1['type']=input('post.type');
			$val_1['title']=$obj['title'];
			$val_1['text']=$obj['text'];
			$val_1['time']=date('Y-m-d H:i:s');
			$val_1['href']=$obj['href'];
			$val_1['sort']=$obj['sort'];
			if($obj['base64']!=''){
				$val_1['imgUrl']=base($obj['base64']);
			}else{
				$val_1['imgUrl']=$obj['img_data'];
			}
			$val[]=$val_1;
		}
		$r=db('banner')->insertAll($val);
		
		echo $r;
	}
	//修改和添加type类型
	public function editType(){
			if(!input('?post.base64') || input('post.base64')==''){
				$picture=input('?post.picture') ? input('post.picture') :'';
			}else{
				$picture=base(input('post.base64'));
			}

			$data=[
				'type'=>input('post.type'),
				'name'=>input('post.name'),
				'picture'=>$picture,
				'url'=>'',
				'sort'=>input('post.sort')!='' ? input('post.sort') : null,
				'introduce'=>input('post.introduce'),
				'url'=>input('post.url'),
				'time'=>input('?post.time') ? input('?post.time') : date('Y-m-d H:i:s'),
				'school'=>input('?post.school') ? input('?post.school') : ''
			];
		if(!input('?post.Id')){
			$r=db('type')->insert($data);
			echo $r ;
		}else{
			$r=db('type')->where('Id',input('Id'))->update($data);
			echo $r;
		}
	}
	//根据type获取数据
	public function getType(){
		$r=db('type')->where('type',input('post.type'))->order('sort is null,sort asc')->select();
		echo json_encode($r);
	}
	//根据Id删除Type
	public function deleteType(){
		$r=db('type')->where('Id',input('post.Id'))->delete();
		echo $r;
	}
	//修改和添加page
	public function editPage(){
		$post=input('post.');
		$CoverMap='';
		if(input('post.base64')!=''){
			$CoverMap=base(input('post.base64'));
		}else{
			$CoverMap=input('post.CoverMap');
		}
		$data=[
			'type'=>input('post.type'),
			'author'=>input('post.author'),
			'Age'=>input('post.Age'),
			'class'=>input('post.class'),
			'CoverMap'=>$CoverMap,
			'title'=>input('post.title'),
			'introduce'=>input('post.introduce'),
			'text'=>input('post.text'),
			'sort'=>input('post.sort')!='' ? input('post.sort') : null ,
			'CreationTime'=>input('post.CreationTime')!='' ? input('post.CreationTime') : date('Y-m-d H:i:s')
		];

		if(!input('?post.Id') || input('post.Id')==''){		//添加		
			//getLastInsID返回自增Id
			$r=db('page')->insert($data);
			$rId=db('page')->getLastInsID();
		}else{
			$r=db('page')->where('Id',input('post.Id'))->update($data);
			db('page_type')->where('pageId',input('post.Id'))->delete();
			db('page_school')->where('pageId',input('post.Id'))->delete();
			$rId=input('post.Id');
		}
		if(input('?post.TypeList') && $post['TypeList']!=''){
			$typeData=[];
			foreach($post['TypeList'] as $obj){
				$a=[
					'pageId'=>$rId,
					'typeId'=>$obj
				];
				$typeData[]=$a;
			}
			db('page_type')->insertAll($typeData);
		}
		if($post['school']!=''){
			$schoolList=[];
			foreach($post['school'] as $obj){
				$b=[
					'pageId'=>$rId,
					'schoolId'=>$obj
				];
				$schoolList[]=$b;
			}
			db('page_school')->insertAll($schoolList);
		}
		echo $r;
	}
	//根据page类型获取page列表
	public function getPage(){
		$r=model('index')->getPage(input('post.type'),input('post.screen'),input('post.pageIndex'),input('post.pageSize'),input('post.schoolId'));
		echo json_encode($r);
	}
	//删除page
	public function deletePage(){
		$r=db('page')->where('Id',input('post.Id'))->delete();
			db('page_type')->where('pageId',input('post.Id'))->delete();
			db('page_comment')->where('pageId',input('post.Id'))->delete();
			db('page_school')->where('pageId',input('post.Id'))->delete();
			
		echo $r;
	}
	//添加memu
	public function addMenu(){
		$post=input('post.');
		$data=[];
		foreach($post['data'] as $obj){
			$obj_1=[];
			$obj_1['menuType']=$obj['menuType'];
			$obj_1['parentId']=$obj['parentId'];
			$obj_1['DisplayName']=$obj['DisplayName'];
			$obj_1['Formerly']=$obj['Formerly'];
			$obj_1['type']=$obj['type'];
			$obj_1['url']=$obj['url'];
			$obj_1['pageId']=$obj['pageId'];
			$obj_1['sort']=$obj['sort']!='' ? $obj['sort'] : null;
			$data[]=$obj_1;
//			`Id`, `parentId`, `DisplayName`, `Formerly`, `type`, `url`, `pageId`, `sort`
		}
		$r=db('menu')->insertAll($data);
//		echo json_encode($post['data']);
		echo $r;
	}
	//根据参数获取menu
	public function getMenu(){
		if(!input('?post.menuType')){
			echo '参数错误';exit;
		}
		if(input('post.parentId')==''){
			$r=db('menu')->where('menuType',input('post.menuType'))->order('sort is null,sort asc')->select();
		}else{
			$r=db('menu')->where('menuType',input('post.menuType'))->where('parentId',input('post.parentId'))->order('sort is null,sort asc')->select();
		}
		foreach($r as &$obj){
			if($obj['type']==1){
				$obj['Formerly']=db('page')->where('Id',$obj['pageId'])->field('title')->select()[0]['title'];
			}
		}
		echo json_encode(treeType($r,0));
//		echo json_encode($r);
	}
	public function updatemenu(){
//		$data=input('post.');
		$data=[
			'parentId'=>input('post.parentId'),
			'DisplayName'=>input('post.DisplayName'),
			'url'=>input('post.url'),
			'sort'=>input('post.sort')!='' ? input('post.sort') : null
		];
		$r=db('menu')->where('Id',input('post.Id'))->update($data);
		echo $r;
	}
	public function deleteMenu(){
		$post=input('post.');
		$data=[];
		foreach($post['data'] as $obj){
			$data[]=$obj['Id'];
		}
		//这里的删除只能根据主键删除
		$r=db('menu')->delete($data);
		echo $r;
	}
	//根据pageId获取评论
	public function getPageComment(){
		$r=[];
		$r['list']=db('page_comment')->where('pageId',input('post.Id'))->page(input('post.pageIndex'),input('post.pageSize'))->select();
		$count=db('page_comment')->where('pageId',input('post.Id'))->count();
		$r['pageIng']=paging($count,input('post.pageSize'),input('post.pageIndex'));	//分页
		echo json_encode($r);
	}
	//删除评论
	public function delPageComment(){
		$r=db('page_comment')->where('Id',input('post.Id'))->delete();
		echo $r;
	}
	//获取用户留言
	public function getLeaving(){
		$r=[];
		$r['list']=db('leaving')->where('name|Telephone|text','LIKE',"%".input('post.screen')."%")->order('isRead')->order('time DESC')->page(input('post.pageIndex'),input('post.pageSize'))->select();
		$count=db('leaving')->where('name|Telephone|text','LIKE',"%".input('post.screen')."%")->count();
		$r['pageIng']=paging($count,input('post.pageSize'),input('post.pageIndex'));
		echo json_encode($r);
	}
	//删除留言
	public function deleteLeaving(){
		$r=db('leaving')->where('Id',input('post.Id'))->delete();
		echo $r;
	}
	//标记已读
	public function updateLaevingIsRead(){
		$r=db('leaving')->where('Id',input('post.Id'))->update(['isRead'=>1]);
		echo $r;
	}
	public function getLeavingCount(){
		$r=db('leaving')->where('isRead',0)->count();
		echo $r;
	}
	//根据页数获取访问记录 access
	public function getPageAccess(){
		$r=[];
		$r['list']=db('access')->order('time DESC')->page(input('post.pageIndex'),input('post.pageSize'))->select();
		$count=db('access')->count();
		$r['pageIng']=paging($count,input('post.pageSize'),input('post.pageIndex'));
		$r['count']=$count;
		echo json_encode($r);
	}
		
}



