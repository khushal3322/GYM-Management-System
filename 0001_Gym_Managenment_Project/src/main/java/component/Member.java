package component;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Member {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private long phone;
	private LocalDate joinOn;
	private int period;
	private LocalDate Expired;
	private double total_Amount;
	private double paid;
	private double pendiningAmount;
	

	
	

	public Member() {
		// TODO Auto-generated constructor stub
	}




	public int getPeriod() {
		return period;
	}




	public void setPeriod(int period) {
		this.period = period;
	}




	public double getTotal_Amount() {
		return total_Amount;
	}




	public void setTotal_Amount(double total_Amount) {
		this.total_Amount = total_Amount;
	}




	public double getPaid() {
		return paid;
	}




	public void setPaid(double paid) {
		this.paid = paid;
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




	public long getPhone() {
		return phone;
	}




	public void setPhone(long phone) {
		this.phone = phone;
	}




	public LocalDate getJoinOn() {
		return joinOn;
	}




	public void setJoinOn(LocalDate joinOn) {
		this.joinOn = joinOn;
	}




	public double getPendiningAmount() {
		return pendiningAmount;
	}




	public void setPendiningAmount(double pendiningAmount) {
		this.pendiningAmount = pendiningAmount;
	}




	public LocalDate getExpired() {
		return Expired;
	}




	public void setExpired(LocalDate expired) {
		Expired = expired;
	}

		
	
	
}
