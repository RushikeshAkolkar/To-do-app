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
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        super();  
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//title,contant fetch
			String s1 = request.getParameter("title");
			String s2 = request.getParameter("contant");
			Note n= new Note(s1,s2,new Date());
			
//			hibernate save data to data base
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			s.save(n);
			
			
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter p = response.getWriter();
			p.println("<h1 style='text-align:center'>Note Added Successfully<br>");
			p.println("<a href='all_note.jsp'>View All Notes</a></h1>");
		}catch(Exception e) {}
	}
}
