package com.crud;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Note {
	@Id
	private int id;
	private String title;
	@Column(length = 240)
	private String contant;
	private Date dadd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContant() {
		return contant;
	}
	public void setContant(String contant) {
		this.contant = contant;
	}
	public Date getDadd() {
		return dadd;
	}
	public void setDadd(Date dadd) {
		this.dadd = dadd;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note(int id, String title, String contant, Date dadd) {
		super();
		this.id = id;
		this.title = title;
		this.contant = contant;
		this.dadd = dadd;
	}
}
