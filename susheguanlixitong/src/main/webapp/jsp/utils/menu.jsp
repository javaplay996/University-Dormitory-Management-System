<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"学生管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"学生管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"宿舍信息管理",
                        "menuJump":"列表",
                        "tableName":"sushe"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"人员与宿舍关系管理",
                        "menuJump":"列表",
                        "tableName":"susheYonghu"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"卫生检查管理",
                        "menuJump":"列表",
                        "tableName":"weishengjiancha"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"缺勤管理",
                        "menuJump":"列表",
                        "tableName":"queqin"
                    }
                ],
                "menu":"宿舍信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"报修管理",
                        "menuJump":"列表",
                        "tableName":"baoxiu"
                    }
                ],
                "menu":"报修管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"电表管理",
                        "menuJump":"列表",
                        "tableName":"dianbiao"
                    }
					,{
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"电表缴费管理",
                        "menuJump":"列表",
                        "tableName":"dianbiaoJiaofei"
                    }
                ],
                "menu":"电表管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"水表管理",
                        "menuJump":"列表",
                        "tableName":"shuibiao"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"水表缴费管理",
                        "menuJump":"列表",
                        "tableName":"shuibiaoJiaofei"
                    }
                ],
                "menu":"水表管理"
            }
			
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"访客管理",
                        "menuJump":"列表",
                        "tableName":"fangke"
                    }
                ],
                "menu":"访客管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"公告类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGonggao"
                    }
                ],
                "menu":"基础数据管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    }
	,{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"学生管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"学生管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"宿舍信息管理",
                        "menuJump":"列表",
                        "tableName":"sushe"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"人员与宿舍关系管理",
                        "menuJump":"列表",
                        "tableName":"susheYonghu"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"卫生检查管理",
                        "menuJump":"列表",
                        "tableName":"weishengjiancha"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"缺勤管理",
                        "menuJump":"列表",
                        "tableName":"queqin"
                    }
                ],
                "menu":"宿舍信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"报修管理",
                        "menuJump":"列表",
                        "tableName":"baoxiu"
                    }
                ],
                "menu":"报修管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"电表管理",
                        "menuJump":"列表",
                        "tableName":"dianbiao"
                    }
					,{
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"电表缴费管理",
                        "menuJump":"列表",
                        "tableName":"dianbiaoJiaofei"
                    }
                ],
                "menu":"电表管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"水表管理",
                        "menuJump":"列表",
                        "tableName":"shuibiao"
                    }
					,
					{
                        "buttons":[
                            "查看",
                            "新增",
                            "删除"
                        ],
                        "menu":"水表缴费管理",
                        "menuJump":"列表",
                        "tableName":"shuibiaoJiaofei"
                    }
                ],
                "menu":"水表管理"
            }
			
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"访客管理",
                        "menuJump":"列表",
                        "tableName":"fangke"
                    }
                ],
                "menu":"访客管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"宿舍管理员",
        "tableName":"users"
    }
	,{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"宿舍信息管理",
                        "menuJump":"列表",
                        "tableName":"sushe"
                    }
					,
					{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"卫生检查管理",
                        "menuJump":"列表",
                        "tableName":"weishengjiancha"
                    }
					,
					{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"缺勤管理",
                        "menuJump":"列表",
                        "tableName":"queqin"
                    }
                ],
                "menu":"宿舍信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增"
                        ],
                        "menu":"报修管理",
                        "menuJump":"列表",
                        "tableName":"baoxiu"
                    }
                ],
                "menu":"报修管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"电表管理",
                        "menuJump":"列表",
                        "tableName":"dianbiao"
                    }
					,{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"电表缴费管理",
                        "menuJump":"列表",
                        "tableName":"dianbiaoJiaofei"
                    }
                ],
                "menu":"电表管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"水表管理",
                        "menuJump":"列表",
                        "tableName":"shuibiao"
                    }
					,
					{
                        "buttons":[
                            "查看"
                        ],
                        "menu":"水表缴费管理",
                        "menuJump":"列表",
                        "tableName":"shuibiaoJiaofei"
                    }
                ],
                "menu":"水表管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看"
                        ],
                        "menu":"公告管理",
                        "menuJump":"列表",
                        "tableName":"gonggao"
                    }
                ],
                "menu":"公告管理"
            }
        ],
        "frontMenu":[

        ],
        "roleName":"用户",
        "tableName":"yonghu"
    }
];

var hasMessage = '';