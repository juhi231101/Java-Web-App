package com.entities;

import java.time.LocalDate;
import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {
	@Id
	private int id;
	private String title;
	@Column(length = 1500)
	private String content;
	private LocalDate date;
	
	
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + "]";
	}
	
	
	public Note(String title, String content, LocalDate date) {
		super();
		this.id =new  Random().nextInt(10000);
		this.title = title;
		this.content = content;
		this.date = date;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
