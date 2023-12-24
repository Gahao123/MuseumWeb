package entity;

public class Account {
	private int id;//用户账号
	private String name;//用户名
	private String password;//用户密码
	private int isroot;//用户类型
	//用于写程序new起来方便
	public Account() {
		this.isroot=0;
		this.name="default123";
	}
	//缺少用户类型自动设定为普通用户
	public Account(int id,String name,String password) {
		this.id=id;
		this.name=name;
		this.password=password;
		this.isroot=0;
	}
	//缺少名字自动设定为默认用户123
	public Account(int id,String password,int isroot) {
		this.id=id;
		this.name="default123";
		this.password=password;
		this.isroot=isroot;
	}
	//都缺少就都默认
		public Account(int id,String password) {
			this.id=id;
			this.name="default123";
			this.password=password;
			this.isroot=0;
		}
	//所有都有就按要求来
	public Account(int id,String name,String password,int isroot) {
		this.id=id;
		this.name=name;
		this.password=password;
		this.isroot=isroot;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getIsroot() {
		return isroot;
	}
	public void setIsroot(int isroot) {
		this.isroot = isroot;
	}
}
