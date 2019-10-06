package com.works.admin;

import java.nio.charset.Charset;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Admin;
import model.Contact;
import model.Neworder;
import model.Product;
import model.User;
import util.HibernateUtil;
import util.Util;

@Controller
@RequestMapping("/admin")
public class AdminsettingsController {

	int editID = 0;

	SessionFactory sf = HibernateUtil.getSessionFactory();

	@RequestMapping(value = "/adminsettings", method = RequestMethod.GET)
	public String adminsettings(HttpServletRequest req, Model model) {

		Session sesi = sf.openSession();

		List<Product> productcount = sesi.createQuery("from Product").list();
		List<User> usercount = sesi.createQuery("from User").list();
		List<Neworder> ordercount = sesi.createQuery("from Neworder").list();
		List<Contact> contactcount = sesi.createQuery("from Contact").list();

		model.addAttribute("productcount", productcount.size());
		model.addAttribute("usercount", usercount.size());
		model.addAttribute("ordercount", ordercount.size());
		model.addAttribute("contactcount", contactcount.size());

		List<Admin> ls = sesi.createQuery("from Admin").getResultList();
		model.addAttribute("ls", ls);

		return Util.control(req, "adminsettings");

	}

	@RequestMapping(value = "/adminInsert", method = RequestMethod.POST)
	public String adminInsert(HttpServletRequest req, Admin adm) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		byte[] array = new byte[7];
		new Random().nextBytes(array);
		String generatedString = new String(array, Charset.forName("UTF-8"));
		adm.setAdminpasscode(Util.MD5(generatedString));
		long start = System.currentTimeMillis();
		System.out.println("start : " + start);
		int id = (int) sesi.save(adm);
		System.out.println("insert id : " + id);
		long end = System.currentTimeMillis();
		System.out.println("end : " + end);
		long bettwen = end - start;
		System.out.println("bettwen : " + bettwen);
		tr.commit();
		return Util.control(req, "redirect:/admin/adminsettings");
	}

	@RequestMapping(value = "/deleteAdmin/{adminid}")
	public String adminDelete(@PathVariable int adminid, HttpServletRequest req) {

		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		Admin adm = sesi.load(Admin.class, adminid);
		sesi.delete(adm);
		tr.commit();

		return Util.control(req, "redirect:/admin/adminsettings");
	}

	@RequestMapping(value = "/adminUpdate/{adminid}")
	public String adminEdit(@PathVariable int adminid, Model model, HttpServletRequest req) {

		editID = adminid;

		Session sesi = sf.openSession();

		Admin adm = sesi.load(Admin.class, adminid);
		model.addAttribute("us", adm);

		List<Product> productcount = sesi.createQuery("from Product").list();
		List<User> usercount = sesi.createQuery("from User").list();
		List<Neworder> ordercount = sesi.createQuery("from Neworder").list();
		List<Contact> contactcount = sesi.createQuery("from Contact").list();

		model.addAttribute("productcount", productcount.size());
		model.addAttribute("usercount", usercount.size());
		model.addAttribute("ordercount", ordercount.size());
		model.addAttribute("contactcount", contactcount.size());

		List<Admin> ls = sesi.createQuery("from Admin").getResultList();
		model.addAttribute("ls", ls);

		return "admin/adminsettings";
	}

	@RequestMapping(value = "/adminUpdate")
	public String edit(Admin us, HttpServletRequest req) {
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		us.setAdminid(editID);
		sesi.update(us);

		tr.commit();
		return Util.control(req, "redirect:/admin/adminsettings");
	}
}
