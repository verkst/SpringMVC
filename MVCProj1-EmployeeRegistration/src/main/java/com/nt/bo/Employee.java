package com.nt.bo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee implements Serializable {
	
	private Integer empId;
	private String empName;
	private String job;
	private Float salary;
	private String fatherName;
	private String address;

}
