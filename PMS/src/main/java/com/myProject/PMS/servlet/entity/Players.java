package com.myProject.PMS.servlet.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Players_data")
public class Players {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "player_id")
	private int id ;
	@Column(name = "player_name")
	private String title;
	@Column(name = "player_age")
	private int age;
	@Column(name = "player_salary")
	private long salary;
	@Column(name = "player_team")
	private String team;
	@Column(name = "player_nationality")
	private String nationality;
	
	@Override
	public String toString() {
		return "Players [id=" + id + ", title=" + title + ", age=" + age + ", salary=" + salary + ", team=" + team
				+ ", nationality=" + nationality + "]";
	}
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
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public long getSalary() {
		return salary;
	}
	public void setSalary(long salary) {
		this.salary = salary;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getNationality() {
		return nationality;
	}
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	
	
	
}
