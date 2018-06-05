package net.skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.dto.Mountain;

@Mapper
public interface MountainMapper {
	Mountain findOne(int id);
}
