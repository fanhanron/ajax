<?php

namespace app\home\validate;

use think\Validate;

class UserAdd extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
		'name'  =>  'require|max:5|min:2',
		'sex' => 'require|number|max:1',
		'age' => 'require|number|max:3'
	];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [
		'name.require' => '名称不能为空',
		'sex.require' => '性别不能为空',
		'age.require' => '年龄不能为空',
		'age.max' => '年龄格式错误'
	];
}
