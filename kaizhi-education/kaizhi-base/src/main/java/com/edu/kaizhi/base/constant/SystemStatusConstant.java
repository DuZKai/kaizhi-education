package com.edu.kaizhi.base.constant;

public class SystemStatusConstant {
    // 公共属性类型
    public static final String ACTIVE = "1"; // 使用态
    public static final String DELETED = "0"; // 删除态
    public static final String TEMPORARY = "-1"; // 暂时态

    // 对象的审核状态
    public static final String REVIEW_NOT_PASSED = "002001"; // 审核未通过
    public static final String NOT_REVIEWED = "002002"; // 未审核
    public static final String REVIEW_PASSED = "002003"; // 审核通过

    // 资源类型
    public static final String IMAGE = "001001"; // 图片
    public static final String VIDEO = "001002"; // 视频
    public static final String OTHER = "001003"; // 其它

    // 课程审核状态
    public static final String COURSE_REVIEW_NOT_PASSED = "202001"; // 审核未通过
    public static final String COURSE_NOT_SUBMITTED = "202002"; // 未提交
    public static final String COURSE_SUBMITTED = "202003"; // 已提交
    public static final String COURSE_REVIEW_PASSED = "202004"; // 审核通过

    // 课程收费情况
    public static final String FREE = "201000"; // 免费
    public static final String CHARGE = "201001"; // 收费

    // 课程等级
    public static final String BEGINNER = "204001"; // 初级
    public static final String INTERMEDIATE = "204002"; // 中级
    public static final String ADVANCED = "204003"; // 高级

    // 课程模式状态
    public static final String RECORDED = "200002"; // 录播
    public static final String LIVE = "200003"; // 直播

    // 课程发布状态
    public static final String UNPUBLISHED = "203001"; // 未发布
    public static final String PUBLISHED = "203002"; // 已发布
    public static final String OFFLINE = "203003"; // 下线

    // 订单交易类型状态
    public static final String UNPAID = "600001"; // 未支付
    public static final String PAID = "600002"; // 已支付
    public static final String CLOSED = "600003"; // 已关闭
    public static final String REFUNDED = "600004"; // 已退款
    public static final String COMPLETED = "600005"; // 已完成

    // 课程作业记录审批状态
    public static final String HOMEWORK_NOT_SUBMITTED = "306001"; // 未提交
    public static final String HOMEWORK_PENDING_REVIEW = "306002"; // 待批改
    public static final String HOMEWORK_REVIEWED = "306003"; // 已批改

    // 消息通知状态
    public static final String NOT_NOTIFIED = "003001"; // 未通知
    public static final String NOTIFICATION_SUCCESS = "003002"; // 成功

    // 支付记录交易状态
    public static final String PAYMENT_UNPAID = "601001"; // 未支付
    public static final String PAYMENT_PAID = "601002"; // 已支付
    public static final String PAYMENT_REFUNDED = "601003"; // 已退款

    // 业务订单类型
    public static final String ORDER_TYPE_COURSE_PURCHASE = "602001"; // 购买课程
    public static final String ORDER_TYPE_LEARNING_MATERIAL = "602002"; // 学习资料

    // 第三方支付渠道编号
    public static final String WECHAT_PAYMENT = "603001"; // 微信支付
    public static final String ALIPAY_PAYMENT = "603002"; // 支付宝

    // 选课类型
    public static final String FREE_COURSE = "700001"; // 免费课程
    public static final String PAID_COURSE = "700002"; // 收费课程

    // 选课状态
    public static final String COURSE_SELECTION_SUCCESS = "701001"; // 选课成功
    public static final String COURSE_SELECTION_PENDING_PAYMENT = "701002"; // 待支付

    // 选课学习资格
    public static final String ELIGIBLE_TO_LEARN = "702001"; // 正常学习
    public static final String NO_COURSE_SELECTED_OR_UNPAID = "702002"; // 没有选课或选课后没有支付
    public static final String EXPIRED_REQUIRES_RENEWAL_OR_REPAYMENT = "702003"; // 已过期需要申请续期或重新支付

    // 广告课程
    public static final String NORMAL_COURSE = "800001"; // 正常课程
    public static final String ADVERTISING_COURSE = "800002"; // 广告课程
}
