package entity;

public class Place {
	int id,timel,timer;
	String name,location;
	public Place() {
		timel=900;timer=1700;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTimel() {
		return timel;
	}
	public void setTimel(int timel) {
		this.timel = timel;
	}
	public int getTimer() {
		return timer;
	}
	public void setTimer(int timer) {
		this.timer = timer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
}
