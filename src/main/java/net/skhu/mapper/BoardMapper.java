package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.dto.Board;


@Mapper
public interface BoardMapper {
	Board findOne(int id);
	void update(Board board);
	List<Board> findAll();
}
