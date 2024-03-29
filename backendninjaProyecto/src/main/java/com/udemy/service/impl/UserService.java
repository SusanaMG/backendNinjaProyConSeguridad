package com.udemy.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.udemy.entity.UserRole;
import com.udemy.repository.UserRepository;



// TODO: Auto-generated Javadoc
/**
 * The Class UserService.
 */
@Service("userService")
public class UserService implements UserDetailsService {

	/** The user repository. */
	@Autowired
	@Qualifier("userRepository")
	private UserRepository userRepository;
	
	/* (non-Javadoc)
	 * @see org.springframework.security.core.userdetails.UserDetailsService#loadUserByUsername(java.lang.String)
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		com.udemy.entity.User user = userRepository.findByUsername(username);
		List<GrantedAuthority> authorities = buildAuthorities(user.getUserRole());
		return buildUser(user, authorities);
	}
	
	/**
	 * Devuelve un objeto User que es el tipo de objeto que Spring Security necesita.
	 *
	 * @param user the user
	 * @param authorities the authorities
	 * @return the user
	 */
	private User buildUser(com.udemy.entity.User user, List<GrantedAuthority> authorities) {	
		return new User(user.getUsername(), user.getPassword(), user.isEnabled(), true, true, true, authorities);
	}
	
	/**
	 * Convierte los roles que tenemos en una lista de GrantedAuthority.
	 *
	 * @param userRoles the user roles
	 * @return the list
	 */
	private List<GrantedAuthority> buildAuthorities (Set<UserRole> userRoles) {
		Set<GrantedAuthority> auths = new HashSet<GrantedAuthority>();
		for(UserRole userRole : userRoles) {
			auths.add(new SimpleGrantedAuthority(userRole.getRole()));
		}
		return new ArrayList<GrantedAuthority>(auths);
	}
}

