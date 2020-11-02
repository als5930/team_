package com.biz.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.team.mapper.BoardDao;
import com.biz.team.model.BoardVO;
import com.biz.team.model.TeamVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service("boradServiceV1")
public class BoardServiceImpl implements BoardService{

	@Autowired
	protected  BoardDao boardDao;
	
	
	@Override
	public List<BoardVO> selectAll() {
		
		return boardDao.selectAll();
	}

	@Override
	public BoardVO findBySeq(long seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(BoardVO boardVO) {
		
		
	}

	@Override
	public int update(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(long seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
