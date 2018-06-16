package net.skhu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import net.skhu.dto.User;

@Component
public class MyAuthenticationProvider implements AuthenticationProvider{

	@Autowired UserService userService;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String userId = authentication.getName();
        String password = authentication.getCredentials().toString();
        return authenticate(userId, password);
    }

    public Authentication authenticate(String userId, String password) throws AuthenticationException {
        User user = userService.login(userId, password);
        if (user == null) return null;

        List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
        String role = "";
        switch (user.getUserType_id()) {
        case 1: role = "ROLE_ADMIN"; break;
        case 2: role = "ROLE_USER"; break;
        }
        grantedAuthorities.add(new SimpleGrantedAuthority(role));
        return new MyAuthenticaion(userId, password, grantedAuthorities, user);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

    public class MyAuthenticaion extends UsernamePasswordAuthenticationToken {
        private static final long serialVersionUID = 1L;
        User user;

        public MyAuthenticaion (String userId, String passwd,
                                List<GrantedAuthority> grantedAuthorities, User user) {
            super(userId, passwd, grantedAuthorities);
            this.user = user;
        }

        public User getUser() {
            return user;
        }

        public void setUser(User user) {
            this.user = user;
        }
    }
}