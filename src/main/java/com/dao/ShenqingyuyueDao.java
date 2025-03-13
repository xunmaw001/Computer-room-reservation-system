package com.dao;

import com.entity.ShenqingyuyueEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShenqingyuyueVO;
import com.entity.view.ShenqingyuyueView;


/**
 * 申请预约
 * 
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public interface ShenqingyuyueDao extends BaseMapper<ShenqingyuyueEntity> {
	
	List<ShenqingyuyueVO> selectListVO(@Param("ew") Wrapper<ShenqingyuyueEntity> wrapper);
	
	ShenqingyuyueVO selectVO(@Param("ew") Wrapper<ShenqingyuyueEntity> wrapper);
	
	List<ShenqingyuyueView> selectListView(@Param("ew") Wrapper<ShenqingyuyueEntity> wrapper);

	List<ShenqingyuyueView> selectListView(Pagination page,@Param("ew") Wrapper<ShenqingyuyueEntity> wrapper);
	
	ShenqingyuyueView selectView(@Param("ew") Wrapper<ShenqingyuyueEntity> wrapper);
	
}
