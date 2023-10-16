package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Bean.Register;

public class Dao {
	Connection con = null;
	Statement st = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	DataBaseConnector dobj = new DataBaseConnector();
	String query = null;

	public String registercust(Register robj) {
		try {
			query = "insert into login(Name,Username,Password,DOB,Email,Address) values(?,?,?,?,?,?)";//query
			con = dobj.Dbconnect(); //db connector
			ps = con.prepareStatement(query); //query execution
			ps.setString(1, robj.getName()); //to give value from controller object to db
			ps.setString(2, robj.getUsername());
			ps.setString(3, robj.getPassword());
			ps.setString(4, robj.getDOB());
			ps.setString(5, robj.getEmail());
			ps.setString(6, robj.getAddress());
			

			int i = ps.executeUpdate();
			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "regfailed";
	}

	public String Login(String Username, String Password) {
		try {
			query = "select * from login where Username='" + Username + "' && Password='" + Password + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
			return "success";
			}

		} catch (Exception e) {

			System.out.println(e);
		}

		return "";
	}
	
	
	
	public ArrayList<Register> ViewAllCashier() {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from login";//query
			con = dobj.Dbconnect();//db connection
			st = con.createStatement();//take value from db
			rs = st.executeQuery(query);//query execution 
			while (rs.next()) {
				Register robj = new Register();
				robj.setId(rs.getString(1));//taking values from db 
				robj.setName(rs.getString(2));
				robj.setEmail(rs.getString(3));
				robj.setUsername(rs.getString(5));
				robj.setDOB(rs.getString(6));
				robj.setAddress(rs.getString(7));
				viewL.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}
	public ArrayList<Register> ViewOneCashier(String Username) {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {

			query = "select * from login where Username='" + Username + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setId(rs.getString(1));//taking values from db 
				robj.setName(rs.getString(2));
				robj.setEmail(rs.getString(3));
				robj.setUsername(rs.getString(5));
				robj.setDOB(rs.getString(6));
				robj.setAddress(rs.getString(7));
				viewL.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}

	public ArrayList<Register> viewUpCashier(Register robj) {
		ArrayList<Register> list = new ArrayList<Register>();
		try {
			query = "select * from login where Id='" + robj.getId() + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				robj.setId(rs.getString(1));//taking values from db 
				robj.setName(rs.getString(2));
				robj.setEmail(rs.getString(3));
				robj.setPassword(rs.getString(4));
				robj.setUsername(rs.getString(5));
				robj.setDOB(rs.getString(6));
				robj.setAddress(rs.getString(7));
				list.add(robj);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}


	public String updateCashier(Register robj) {
		String query = "update login set Name=?,Email=?,Password=?,Username=?,DOB=?,Address=? where id ='" + robj.getId() + "'";
		try {
			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);
			
			ps.setString(1, robj.getName());
			ps.setString(2, robj.getEmail());
			ps.setString(3, robj.getPassword());
			ps.setString(4, robj.getUsername());
			ps.setString(5, robj.getDOB());
			ps.setString(6, robj.getAddress());
			
			int i = ps.executeUpdate();
			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}


	public String deleteUser(Register robj) {
		query = "delete from login where id='" + robj.getId() + "'";
		try {
			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);

			int i = ps.executeUpdate();
			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	public String productcreate(Register robj) {
		try {
			query = "insert into prod(Item_Name,Quantity,Price) values(?,?,?)";//query
			con = dobj.Dbconnect(); //db connector
			ps = con.prepareStatement(query); //query execution
			ps.setString(1, robj.getItem_Name()); 
			ps.setString(2, robj.getQuantity());
			ps.setString(3, robj.getPrice());
			

			int i = ps.executeUpdate();
			if (i != 0) {
				return "ProductCreateSuccess";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "ProductRegfailed";
	}
	public ArrayList<Register> ViewAllProduct() {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from prod";//query
			con = dobj.Dbconnect();//db connection
			st = con.createStatement();//take value from db
			rs = st.executeQuery(query);//query execution 
			while (rs.next()) {
				Register robj = new Register();
				robj.setId(rs.getString(1));
				robj.setItem_Name(rs.getString(2)); 
				robj.setQuantity(rs.getString(3));
				robj.setPrice(rs.getString(4));
				viewL.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}
	
	public ArrayList<Register> ViewUpProduct(Register robj) {
		ArrayList<Register> list = new ArrayList<Register>();
		try {
			query = "select * from prod where Id='" + robj.getId() + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				robj.setId(rs.getString(1));
				robj.setItem_Name(rs.getString(2)); 
				robj.setQuantity(rs.getString(3));
				robj.setPrice(rs.getString(4));
				list.add(robj);

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public String updateproduct(Register robj) {
		String query = "update prod set Item_Name=?,Quantity=?,Price=? where id ='" + robj.getId() + "'";
		try {
			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getItem_Name()); 
			ps.setString(2, robj.getQuantity());
			ps.setString(3, robj.getPrice());
			
			int i = ps.executeUpdate();
			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	public String deleteproduct(Register robj) {
		query = "delete from prod where id='" + robj.getId() + "'";
		try {
			con = dobj.Dbconnect();
			ps = con.prepareStatement(query);

			int i = ps.executeUpdate();
			if (i != 0) {
				return "success";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}

	
	public String billcreate(Register robj) {
		try {
			query = "insert into bill(Cashiername,CustomerName,CustPhno,Date,Billno,productid,Itemname,Quantity,Price,PurchaseQuantity,Totalprice) values(?,?,?,?,?,?,?,?,?,?,?)";//query
			con = dobj.Dbconnect(); //db connector
			ps = con.prepareStatement(query); //query execution
			ps.setString(1, robj.getBcashname());
			ps.setString(2, robj.getBcustname());
			ps.setString(3, robj.getBphno());
			ps.setString(4, robj.getBdate());
			ps.setString(5, robj.getBbillno());
			ps.setString(6, robj.getBid());
			ps.setString(7, robj.getBitemname());
			ps.setString(8, robj.getBqty());
			ps.setString(9, robj.getBprice());
			ps.setString(10, robj.getBpqty());
			ps.setInt(11, robj.getBtprice());
			
			int i = ps.executeUpdate();
			if (i != 0) {
				return "billcreatesuccess";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "";
	}
	
	public ArrayList<Register> ViewAllBill(String BILLNUMBERTEMP) {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			
			query = "select * from bill where Billno='"+BILLNUMBERTEMP+"' && PurchaseQuantity>0";
			
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBcashname(rs.getString(1));
				robj.setBcustname(rs.getString(2));
				robj.setBphno(rs.getString(3));
				robj.setBdate(rs.getString(4));
				robj.setBbillno(rs.getString(5));
				robj.setBid(rs.getString(6));
				robj.setBitemname(rs.getString(7));
				robj.setBqty(rs.getString(8));
				robj.setBprice(rs.getString(9));
			    robj.setBpqty(rs.getString(10));
			    robj.setBtprice(rs.getInt(11));
				viewL.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}

	
	public ArrayList<Register> ViewAllBillno() {
		ArrayList<Register> viewBill = new ArrayList<Register>();
		try {
			
			query = "select Max(Billno) from bill";
			
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBbillno(rs.getString(1));
				viewBill.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewBill;
	}
	public ArrayList<Register> TotalPrice(String BILLNUMBERTEMP) {
		ArrayList<Register> Tprice = new ArrayList<Register>();
		try {
			
			query = "select Sum(Totalprice) from bill where Billno='"+BILLNUMBERTEMP+"'";
			
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBfinaltotal(rs.getString(1));
				Tprice.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return Tprice;
	}
	
	public String QuantityDifference(String pid,String qtydifference) {
		try {
			
			query = "update prod set Quantity=? where id ='" + pid + "'";

				con = dobj.Dbconnect();
				ps = con.prepareStatement(query);
				ps.setString(1, qtydifference); 
				
				int i = ps.executeUpdate();
				if (i != 0) {
					return "";
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return "";
		}
	public ArrayList<Register> SearchBill(String BILLNUMBERTEMP) {
		ArrayList<Register> viewBills1 = new ArrayList<Register>();
		try {
			
			query = "select * from bill where Billno='"+BILLNUMBERTEMP+"' && PurchaseQuantity>0";
		
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setBcashname(rs.getString(1));
				robj.setBcustname(rs.getString(2));
				robj.setBphno(rs.getString(3));
				robj.setBdate(rs.getString(4));
				robj.setBbillno(rs.getString(5));
				robj.setBid(rs.getString(6));
				robj.setBitemname(rs.getString(7));
				robj.setBqty(rs.getString(8));
				robj.setBprice(rs.getString(9));
			    robj.setBpqty(rs.getString(10));
			    robj.setBtprice(rs.getInt(11));
			    viewBills1.add(robj);

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return viewBills1;
	}
}
