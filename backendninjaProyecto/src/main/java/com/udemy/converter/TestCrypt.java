package com.udemy.converter;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class TestCrypt {

	/**
	 * Para obtener una contraseña encriptada
	 * Se usa la primera vez, para crear el primer usuario y meterlo en la BBDD
	 * @param args
	 */
	public static void main(String[] args) {
		BCryptPasswordEncoder pe = new BCryptPasswordEncoder();
		System.out.println(pe.encode("user"));
	}
}
