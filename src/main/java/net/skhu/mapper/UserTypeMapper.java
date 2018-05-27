package net.skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import net.skhu.dto.UserType;

@Mapper
public interface UserTypeMapper {
	List<UserType> findAll();
}
