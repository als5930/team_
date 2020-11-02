package com.biz.team.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.biz.team.model.BoardVO;
import com.biz.team.model.TeamVO;

public interface BoardService {
	
	public List<BoardVO> selectAll();
	public BoardVO findBySeq(long seq);
	public void insert(BoardVO boardVO);
	public int update(BoardVO boardVO);
	public int delete(long seq);


}
