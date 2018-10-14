<?php
namespace app\home\controller;
use app\common\controller\Base;
use think\Db;
use think\facade\Request;
class Index extends Base
{
    public function index()
    {
		//添加数据
		if(Request::isPost()){
			$data = Request::post();
			
			$result = $this->validate(
				[
					'name' => $data['name'],
					'sex' => $data['sex'],
					'age' => $data['age']
				],
				'app\home\validate\UserAdd'
			);
			if ($result !== true) {
				echo '{"status":"0","msg":"'.$result.'"}';
				die;
			}
				
			$data['create_time'] = time();	//插入时间戳
			$res = Db::name('user')->insert($data);
			if($res){
				echo '{"status":"1","msg":"添加成功","data":""}';
			}else{
				echo '{"status":"0","msg":"添加失败","data":""}';
			}
			
			die;
		}
		//删除数据
		if(Request::isDelete()){
			$data = Request::delete();
			$res = Db::table('user')->delete($data['checked_val']);
			if($res){
				echo '{"status":"1","msg":"删除成功","data":""}';
			}else{
				echo '{"status":"0","msg":"删除失败","data":""}';
			}
			die;
			
		}
		//修改数据
		if(Request::isPut()){
			$data = Request::Put();
			$result = $this->validate(
				[
					$data['field'] => $data['value'],
				],
				'app\home\validate\UserUpdate'
			);
			if ($result !== true) {
				echo '{"status":"0","msg":"'.$result.'"}';
				die;
			}
			
			$res = Db::name('user')->where('id', $data['id'])->update([$data['field'] => $data['value']]);
			if($res){
				echo '{"status":"1","msg":"修改成功","data":""}';
			}else{
				echo '{"status":"0","msg":"修改失败","data":""}';
			}
			die;
		}
		
		//渲染数据
		if(Request::isAjax()){
			$request = Request::get();
			$page = $request['page'];
			$limit = $request['limit'];
			$page = $page-1;

			$count = Db::table('user')->count();

			$page = $page * $limit;
			
			$data['data'] = Db::table('user')->order('id', 'asc')->limit($page,$limit)->select();
			$data['code'] = '0';
			$data['msg'] = '加载成功';
			$data['count'] = $count;
			echo json_encode($data);
			die;
		}
		
		//渲染页面
		return $this->fetch();
	}

}
