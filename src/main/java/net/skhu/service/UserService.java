package net.skhu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.skhu.dto.User;
import net.skhu.mapper.UserMapper;
import net.skhu.utils.Encryption;

@Service
public class UserService {
	@Autowired UserMapper userMapper;

	public User login(String userId, String password) {
        User user = userMapper.findByuserId(userId);
        if (user == null) return null;
        String pw = Encryption.encrypt(password, Encryption.MD5);
        System.out.println(pw);
        if (user.getPassword().equals(pw) == false) return null;
        return user;
    }
}
