package com.biz.team.service;

import java.util.List;

import com.biz.team.model.JoinVO;
import com.biz.team.model.LoginVO;

public interface LoginService {

	public List<LoginVO> selectAll();
	public LoginVO findBySeq(long seq);
	public int insert(LoginVO logVO);
	public int update(LoginVO logVO);
	public int delete(long seq);
	
}
