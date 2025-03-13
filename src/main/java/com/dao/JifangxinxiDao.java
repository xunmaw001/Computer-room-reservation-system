package com.dao;

import com.entity.JifangxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JifangxinxiVO;
import com.entity.view.JifangxinxiView;


/**
 * 机房信息
 * 
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public interface JifangxinxiDao extends BaseMapper<JifangxinxiEntity> {
	
	List<JifangxinxiVO> selectListVO(@Param("ew") Wrapper<JifangxinxiEntity> wrapper);
	
	JifangxinxiVO selectVO(@Param("ew") Wrapper<JifangxinxiEntity> wrapper);
	
	List<JifangxinxiView> selectListView(@Param("ew") Wrapper<JifangxinxiEntity> wrapper);

	List<JifangxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<JifangxinxiEntity> wrapper);
	
	JifangxinxiView selectView(@Param("ew") Wrapper<JifangxinxiEntity> wrapper);
	
}
