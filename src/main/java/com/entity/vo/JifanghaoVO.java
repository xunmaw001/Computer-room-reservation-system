package com.entity.vo;

import com.entity.JifanghaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 机房号
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public class JifanghaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 最大容量
	 */
	
	private String zuidarongliang;
		
	/**
	 * 座位号
	 */
	
	private String zuoweihao;
				
	
	/**
	 * 设置：最大容量
	 */
	 
	public void setZuidarongliang(String zuidarongliang) {
		this.zuidarongliang = zuidarongliang;
	}
	
	/**
	 * 获取：最大容量
	 */
	public String getZuidarongliang() {
		return zuidarongliang;
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
			
}
