package com.mycom.spring3.board;

import java.util.Date;

public class BoardVO {
	private int seq;
	private String major;
	private String title;
	private String writer;
	private String publish;
	private String content;
	private Date regdate;
	private int price;
	private String id;
	private String progress;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	
	public String toString() {
		return "BoardVO [seq=" + seq + ", major=" + major + ", title=" + title + ", writer=" + writer + ", publish="
				+ publish + ", content=" + content + ", regdate=" + regdate + ", price=" + price + ", id=" + id
				+ ", progress=" + progress + "]";
	}
	
	
}
