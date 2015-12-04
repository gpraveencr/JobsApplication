/**
 * 
 */
package com.jobs.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author PraveenGangasani
 *
 */
@Controller
public class HomeController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String homePage(ModelMap map) {
		return "/home";
	}
	
}
