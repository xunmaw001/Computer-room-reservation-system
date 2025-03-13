package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JifanghaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JifanghaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JifanghaoView;


/**
 * 机房号
 *
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public interface JifanghaoService extends IService<JifanghaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JifanghaoVO> selectListVO(Wrapper<JifanghaoEntity> wrapper);
   	
   	JifanghaoVO selectVO(@Param("ew") Wrapper<JifanghaoEntity> wrapper);
   	
   	List<JifanghaoView> selectListView(Wrapper<JifanghaoEntity> wrapper);
   	
   	JifanghaoView selectView(@Param("ew") Wrapper<JifanghaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JifanghaoEntity> wrapper);
   	
}

