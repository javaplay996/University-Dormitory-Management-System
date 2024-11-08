package com.entity.vo;

import com.entity.DianbiaoEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 电表
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email
 * @date 2021-04-23
 */
@TableName("dianbiao")
public class DianbiaoVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 宿舍
     */

    @TableField(value = "sushe_id")
    private Integer susheId;


    /**
     * 电表编号
     */

    @TableField(value = "dianbiao_number")
    private String dianbiaoNumber;


    /**
     * 电表余额
     */

    @TableField(value = "dianbiao_money")
    private Double dianbiaoMoney;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：宿舍
	 */
    public Integer getSusheId() {
        return susheId;
    }


    /**
	 * 获取：宿舍
	 */

    public void setSusheId(Integer susheId) {
        this.susheId = susheId;
    }
    /**
	 * 设置：电表编号
	 */
    public String getDianbiaoNumber() {
        return dianbiaoNumber;
    }


    /**
	 * 获取：电表编号
	 */

    public void setDianbiaoNumber(String dianbiaoNumber) {
        this.dianbiaoNumber = dianbiaoNumber;
    }
    /**
	 * 设置：电表余额
	 */
    public Double getDianbiaoMoney() {
        return dianbiaoMoney;
    }


    /**
	 * 获取：电表余额
	 */

    public void setDianbiaoMoney(Double dianbiaoMoney) {
        this.dianbiaoMoney = dianbiaoMoney;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
