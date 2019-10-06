package com.works.foodtownproject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Contact;
import util.HibernateUtil;

@Controller
public class ContactusController {

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String contactus() {
		IncludeController.page = "/";
		return "site/contactus";
	}

	@RequestMapping(value = "/contactusInsert", method = RequestMethod.POST)
	public String contactusInsert(Contact us) {
		IncludeController.page = "/";
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		int id = (Integer) sesi.save(us);
		if (id > 0) {
			System.out.println("contactusInsert successful");
		}
		tr.commit();
		return "redirect:/";
	}
}
