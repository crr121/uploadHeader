package com.cr.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cr.dao.CustomerDAO;
import com.cr.entity.Customer;
import com.google.gson.Gson;

public class CustomerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		//解决乱码
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		//获取页面传递的参数
		String username = req.getParameter("username");
		String pwd = req.getParameter("pwd");
		
		Customer customer = new Customer(-1, username, pwd, "");
		
		System.out.println(username);
		System.out.println(pwd);
		PrintWriter out = resp.getWriter();
		//调用后端方法，获取账户名和密码
		CustomerDAO cd = new CustomerDAO();
		Customer customerInfo = cd.findCustomer(customer);
		System.out.println(customerInfo);
		if(customerInfo!=null){
//			req.getRequestDispatcher("photo.jsp").forward(req, resp);
			/*req.setAttribute("username", username);
			req.setAttribute("pwd", pwd);*/
			
			//组装JSON数据
			String customerJson = new Gson().toJson(customerInfo);
			//设置返回的格式
			resp.setContentType("text/json");
			//输出到页面
			out.print(customerJson);
			resp.sendRedirect("photo.jsp");
		}else{
			out.print("ERROR");
		}
	}

}
