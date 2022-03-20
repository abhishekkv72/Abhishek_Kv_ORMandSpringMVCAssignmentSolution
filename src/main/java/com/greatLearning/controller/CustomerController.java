package com.greatLearning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatLearning.customerRelationshipManagement.Customer;
import com.greatLearning.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String listCustomer(Model model) {

		List<Customer> customer = customerService.findAll();

		model.addAttribute("Customer", customer);
		return "List-Customer";
	}

	@PostMapping("/save")
	public String saveCustomer(@RequestParam("id") int id, @RequestParam("firstname") String firstName,
			@RequestParam("lastName") String lastName, @RequestParam("email") String email
			) {

		Customer customer;
		if (id != 0) {
			customer = customerService.findById(id);
			customer.setFirstName(firstName);
			customer.setLastName(lastName);
			customer.setEmail(email);

		} else {
			customer = new Customer(id, firstName, lastName, email);
		}
		customerService.save(customer);
		return "redirect:/customer/list";
	}

	@RequestMapping("/delete")
	public String deleteCustomer(@RequestParam("id") int id) {

		customerService.deleteById(id);
		return "redirect:/customer/list";

	}

	@RequestMapping("/showFormForAdd")
	public String deleteCustomer(Model model) {

		Customer customer = new Customer();

		model.addAttribute("Customer", customer);
		return "Customer-form";
	}

	@RequestMapping("/showFormForUpdate")
	public String deleteCustomer(@RequestParam("id") int id, Model model) {

		Customer customer = customerService.findById(id);

		model.addAttribute("customer", customer);
		return "customer-form";

	}
}


