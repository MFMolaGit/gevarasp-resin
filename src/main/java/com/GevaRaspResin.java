package com;

import com.pi4j.io.gpio.GpioController;
import com.pi4j.io.gpio.GpioFactory;
import com.pi4j.io.gpio.GpioPinDigitalOutput;
import com.pi4j.io.gpio.PinState;
import com.pi4j.io.gpio.RaspiPin;

public class GevaRaspResin {

	public static void main(String[] args) throws InterruptedException {
		System.out.println("Hola Java Resin with Led test!");
		
		 // crear controlador gpio
		 final GpioController gpio = GpioFactory.getInstance();

		 // provisionar pin #01 como output y encenderlo como estado inicial
		 final GpioPinDigitalOutput pin = gpio.provisionDigitalOutputPin(RaspiPin.GPIO_04, "MyLED", PinState.HIGH);
		 System.out.println("--> GPIO state: ON");

		 Thread.sleep(5000);

		 // apagarlo gpio pin #01
		 pin.low();
		 System.out.println("--> GPIO stat: OFF");
		 Thread.sleep(5000);
		 // cambiar al estado contrario (should turn on)
		 pin.toggle();
		 System.out.println("--> GPIO state: ON");
		 Thread.sleep(5000);
		 // toggle (should turn off)
		 pin.toggle();
		 System.out.println("--> GPIO state: OFF");

		 Thread.sleep(5000);
		 // encender gpio pin #01 1 segundo y apagar
		 System.out.println("--> GPIO state: ON 1 second");
		 pin.pulse(1000, true); // set second argument to 'true' use a blocking call

		 // acabar con todos los hilos del controlador gpio
		 gpio.shutdown();
	}

}
