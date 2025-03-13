package com.entity.model;

import com.entity.JifangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 机房信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public class JifangxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
