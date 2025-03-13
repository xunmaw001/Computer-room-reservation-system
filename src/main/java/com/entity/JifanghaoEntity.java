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
 * 机房号
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
@TableName("jifanghao")
public class JifanghaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public JifanghaoEntity() {
		
	}
	
	public JifanghaoEntity(T t) {
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
	 * 机房编号
	 */
					
	private String jifangbianhao;
	
	/**
	 * 最大容量
	 */
					
	private String zuidarongliang;
	
	/**
	 * 座位号
	 */
					
	private String zuoweihao;
	
	
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
	 * 设置：机房编号
	 */
	public void setJifangbianhao(String jifangbianhao) {
		this.jifangbianhao = jifangbianhao;
	}
	/**
	 * 获取：机房编号
	 */
	public String getJifangbianhao() {
		return jifangbianhao;
	}
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
