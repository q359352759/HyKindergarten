<?php
namespace app\admin\model;
use think\Db;
class Index extends \think\Model {
	//根据banner类型获取banner
	public function getbanner($type){
		$r=db('banner')->where('type',$type)->order('sort')->select();
		return $r;
	}
	//根据Type类型获取type数据
	public  function getType($type){
		$r=db('type')->where('type',$type)->select();
		return $r;
	}
	public function getPage($type,$screen,$pageIndex,$pageSize,$schoolId=0){
		$obj=[];
		if($schoolId==0){
			$obj['list']=db('page')->alias('t1')->where('t1.type',$type)->where('t1.title','like',"%$screen%")->order("t1.sort is null,t1.sort asc")->order('t1.CreationTime DESC')->page($pageIndex,$pageSize)
				->field('t1.*,(SELECT COUNT(*)  FROM page_comment WHERE pageId=t1.Id ) as pageComment')->select();
		}else{
			$obj['list']=db('page')->alias('t1')->join('page_school t2','t2.pageId=t1.Id')
				->where('t1.type',$type)->where('t1.title','like',"%$screen%")->where('t2.schoolId='.$schoolId)
				->order("t1.sort is null,t1.sort asc")->order('t1.CreationTime DESC')->page($pageIndex,$pageSize)
				->field('t1.*,(SELECT COUNT(*)  FROM page_comment WHERE pageId=t1.Id ) as pageComment')->select();
			
		}
		
		foreach($obj['list'] as &$obj_1){
			$join = [
				//这里可以写多个表
				['type t2','t2.Id=t1.typeId']
			];
			$join_1 = [
				//这里可以写多个表
				['type t2','t2.Id=t1.schoolId']
			];
			$obj_1['typeList']=db('page_type')->alias('t1')->join($join)->where('t1.pageId',$obj_1['Id'])->field('t2.name')->select();
			$obj_1['schoolList']=db('page_school')->alias('t1')->join($join_1)->where('t1.pageId',$obj_1['Id'])->field('t2.*')->select();
//			$obj_1['pageComment']=db('page_comment')->where('pageId',$obj_1['Id'])->select();
		}
		$count=db('page')->where('type',$type)->where('title','like',"%$screen%")->count();
		$obj['page']=paging($count,$pageSize,$pageIndex);
		return $obj;
	}


}