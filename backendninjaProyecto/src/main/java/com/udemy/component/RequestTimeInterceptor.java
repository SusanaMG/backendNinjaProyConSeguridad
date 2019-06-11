package com.udemy.component;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.udemy.repository.LogRepository;

// TODO: Auto-generated Javadoc
/**
 * The Class RequestTimeInterceptor.
 */
/*
 * Clase para calcular el tiempo de las peticiones http
 */
@Component("requestTimeInterceptor")
public class RequestTimeInterceptor extends HandlerInterceptorAdapter {
	
	/** The log repository. */
	@Autowired
	@Qualifier("logRepository")
	private LogRepository logRepository;

	/** The Constant LOG. */
	private static final Log LOG = LogFactory.getLog(RequestTimeInterceptor.class);
	
	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.handler.HandlerInterceptorAdapter#preHandle(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object)
	 */
	//Se ejecuta antes de entrar en el método del controlador
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		request.setAttribute("startTime", System.currentTimeMillis());
		return true;
	}
	
	/* (non-Javadoc)
	 * @see org.springframework.web.servlet.handler.HandlerInterceptorAdapter#afterCompletion(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, java.lang.Object, java.lang.Exception)
	 */
	//Se ejecuta antes de mostrar la vista en el navegador
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		long startTime = (long) request.getAttribute("startTime");
		String url = request.getRequestURL().toString();
		String username = "";
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(null != auth && auth.isAuthenticated()) {
			username = auth.getName();
		}
		//Queda incluido en la siguiente sentencia
		//com.udemy.entity.Log log = new com.udemy.entity.Log(new Date(), auth.getDetails().toString(), username, url);
		logRepository.save(new com.udemy.entity.Log(new Date(), auth.getDetails().toString(), username, url));
		LOG.info("Url to: '" + url + "' in: '" + (System.currentTimeMillis() - startTime) + "ms'"); 
	}
}
