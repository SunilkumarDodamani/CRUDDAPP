package com.CRUDAPP.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import org.springframework.stereotype.Repository;

import com.CRUDAPP.model.Product;

import antlr.collections.impl.IntRange;

@Repository
public class ProductDao {
 @Autowired
 private HibernateTemplate hibernateTemplate;
 
 @Transactional
 public void productSave(Product product) {
	 this.hibernateTemplate.saveOrUpdate(product);;
	
 } 
 
 public Product getProduct(int id) {
	 Product product=this.hibernateTemplate.get(Product.class, id);
	 return product;
	 
 }
  
 public List<Product> show() {
	 List<Product> products=this.hibernateTemplate.loadAll(Product.class);
	 return products;
 }
 @Transactional
 public void deleteProduct(int id) {
	 Product product=this.getProduct(id);
	 this.hibernateTemplate.delete(product);
 }

public HibernateTemplate getHibernateTemplate() {
	return hibernateTemplate;
}


public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
	this.hibernateTemplate = hibernateTemplate;
}



}
