package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.JifangxinxiDao;
import com.entity.JifangxinxiEntity;
import com.service.JifangxinxiService;
import com.entity.vo.JifangxinxiVO;
import com.entity.view.JifangxinxiView;

@Service("jifangxinxiService")
public class JifangxinxiServiceImpl extends ServiceImpl<JifangxinxiDao, JifangxinxiEntity> implements JifangxinxiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JifangxinxiEntity> page = this.selectPage(
                new Query<JifangxinxiEntity>(params).getPage(),
                new EntityWrapper<JifangxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JifangxinxiEntity> wrapper) {
		  Page<JifangxinxiView> page =new Query<JifangxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JifangxinxiVO> selectListVO(Wrapper<JifangxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JifangxinxiVO selectVO(Wrapper<JifangxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JifangxinxiView> selectListView(Wrapper<JifangxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JifangxinxiView selectView(Wrapper<JifangxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
