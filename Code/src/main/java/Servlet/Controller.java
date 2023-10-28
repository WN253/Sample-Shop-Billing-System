package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Register;
import Dao.Dao;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String action = request.getParameter("action");
		Dao dobj = new Dao();
		HttpSession ses = request.getSession();

//CASHIER REGISTER
//CASHIER REGISTER
//CASHIER REGISTER

		if (action.equals("reg")) {
			Register robj = new Register(); // create new object to stores values of register.jsp to object robj (Below
											// Codes for each values)
			robj.setName(request.getParameter("name")); // get Parameter from the value(here "name") from register.jsp
			robj.setUsername(request.getParameter("username"));
			robj.setEmail(request.getParameter("email"));
			robj.setAddress(request.getParameter("addr"));
			robj.setDOB(request.getParameter("dob"));
			robj.setPassword(request.getParameter("pass"));

			String result = dobj.registercust(robj); // to store result of public String regUser(Register robj) from
														// dao)
			// so the output of dobj.regUser(robj) is return value of dao method reguser
			// (either success or "")
			// here dao method is called "reguser" and passing values of robj to dao method)
			ArrayList<Register> viewUser = dobj.ViewAllCashier();
			if (result.equals("success")) {
				ses.setAttribute("ulist", viewUser); // if result = sucess then pass the value of ulist to viewUser
				request.getRequestDispatcher("Login.jsp").forward(request, response); // getRequestDispatcher used to
																						// open another page and pass
																						// value
			}
		}

		if (action.equals("login")) {

			String Username = request.getParameter("username");
			String Password = request.getParameter("pass");

			ses.setAttribute("User", Username);
			String result = dobj.Login(Username, Password);
			if (result.equals("success")) {
				if (Username.equals("admin")) {
					ArrayList<Register> vallcashier = dobj.ViewAllCashier();
					ses.setAttribute("vcashier1", vallcashier);
					ArrayList<Register> vproduct = dobj.ViewAllProduct();
					ses.setAttribute("vproduct1", vproduct);
					request.getRequestDispatcher("Loggedinadmin.jsp").forward(request, response);
				} else {

					ArrayList<Register> vcashier = dobj.ViewOneCashier(Username);
					ses.setAttribute("vcashier1", vcashier);
					ArrayList<Register> vproduct = dobj.ViewAllProduct();
					ses.setAttribute("vproduct1", vproduct);
					ArrayList<Register> vbill = dobj.ViewAllBillno();
					ses.setAttribute("vbill1", vbill);
					request.getRequestDispatcher("Loggedincash.jsp").forward(request, response);
				}
			} else {
				request.getRequestDispatcher("Failed.jsp").forward(request, response);
			}
		}
		if (action.equals("login1")) {
			String Usernameview = request.getParameter("username1");
			if(Usernameview.equals("admin")) {
				request.getRequestDispatcher("Loggedinadmin.jsp").forward(request, response);
			}
			else {
			request.getRequestDispatcher("Loggedincash.jsp").forward(request, response);
			}
		}
		
		if (action.equals("login2")) {  //for register go back page
			request.getRequestDispatcher("Loggedinadmin.jsp").forward(request, response);
		}
		if (action.equals("logout")) {  //for register go back page
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}

		if (action.equals("Createnewbill")) {
			ArrayList<Register> vproduct = dobj.ViewAllProduct();
			ses.setAttribute("vproduct1", vproduct);
			ArrayList<Register> vbill = dobj.ViewAllBillno();
			ses.setAttribute("vbill1", vbill);
			request.getRequestDispatcher("CreateBill.jsp").forward(request, response);
		}
		
		if (action.equals("update")) { // check action = update (check view.jsp)
			String id = request.getParameter("id"); // get parameter from view.jsp
			Register robj = new Register(); // object created
			robj.setId(id); // store id value to object

			ArrayList<Register> ulist = dobj.viewUpCashier(robj);
			ses.setAttribute("ulist", ulist); // pass the value of ulist to ulist
			request.getRequestDispatcher("ViewUpCashier.jsp").forward(request, response); // getRequestDispatcher used
																							// to open another page and
																							// pass value
		}
		if (action.equals("loginviewcash")) {
			String Username = request.getParameter("username");
			ArrayList<Register> ulist = dobj.ViewOneCashier(Username);
			ses.setAttribute("vcashier1", ulist);
			request.getRequestDispatcher("ViewCashierOne.jsp").forward(request, response);
		}
		if (action.equals("up")) { // check action = up (check viewUpUser.jsp)

			String User = (String) ses.getAttribute("User");

			String id = request.getParameter("id");// get parameter from viewUpuser.jsp
			String username = request.getParameter("username");// get parameter from viewUpuser.jsp
			String name = request.getParameter("name");// get parameter from viewUpuser.jsp
			String password = request.getParameter("pass");
			String email = request.getParameter("email");
			String dob = request.getParameter("dob");
			String addr = request.getParameter("addr");
			Register robj = new Register(); // object created

			robj.setId(id);// store values from viewUpUser.jsp to object
			robj.setUsername(username);// store values from viewUpUser.jsp to object
			robj.setName(name);// store values from viewUpUser.jsp to object
			robj.setPassword(password);
			robj.setEmail(email);
			robj.setDOB(dob);
			robj.setAddress(addr);

			String valid = dobj.updateCashier(robj);// to store result of public String upUser(Register robj) from dao)
			// so the output of dobj.upUser(robj) is return value of dao method upUser
			// (either success or "")
			// here dao method "upUser" is called and passing values of robj to dao method)
			if (valid.equals("success")) {

				if (User.equals("admin")) {
					ArrayList<Register> uList = dobj.ViewAllCashier();
					ses.setAttribute("vcashier1", uList);// if result = success then pass the value of ulist to uList
					request.getRequestDispatcher("ViewCashier.jsp").forward(request, response);// getRequestDispatcher
																								// used to open another
																								// page and pass value
				}

				else {
					ArrayList<Register> uList = dobj.viewUpCashier(robj);
					ses.setAttribute("vcashier1", uList);
					request.getRequestDispatcher("ViewCashierOne.jsp").forward(request, response);
				}
			}
		}
		if (action.equals("del")) { 
			String id = request.getParameter("id");
			Register robj = new Register();
			robj.setId(id);
			String valid = dobj.deleteUser(robj);
			if (valid.equals("success")) {
				ArrayList<Register> ulist = dobj.ViewAllCashier();
				ses.setAttribute("vcashier1", ulist);
				request.getRequestDispatcher("Login.jsp").forward(request, response);
			}

//PRODUCTS REGISTER
//PRODUCTS REGISTER
//PRODUCTS REGISTER

		}
		if (action.equals("regpro")) {
			Register robj = new Register(); 
			robj.setItem_Name(request.getParameter("itemname")); 
			robj.setQuantity(request.getParameter("qty"));
			robj.setPrice(request.getParameter("price"));
			String result = dobj.productcreate(robj);
			ArrayList<Register> viewUser = dobj.ViewAllProduct();
			if (result.equals("ProductCreateSuccess")) {
				ses.setAttribute("vproduct1", viewUser);
				request.getRequestDispatcher("ViewAllProduct.jsp").forward(request, response); 
			}
		}
		if (action.equals("viewpro")) {

			ArrayList<Register> uList = dobj.ViewAllProduct();
			ses.setAttribute("vproduct1", uList);// if result = success then pass the value of ulist to uList
			request.getRequestDispatcher("ViewAllProduct.jsp").forward(request, response);
		}

		if (action.equals("updateproduct")) { // check action = update (check view.jsp)
			String id = request.getParameter("id"); // get parameter from view.jsp
			Register robj = new Register(); // object created
			robj.setId(id); // store id value to object

			ArrayList<Register> ulist = dobj.ViewUpProduct(robj);
			ses.setAttribute("ulist", ulist); // pass the value of ulist to ulist
			request.getRequestDispatcher("ViewUpProduct.jsp").forward(request, response); // getRequestDispatcher used
																							// to open another page and
																							// pass value
		}
		if (action.equals("upproduct")) { // check action = up (check viewUpUser.jsp)

			String id = request.getParameter("id");// get parameter from viewUpuser.jsp
			String item_name = request.getParameter("itemname");// get parameter from viewUpuser.jsp
			String quantity = request.getParameter("qty");// get parameter from viewUpuser.jsp
			String price = request.getParameter("price");

			Register robj = new Register(); // object created

			robj.setId(id);// store values from viewUpUser.jsp to object
			robj.setItem_Name(item_name);// store values from viewUpUser.jsp to object
			robj.setQuantity(quantity);// store values from viewUpUser.jsp to object
			robj.setPrice(price);

			String valid = dobj.updateproduct(robj);// to store result of public String upUser(Register robj) from dao)
			// so the output of dobj.upUser(robj) is return value of dao method upUser
			// (either success or "")
			// here dao method "upUser" is called and passing values of robj to dao method)
			if (valid.equals("success")) {

				ArrayList<Register> uList = dobj.ViewAllProduct();
				ses.setAttribute("vproduct1", uList);// if result = success then pass the value of ulist to uList
				request.getRequestDispatcher("ViewAllProduct.jsp").forward(request, response);// getRequestDispatcher
																								// used to open another
																								// page and pass value

			}
		}

		if (action.equals("delproduct")) {
			String id = request.getParameter("id");
			Register robj = new Register();
			robj.setId(id);
			String valid = dobj.deleteproduct(robj);
			if (valid.equals("success")) {
				ArrayList<Register> ulist = dobj.ViewAllProduct();
				ses.setAttribute("vproduct1", ulist);
				request.getRequestDispatcher("ViewAllProduct.jsp").forward(request, response);
			}
		}

		// BILL CONTROLLER PART
		// BILL CONTROLLER PART
		// BILL CONTROLLER PART

		if (action.equals("billview")) {

			ArrayList<Register> uList = dobj.ViewAllProduct();
			ses.setAttribute("ulist", uList);// if result = success then pass the value of ulist to uList
			request.getRequestDispatcher("CreateBill.jsp").forward(request, response);
		}

		
		if (action.equals("createbill")) {

			String size = (request.getParameter("ulistsize"));
			int size1 = Integer.parseInt(size);

			Register robj = new Register();
			robj.setBillsize(size1);

			String BILLNUMBERTEMP = (request.getParameter("bbillno"));
			robj.setBbillno(request.getParameter("bbillno"));
	

			ArrayList<Register> bill = new ArrayList<Register>();
			{
				for (int i = 1; i <= size1; i++) {
					robj.setBcashname(request.getParameter("bcashname"));
					robj.setBcustname(request.getParameter("bcustname"));
					robj.setBphno(request.getParameter("bphno"));
					robj.setBdate(request.getParameter("bdate"));
					robj.setBbillno(request.getParameter("bbillno"));
					robj.setBid(request.getParameter("id" + i));
					robj.setBitemname(request.getParameter("itemname" + i));
					robj.setBqty(request.getParameter("qty" + i));
					robj.setBprice(request.getParameter("price" + i));
					robj.setBpqty(request.getParameter("pqty" + i));
					
					String pqty = (request.getParameter("pqty" + i));
					String qty = (request.getParameter("qty" + i));
					String price = (request.getParameter("price" + i));
					
					int qty1 = Integer.parseInt(qty);
					int pqty1 = Integer.parseInt(pqty);

					
					int price1 = Integer.parseInt(price);
					int total = pqty1 * price1;
					robj.setBtprice(total);
					bill.add(robj);
					String pid=(request.getParameter("id" + i));
					String qtydifference = Integer.toString(qty1-pqty1);
					
					dobj.QuantityDifference(pid,qtydifference);

					
					String result = dobj.billcreate(robj);
					ses.setAttribute("result", result);
				}
				String result1 = (String) ses.getAttribute("result");

				ArrayList<Register> billlist = dobj.ViewAllBill(BILLNUMBERTEMP);
				if (result1.equals("billcreatesuccess")) {
					ArrayList<Register> Totalprice = dobj.TotalPrice(BILLNUMBERTEMP);
					ses.setAttribute("Totalprice1", Totalprice);
//					dobj.billproductminus(BILLNUMBERTEMP);
					
					ses.setAttribute("billlist1", billlist);
					request.getRequestDispatcher("Lastbill.jsp").forward(request, response); 
				}
			}

		}
		if (action.equals("search")) {
			String search=request.getParameter("searchlist");
			
			Register robj = new Register();
			robj.setBillSearch(request.getParameter("searchname"));
			String BILLNUMBERTEMP=request.getParameter("searchname");
//			String valid = dobj.SearchBill(robj);
//			if (valid.equals("success")) {
				ArrayList<Register> Totalprice = dobj.TotalPrice(BILLNUMBERTEMP);
				ses.setAttribute("Totalprice1", Totalprice);
				ArrayList<Register> billlist = dobj.SearchBill(BILLNUMBERTEMP);
				ses.setAttribute("billlist1", billlist);
				request.getRequestDispatcher("Lastbill.jsp").forward(request, response); 
				
			}
		}
		
	}

