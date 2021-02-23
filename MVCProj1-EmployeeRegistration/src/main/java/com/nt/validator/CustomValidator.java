package com.nt.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.nt.bo.Employee;

@Component
public class CustomValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {

		System.out.println("CustomValidator.supports()");
		return clazz.isAssignableFrom(Employee.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
		System.out.println("CustomValidator.validate()");
		// type casting
		Employee emp = (Employee) target;
		
		// form validation logics (server side)
		if(emp.getEmpName()==null || emp.getEmpName().toString().isBlank())
			errors.rejectValue("empName", "ename.required");
		else if(emp.getEmpName().toString().length()<5)
			errors.rejectValue("empName", "ename.minlen");
		
		if(emp.getFatherName()==null || emp.getFatherName().toString().isBlank())
			errors.rejectValue("fatherName", "fname.required");
		else if(emp.getFatherName().toString().length()<5)
			errors.rejectValue("fatherName", "fname.minlen");

		
		
		
	}

}
