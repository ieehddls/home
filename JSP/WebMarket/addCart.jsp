<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
   String id = request.getParameter("id");
   if(id == null || id.trim().equals("")){
      response.sendRedirect("products.jsp");
      return;
   }
   
   ProductRepository dao = ProductRepository.getInstance();
   
   Product product = dao.getProductById(id);
   if(product == null){
      response.sendRedirect("exceptionNoProduct.jsp");
   }
   
   ArrayList<Product> goodsList = dao.getAllProducts();
   Product goods = new Product();
   
   for(int i = 0; i< goodsList.size(); i++){
      goods = goodsList.get(i);
      if (goods.getProductId().equals(id)){
         break;
      }
   }
   ArrayList<Product> list = (ArrayList<Product>) session.getAttribute("cartList");
   if(list== null){
      list = new ArrayList<Product>();
      session.setAttribute("cartlist",list);
   }
   
   int cnt = 0;
   Product goodQnt = new Product();
   
   for(int i = 0; i< list.size(); i++){
      goodQnt =list.get(i);
      if (goodQnt.getProductId().equals(id)){
         cnt++;
         int orderQuantity = goodQnt.getQuantity() + 1;
         goodQnt.setQuantity(orderQuantity);
      }
   }
   
   if(cnt == 0){
      goods.setQuantity(1);
      list.add(goods);
   }
   
   response.sendRedirect("product.jsp?id=" + id);
%>
   
   
   
   
   
   
   
   