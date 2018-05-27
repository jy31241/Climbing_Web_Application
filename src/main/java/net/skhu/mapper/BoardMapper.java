package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.dto.Board;


@Mapper
public interface BoardMapper {

	Board findOne(int id);

	Board findByuserId(String userId);

	List<Board> findAll();

	void insert(Board board);

	void update(Board board);

	void delete(int id);

}
