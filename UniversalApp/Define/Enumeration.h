//
//  ZCEnumeration.h
//  CloudSeal
//
//  Created by Kiveen Zhao on 2017/7/6.
//  Copyright © 2017年 Kiveen Zhao. All rights reserved.
//

#ifndef Enumeration_h
#define Enumeration_h



#pragma mark - ZCwLoginType 登录类型
/**登录类型*/
typedef enum : NSUInteger {
    /**游客*/
    ZCwLoginTypeGuest = 0,
    /**真实账户*/
    ZCwLoginTypeReal = 1,
    /**模拟账户*/
    ZCwLoginTypeDemo,
    /**第三方*/
    ZCwLoginTypeThirdParty,
    
} ZCwLoginType;

/**左侧viewTag类型*/
typedef enum : NSUInteger {
    
    ZCwLeftViewTag_login = 0,
    ZCwLeftViewTag_register,
    ZCwLeftViewTag_faceLogin,
    ZCwLeftViewTag_3,
    ZCwLeftViewTag_4,
    ZCwLeftViewTag_5,

} ZCwLeftViewTag;

/**首页tag类型*/
typedef enum : NSUInteger {
    
    ZCwHomepBtn0Tag = 0,
    ZCwHomepBtn1Tag,
    ZCwHomepBtn2Tag,
    ZCwHomepBtn3Tag,
    ZCwHomepBtn4Tag,
    ZCwHomepBtn5Tag,
    /**不能更改的buton.tag*/

    
} ZCwHomePageItemTag;

/**个人资料celltag类型*/
typedef enum : NSUInteger {
    ZCwInfoCellTag_tFieldName = 0,
    ZCwInfoCellTag_chooseSex,
    ZCwInfoCellTag_tFieldPhone,
    ZCwInfoCellTag_tFieldEmail,
    ZCwInfoCellTag_btnDepatment,
    ZCwInfoCellTag_tFieldCode,
    ZCwInfoCellTag_tFieldCompany,
    ZCwInfoCellTag_btnLocation,
    ZCwInfoCellTag_tFieldAddress,
    
} ZCwInfoCellTag;

/**印章设备类型*/
typedef enum : NSUInteger {
    //合同章
    ZCwSealType_contract = 0,
    //财务章
    ZCwSealType_finance,
    //
    ZCwSealType_contract1,
    //
    ZCwSealType_contract2,
    
} ZCwSealType;

#pragma mark  popview的tag
/**popview的tag*/
typedef NS_ENUM(NSUInteger, ZCwPopViewTag) {
    /**默认*/
    ZCwPopViewTagDefaul = 0,
    /**强制登出*/
    ZCwPopViewTagLogoutForce = 100,
    /**重连服务器*/
    ZCwPopViewTagServerReconn,
    /**检测版本*/
    ZCwPopViewTagServerCheck,
    /**切换账户*/
    ZCwPopViewTagAccountChange,
    /**开立账户*/
    ZCwPopViewTagAccountOpen,
    /**登出*/
    ZCwPopViewTagLogoutGuest,
    /**通话*/
    ZCwPopViewTagCall,
    /**忘记密码成功*/
    ZCwPopViewTagForgetPwdSuc,
    /**QQ客服*/
    ZCwQQServicer,
    //注册
    ZCwPopViewTagRegist,
    /**充值*/
    ZCwPopViewTagRecharge,
};

#pragma mark - ZC_tag
/**
 *  button的tag
 */
typedef NS_ENUM(NSUInteger, ZCwViewTag) {
    /**
     *  主界面行情的枚举
     */
    ZCwTagBtnMain_min = 100,

    
    //注册
    ZCwTagRegisterTextField_phone,
    ZCwTagRegisterTextField_num,
    ZCwTagRegisterBtn_sendNum,
    ZCwTagRegisterBtn_showPw,
    ZCwTagRegisterBtn_protocol,
    ZCwTagRegisterBtn_register,
    
    //个人资料
    ZCwTagUserInfoBtn_userinfo,
    ZCwTagUserInfoBtn_headPic,
    ZCwTagUserInfoBtn_sex,
    ZCwTagUserInfoBtn_department,
    ZCwTagUserInfoBtn_location,
    ZCwTagUserInfoBtn_protocol,
    ZCwTagUserInfoBtn_save,
    
    //登陆
    ZCwTagLoginTextField_phone,
    ZCwTagLoginTextField_password,
    ZCwTagLoginBtn_showPw,
    ZCwTagLoginBtn_forgetPw,
    ZCwTagLoginBtn_login,
    ZCwTagLoginBtn_goRegister,
    
    //审批界面
    ZCwTagApproveBtn_apply,
    ZCwTagApproveBtn_approve,
    ZCwTagApproveBtn_App,
    
    //添加设备
    ZCwTagSealBtn_bound,
    ZCwTagSealBtn_bound2,
    ZCwTagSealBtn_bound3,
    
    //用印申请界面
    ZCwTagApplyBtn_seal,
    ZCwTagApplyTField_purpose,
    ZCwTagApplyTField_count,
    ZCwTagApplyTView_market,
    ZCwTagApplyBtn_startTime,
    ZCwTagApplyBtn_endTime,
    ZCwTagApplyBtn_send,
    
    //印章详情界面
    ZCwTagSealInfoTField_name,
    ZCwTagSealInfoBtn_admin,
    ZCwTagSealInfoBtn_department,
    ZCwTagSealInfoBtn_usetype,
    ZCwTagSealInfoSwitch_powerWarn,
    ZCwTagSealInfoSwitch_onlineWarn,
    ZCwTagSealInfoBtn_ok,

    
    
    
    
    
    
    
    
    
    //退出登陆
    ZCwTagLogoutBtn_img,
    ZCwTagLogoutBtn_name,
    ZCwTagLogoutBtn_out,
    
    
    //忘记密码
    ZCwTagForgetPwTextField_phone,
    ZCwTagForgetPwTextField_num,
    ZCwTagForgetPwTextField_newPw,
    ZCwTagForgetPwTextField_newPw2,
    ZCwTagForgetPwBtn_sendNum,
    ZCwTagForgetBtn_ok,
    

    /**
     *  个人信息设置界面的枚举
     */
    ZCwTagMy_min = 300,
    ZCwTagMyBtn_myInfo,//设置昵称
    ZCwTagMyBtn_withdraw,//提现
    ZCwTagMyBtn_recharge,//充值
    ZCwTagMyBtn_showMoney,//是否显示资产
    ZCwTagMyBtn_showMoneyDetail,//是否显示资产详情

    /**
     *  密码界面的btn枚举
     */
    ZCwTagBtnPassword_commit = 800,
    ZCwTagBtnPassword_reset,
    
    /**
     *  联系客服界面的btn枚举 每增加一个号码+1
     */
    ZCwTagBtnContact = 1000,
    
    /**
     *  提示框的btn枚举
     */
    ZCwTagBtnAlertCancel = 1200,
    ZCwTagBtnAlertConfirm,
    
    /**
     *  我的界面btn枚举
     */
    /**设置*/
    ZCMyControllerTag_min = 1300,
    /**设置*/
    ZCMyControllerTag_Set,
    /**消息中心*/
    ZCMyControllerTag_Msg,
    /**账号*/
    ZCMyControllerTag_Account,
    /**显示资金*/
    ZCMyControllerTag_ShowMoney,
    /**存款*/
    ZCMyControllerTag_Deposit,
    /**取款*/
    ZCMyControllerTag_Withdrawl,
    /**个人信息*/
    ZCMyControllerTag_UserInfo,
    /**我的收藏*/
    ZCMyControllerTag_Collection,
    /**有奖推荐*/
    ZCMyControllerTag_Recommend,
    /**财经日历*/
    ZCMyControllerTag_Calendar,
    /**联系客服*/
    ZCMyControllerTag_Contact,
    
    ZCMyControllerTag_max,
    
};

/**select vc_tag*/
typedef NS_ENUM(NSInteger, SelectListVCTag) {
    /**云章列表*/
    SelVCtag_seal= 0,
    /**管理员列表*/
    SelVCtag_admin,
    /**部门列表*/
    SelVCtag_department,
};

/**http请求标记*/
typedef NS_ENUM(NSInteger, AFRequestTag) {
    /**登录*/
    AFLogin_tag= 0,
    /**修改密码*/
    AFModifyPwd_tag,
    /**消息中心*/
    AFMsgList_tag,
    /**消息详情*/
    AFMsgDetail_tag,
    /**单点登录*/
    AFRGSRegister_tag,
    /**上传日志*/
    AFUploadlog_tag,
    /**消息中心全部*/
    AFMsgList_queryAll,
    /**首页广告*/
    AFhomeAD,
};

//区分上拉加载还是下拉刷新
typedef NS_ENUM(NSUInteger, ZCwRefreshTag) {
    /**刷新*/
    RefreshTag_Ref = 1000,
    /**加载*/
    RefreshTag_Load,
};

#pragma mark - ZCwErrorServerCode 服务器定义返回的错误码
/**服务器定义的错误码*/
typedef NS_ENUM(NSUInteger, ZCwErrorServerCode){
    /**默认错误字符串*/
    ZCwErrorServerCode_Defaul = 8000,
    /**账号被强登*/
    ZCwErrorServerCode_UserLogoutForce,
    /**账号被禁用*/
    ZCwErrorServerCode_AccountDisable,
    /**用户被禁用*/
    ZCwErrorServerCode_UserDisable,
    /**修改密码被登出*/
    ZCwErrorServerCode_UserPMpwdLogout,
    /**登录界面账号为空*/
    ZCwErrorServerCode_AccountEmpty,
    /**登录界面密码为空*/
    ZCwErrorServerCode_PwsEmpty,
    /**登录界面账号只能为数字*/
    ZCwErrorServerCode_AccountOnlyNum,
    /**网络连接失败*/
    ZCwErrorServerCode_NetConnectFail,
    /**服务器重连*/
    ZCwErrorServerCode_ServerReconnect,
    /**超时*/
    ZCwErrorServerCode_OverTime,
    /**下单超时*/
    ZCwErrorServerCode_OrderOverTime,
    /**网络超时*/
    ZCwErrorServerCode_NetConnectOverTime,

} ;

/**本地错误码 客户端自定义的*/
typedef NS_ENUM(NSUInteger, ZCwErrorLocalCode){
    /**默认错误字符串*/
    ZCwErrorLocalCode_Defaul = 7000,
    /**账号被强登*/
    ZCwErrorLocalCode_UserLogoutForce,
    /**账号被禁用*/
    ZCwErrorLocalCode_AccountDisable,
    /**用户被禁用*/
    ZCwErrorLocalCode_UserDisable,
    /**修改密码被登出*/
    ZCwErrorLocalCode_UserPMpwdLogout,
    /**登录界面账号为空*/
    ZCwErrorLocalCode_AccountEmpty,
    /**登录界面密码为空*/
    ZCwErrorLocalCode_PwsEmpty,
    /**登录界面账号只能为数字*/
    ZCwErrorLocalCode_AccountOnlyNum,
    /**网络连接失败*/
    ZCwErrorLocalCode_NetConnectFail,
    /**服务器重连*/
    ZCwErrorLocalCode_ServerReconnect,
    /**超时*/
    ZCwErrorLocalCode_OverTime,
    /**下单超时*/
    ZCwErrorLocalCode_OrderOverTime,
    /**网络超时*/
    ZCwErrorLocalCode_NetConnectOverTime,

} ;

/**用户管理UserVCtag类型*/
typedef enum : NSUInteger {
    ZCwUserVCTag_add = 0,
    ZCwUserVCTag_show,
    ZCwUserVCTag_edit,
    
} ZCwUserVCTag;



#endif /* Enumeration_h */
