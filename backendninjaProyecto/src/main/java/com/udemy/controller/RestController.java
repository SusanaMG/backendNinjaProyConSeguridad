package com.udemy.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.udemy.model.ContactModel;

/**
 * Clase para crear un controlador Rest
 * Se usa en la parte front una tecnología en la que el cliente monta las plantillas con la
 * información que recibe: ejemplo de este tipo de framework es Angular1
 */
@org.springframework.web.bind.annotation.RestController
@RequestMapping("/rest")
public class RestController {

	
	/* //Primer ejemplo: devuelve String
	@GetMapping("/checkrest")
	public ResponseEntity<String> checkRest() {
		return new ResponseEntity<String>("OK!", HttpStatus.OK);
	}
	 */
	
	//Segundo ejemplo: devuelve objeto en forma de JSON
	//Devuelve: {"id":2,"firstname":"Mikel","lastname":"Pérez","telephone":"12354665","city":"Madrid"}
	@GetMapping("/checkrest")
	public ResponseEntity<ContactModel> checkRest() {
		ContactModel cm = new ContactModel(2, "Mikel", "Pérez", "12354665", "Madrid");
		return new ResponseEntity<ContactModel>(cm, HttpStatus.OK);
	}

	
	
	
	
}
