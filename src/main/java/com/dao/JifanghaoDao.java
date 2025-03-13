package com.dao;

import com.entity.JifanghaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JifanghaoVO;
import com.entity.view.JifanghaoView;


/**
 * 机房号
 * 
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public interface JifanghaoDao extends BaseMapper<JifanghaoEntity> {
	
	List<JifanghaoVO> selectListVO(@Param("ew") Wrapper<JifanghaoEntity> wrapper);
	
	JifanghaoVO selectVO(@Param("ew") Wrapper<JifanghaoEntity> wrapper);
	
	List<JifanghaoView> selectListView(@Param("ew") Wrapper<JifanghaoEntity> wrapper);

	List<JifanghaoView> selectListView(Pagination page,@Param("ew") Wrapper<JifanghaoEntity> wrapper);
	
	JifanghaoView selectView(@Param("ew") Wrapper<JifanghaoEntity> wrapper);
	
}
