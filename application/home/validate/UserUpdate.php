<?php

namespace app\home\validate;

use think\Validate;

class UserUpdate extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名'	=>	['规则1','规则2'...]
     *
     * @var array
     */	
	protected $rule = [
		'name'  =>  'max:5|min:1',
		'sex' => 'number|max:1',
		'age' => 'number|max:3'
	];
    
    /**
     * 定义错误信息
     * 格式：'字段名.规则名'	=>	'错误信息'
     *
     * @var array
     */	
    protected $message = [

	];
}
