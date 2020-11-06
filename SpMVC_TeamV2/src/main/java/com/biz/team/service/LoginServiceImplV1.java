package com.biz.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.team.mapper.LoginDao;
import com.biz.team.model.LoginVO;

@Service("loginServiceV1")
public class LoginServiceImplV1 implements LoginService{

	@Autowired
	private LoginDao loginDao;
	
	
	@Override
	public List<LoginVO> selectAll() {
		// TODO Auto-generated method stub
		return loginDao.selectAll();
	}

	@Override
	public LoginVO findBySeq(long seq) {
		// TODO Auto-generated method stub
		return loginDao.findBySeq(seq);
	}

	@Override
	public int insert(LoginVO logVO) {
		// TODO Auto-generated method stub
		return loginDao.insert(logVO);
	}

	@Override
	public int update(LoginVO logVO) {
		// TODO Auto-generated method stub
		return loginDao.update(logVO);
	}

	@Override
	public int delete(long seq) {
		// TODO Auto-generated method stub
		return loginDao.delete(seq);
	}

}
