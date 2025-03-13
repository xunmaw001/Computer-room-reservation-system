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


import com.dao.JifanghaoDao;
import com.entity.JifanghaoEntity;
import com.service.JifanghaoService;
import com.entity.vo.JifanghaoVO;
import com.entity.view.JifanghaoView;

@Service("jifanghaoService")
public class JifanghaoServiceImpl extends ServiceImpl<JifanghaoDao, JifanghaoEntity> implements JifanghaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<JifanghaoEntity> page = this.selectPage(
                new Query<JifanghaoEntity>(params).getPage(),
                new EntityWrapper<JifanghaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<JifanghaoEntity> wrapper) {
		  Page<JifanghaoView> page =new Query<JifanghaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<JifanghaoVO> selectListVO(Wrapper<JifanghaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public JifanghaoVO selectVO(Wrapper<JifanghaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<JifanghaoView> selectListView(Wrapper<JifanghaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public JifanghaoView selectView(Wrapper<JifanghaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
