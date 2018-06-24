package net.skhu.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.dto.Board;


@Mapper
public interface BoardMapper {
	Board findOne(int id);
	void insert(HashMap param);
	List<Board> findAll();
	List<Board> findAllbyRegion(int id);
	List<Board> findByBestLimit();
	List<Board> findByLastestMozip();
}
