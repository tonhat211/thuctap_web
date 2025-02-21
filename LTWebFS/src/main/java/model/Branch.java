package model;

public class Branch {
	private int id;
	private String name;
	private String address;
	private String phone;
	private int available;
	public Branch(int id, String name, String address, String phone, int available) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.available = available;
	}
	public Branch() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAvailable() {
		return available;
	}
	public void setAvailable(int available) {
		this.available = available;
	}
	
	
}
