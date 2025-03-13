package com.entity.model;

import com.entity.JifanghaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 机房号
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public class JifanghaoModel  implements Serializable {
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
