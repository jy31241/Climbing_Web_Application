package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.dto.BoardType;

@Mapper
public interface BoardTypeMapper {
	List<BoardType> findAll();
}