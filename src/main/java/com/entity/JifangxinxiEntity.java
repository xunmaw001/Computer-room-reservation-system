package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 机房信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
@TableName("jifangxinxi")
public class JifangxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JifangxinxiEntity() {
		
	}
	
	public JifangxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 编号
	 */
					
	private String bianhao;
	
	/**
	 * 机房号
	 */
					
	private String jifanghao;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 日期
	 */
					
	private String riqi;
	
	/**
	 * 时段
	 */
					
	private String shiduan;
	
	/**
	 * 空闲座位
	 */
					
	private String kongxianzuowei;
	
	/**
	 * 详情
	 */
					
	private String xiangqing;
	
	/**
	 * 状态
	 */
					
	private String zhuangtai;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：编号
	 */
	public void setBianhao(String bianhao) {
		this.bianhao = bianhao;
	}
	/**
	 * 获取：编号
	 */
	public String getBianhao() {
		return bianhao;
	}
	/**
	 * 设置：机房号
	 */
	public void setJifanghao(String jifanghao) {
		this.jifanghao = jifanghao;
	}
	/**
	 * 获取：机房号
	 */
	public String getJifanghao() {
		return jifanghao;
	}
	/**
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：日期
	 */
	public void setRiqi(String riqi) {
		this.riqi = riqi;
	}
	/**
	 * 获取：日期
	 */
	public String getRiqi() {
		return riqi;
	}
	/**
	 * 设置：时段
	 */
	public void setShiduan(String shiduan) {
		this.shiduan = shiduan;
	}
	/**
	 * 获取：时段
	 */
	public String getShiduan() {
		return shiduan;
	}
	/**
	 * 设置：空闲座位
	 */
	public void setKongxianzuowei(String kongxianzuowei) {
		this.kongxianzuowei = kongxianzuowei;
	}
	/**
	 * 获取：空闲座位
	 */
	public String getKongxianzuowei() {
		return kongxianzuowei;
	}
	/**
	 * 设置：详情
	 */
	public void setXiangqing(String xiangqing) {
		this.xiangqing = xiangqing;
	}
	/**
	 * 获取：详情
	 */
	public String getXiangqing() {
		return xiangqing;
	}
	/**
	 * 设置：状态
	 */
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	/**
	 * 获取：状态
	 */
	public String getZhuangtai() {
		return zhuangtai;
	}

}
