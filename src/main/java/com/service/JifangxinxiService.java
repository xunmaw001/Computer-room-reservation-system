package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.JifangxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.JifangxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.JifangxinxiView;


/**
 * 机房信息
 *
 * @author 
 * @email 
 * @date 2021-03-23 22:38:49
 */
public interface JifangxinxiService extends IService<JifangxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<JifangxinxiVO> selectListVO(Wrapper<JifangxinxiEntity> wrapper);
   	
   	JifangxinxiVO selectVO(@Param("ew") Wrapper<JifangxinxiEntity> wrapper);
   	
   	List<JifangxinxiView> selectListView(Wrapper<JifangxinxiEntity> wrapper);
   	
   	JifangxinxiView selectView(@Param("ew") Wrapper<JifangxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<JifangxinxiEntity> wrapper);
   	
}

