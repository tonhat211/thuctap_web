package model;

import java.sql.Date;

public class Datee {
	private int year;
	private int month;
	private int day;
	public Datee(int year, int month, int day) {
		super();
		this.year = year;
		this.month = month;
		this.day = day;
	}

	public  String getDateInString(){
		return this.year  +"-" + this.month + "-" +this.day;
 	}
	
	public Datee(Date date) {
		super();
		this.year = date.toLocalDate().getYear();
		this.month = date.toLocalDate().getMonthValue();
		this.day = date.toLocalDate().getDayOfMonth();
	}

	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public int getMonth() {
		return month;
	}
	public void setMonth(int month) {
		this.month = month;
	}
	public int getDay() {
		return day;
	}
	public void setDay(int day) {
		this.day = day;
	}
	public String toString() {
		return this.year + "/" + this.month + "/" + this.day;
	}
}
