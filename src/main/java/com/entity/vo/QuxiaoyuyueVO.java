package com.entity.vo;

import com.entity.QuxiaoyuyueEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 取消预约
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public class QuxiaoyuyueVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 机房号
	 */
	
	private String jifanghao;
		
	/**
	 * 日期
	 */
	
	private String riqi;
		
	/**
	 * 时段
	 */
	
	private String shiduan;
		
	/**
	 * 座位号
	 */
	
	private String zuoweihao;
		
	/**
	 * 取消理由
	 */
	
	private String quxiaoliyou;
		
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 身份证
	 */
	
	private String shenfenzheng;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
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
	 * 设置：座位号
	 */
	 
	public void setZuoweihao(String zuoweihao) {
		this.zuoweihao = zuoweihao;
	}
	
	/**
	 * 获取：座位号
	 */
	public String getZuoweihao() {
		return zuoweihao;
	}
				
	
	/**
	 * 设置：取消理由
	 */
	 
	public void setQuxiaoliyou(String quxiaoliyou) {
		this.quxiaoliyou = quxiaoliyou;
	}
	
	/**
	 * 获取：取消理由
	 */
	public String getQuxiaoliyou() {
		return quxiaoliyou;
	}
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：身份证
	 */
	 
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
