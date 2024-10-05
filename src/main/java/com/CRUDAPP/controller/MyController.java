package com.CRUDAPP.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.annotations.ParamDef;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.CRUDAPP.Dao.ProductDao;
import com.CRUDAPP.model.Product;

@Controller
public class MyController {
	@Autowired
	private ProductDao productDao;
	public ProductDao getProductDao() {
		return productDao;
	}
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	@RequestMapping("/")
	public String home(Model model) {
		System.out.println("home p[age is running........");
		List<Product> products=this.productDao.show();
		model.addAttribute("products",products);
		return "index";
	}
	@RequestMapping("/addProduct")
	public String addPoduct() {
		return "AddProduct";
	}
	@RequestMapping(path = "/submitted",method = RequestMethod.POST)
	public RedirectView submitted(@ModelAttribute Product product,Model model,HttpServletRequest request) {
		this.productDao.productSave(product);
		System.out.println("record inserted with ");
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	@RequestMapping("update/{id}")
	public String updateform(@PathVariable("id") int id,Model model) {
		Product product=this.productDao.getProduct(id);
		model.addAttribute("product",product);
		return "updateform";
	}
	@RequestMapping("delete/{id}")
	public String deleteform(@PathVariable("id")int productid) {
		this.productDao.deleteProduct(productid);
		System.out.println("the product deleted with id"+productid);
		return "redirect:/";
		
		
	}
	

}
