
var projectName = '机房预约系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

]


var indexNav = [

{
	name: '机房信息',
	url: './pages/jifangxinxi/list.jsp'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.jsp'
}, 
{
	name: '留言反馈',
	url: './pages/messages/list.jsp'
}
]

var adminurl =  "http://localhost:8080/jspmjqj9d/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"机房号","menuJump":"列表","tableName":"jifanghao"}],"menu":"机房号管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"机房信息","menuJump":"列表","tableName":"jifangxinxi"}],"menu":"机房信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"申请预约","menuJump":"列表","tableName":"shenqingyuyue"}],"menu":"申请预约管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"取消预约","menuJump":"列表","tableName":"quxiaoyuyue"}],"menu":"取消预约管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛管理","tableName":"forum"}],"menu":"论坛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","申请预约","取消预约"],"menu":"机房信息列表","menuJump":"列表","tableName":"jifangxinxi"}],"menu":"机房信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"机房信息","menuJump":"列表","tableName":"jifangxinxi"}],"menu":"机房信息管理"},{"child":[{"buttons":["查看","取消"],"menu":"申请预约","menuJump":"列表","tableName":"shenqingyuyue"}],"menu":"申请预约管理"},{"child":[{"buttons":["查看"],"menu":"取消预约","menuJump":"列表","tableName":"quxiaoyuyue"}],"menu":"取消预约管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"}],"frontMenu":[{"child":[{"buttons":["查看","申请预约","取消预约"],"menu":"机房信息列表","menuJump":"列表","tableName":"jifangxinxi"}],"menu":"机房信息模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学生","tableName":"xuesheng"},{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"机房号","menuJump":"列表","tableName":"jifanghao"}],"menu":"机房号管理"},{"child":[{"buttons":["查看","新增","修改","删除"],"menu":"机房信息","menuJump":"列表","tableName":"jifangxinxi"}],"menu":"机房信息管理"},{"child":[{"buttons":["审核","查看","删除"],"menu":"申请预约","menuJump":"列表","tableName":"shenqingyuyue"}],"menu":"申请预约管理"},{"child":[{"buttons":["审核","查看","删除"],"menu":"取消预约","menuJump":"列表","tableName":"quxiaoyuyue"}],"menu":"取消预约管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"}],"frontMenu":[{"child":[{"buttons":["查看","申请预约","取消预约"],"menu":"机房信息列表","menuJump":"列表","tableName":"jifangxinxi"}],"menu":"机房信息模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"教师","tableName":"jiaoshi"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
