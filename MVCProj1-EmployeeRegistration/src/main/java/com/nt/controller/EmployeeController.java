package com.nt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.bo.Employee;
import com.nt.validator.CustomValidator;

@Controller
public class EmployeeController {

	@Autowired
	private CustomValidator validator;

	@GetMapping("/welcome")
	public String home(@ModelAttribute("emp") Employee emp) {

		emp.setEmpId(846736);
		emp.setEmpName("Venkateswarlu");
		emp.setJob("Program Analyst");
		emp.setSalary(30000f);
		emp.setFatherName("Sreenivasulu");
		emp.setAddress("Madanapalle");

		return "index";
	}

	@PostMapping("/register")
	public String registration(Map<String, Object> map, @ModelAttribute("emp") Employee emp, BindingResult errors) {

		if (validator.supports(emp.getClass()))
			validator.validate(emp, errors);

		if (errors.hasErrors()) // if form validation errors are there
			return "index"; // lvn

		map.put("emp", emp);
		System.out.println(emp);
		return "result";
	}

}
