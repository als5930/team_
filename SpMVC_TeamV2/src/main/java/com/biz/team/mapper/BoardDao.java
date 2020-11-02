package com.biz.team.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.biz.team.model.BoardVO;

public interface BoardDao {
	
	@Select("SELECT * FROM tbl_board ORDER BY b_seq DESC")
	public List<BoardVO> selectAll();
	
	@Select("SELECT * FROM tbl_board WHERE b_seq =#{seq}")
	public BoardVO findBySeq(long seq);
	
	
	
	public int insert(BoardVO bbsVO);
	
	
	public int update(BoardVO bbsVO);
	
	
	public int delete(long seq);

}
