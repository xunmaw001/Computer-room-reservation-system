package com.entity.view;

import com.entity.JifangxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 机房信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
@TableName("jifangxinxi")
public class JifangxinxiView  extends JifangxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public JifangxinxiView(){
	}
 
 	public JifangxinxiView(JifangxinxiEntity jifangxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, jifangxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
