package com.udemy.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

// TODO: Auto-generated Javadoc
/**
 * Para añadir una configuración que no se puede añadir en el application.yml
 */
@Configuration
@EnableWebSecurity		//Para habilitar la seguridad web
@EnableGlobalMethodSecurity(prePostEnabled=true)		//Para controlar con anotaciones el acceso a metodos con seguridad
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	/** The user service. */
	@Autowired
	@Qualifier("userService")
	private UserDetailsService userService;
	
	/**
	 * Para añadir el UserDetailService que hemos creado en el proyecto.
	 *
	 * @param auth the auth
	 * @throws Exception the exception
	 */
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService).passwordEncoder(new BCryptPasswordEncoder());
	}
	
	/**
	 * Acepta como parámetro el HttpSecurity.
	 *
	 * @param http the http
	 * @throws Exception the exception
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/css/*", "/imgs/*").permitAll()						//Se cargan los recursos estáticos
		.anyRequest().authenticated()
		.and()
		.formLogin().loginPage("/login").loginProcessingUrl("/logincheck")
		.usernameParameter("username").passwordParameter("password")
		.defaultSuccessUrl("/loginsuccess").permitAll()
		.and()
		.logout().logoutUrl("/logout").logoutSuccessUrl("/login?logout")
		.permitAll();
	}

}
