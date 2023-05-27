<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>

<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<%
    request.setCharacterEncoding("UTF-8");

    String filename = "";
    String realFolder = "C:/Program Files/Apache Software Foundation/Tomcat 9.0/webapps/ROOT/WebMarket/productImg";
    int maxSize = 5 * 1024 * 1024;
    String encType = "utf-8";

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

    String productId = multi.getParameter("productId");
    String pname = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String description = multi.getParameter("description");
    String manufacturer = multi.getParameter("menufacturer");
    String category = multi.getParameter("category");
    String unitsInStock = multi.getParameter("unitsInStock");
    String condition = multi.getParameter("condition");
    
    Integer price;

    if(unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.valueOf(unitPrice);

    long stock;

    if(unitsInStock.isEmpty())
        stock = 0;
    else
        stock = Long.valueOf(unitsInStock);

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);
    
    ProductRepository dao = ProductRepository.getInstance();

    Product newProduct = new Product();
    newProduct.setProductId(productId);
    newProduct.setPname(pname);
    newProduct.setPrice(price);
    newProduct.setDescription(description);
    newProduct.setManufacturer(manufacturer);
    newProduct.setCategory(category);
    newProduct.setInStock(stock);
    newProduct.setCondition(condition);
    newProduct.setFilename(fileName);

    dao.addProduct(newProduct);

    response.sendRedirect("products.jsp");
%>