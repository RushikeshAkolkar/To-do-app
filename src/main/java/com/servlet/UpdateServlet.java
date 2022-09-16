package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.crud.Note;
import com.helper.*;
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String ti=request.getParameter("title");
			String content = request.getParameter("contant");
			int id = Integer.parseInt(request.getParameter("noteid").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			Note obj =s.get(Note.class, id);
			
			obj.setTitle(ti);
			obj.setContant(content);
			obj.setDadd(new Date());
			
			
			tx.commit();
			s.close();
			response.sendRedirect("all_note.jsp");

		}catch(Exception e) {
			response.setContentType("text/html");
			PrintWriter p = response.getWriter();
			p.println("error="+e);
		}
	}

}
