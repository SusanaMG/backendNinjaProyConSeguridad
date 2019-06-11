package com.udemy.component;

import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Para ejecutar procesos repetitivos con Spring.
 * Usado para enviar correo automáticos, eliminar datos de BBDD, etc
 */
@Component("taskComponent")
public class TaskComponent {
	
		private static final Log LOG = LogFactory.getLog(TaskComponent.class);
		
		//@Scheduled(fixedDelay = 5000)		//Cada 5 segundos
		@Scheduled(fixedDelay = 60000)		//Cada 60 segundos
		public void doTask( ) {
			LOG.info("TIME IS: " + new Date());
		}
}
