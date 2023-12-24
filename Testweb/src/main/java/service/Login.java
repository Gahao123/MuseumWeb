package service;
import entity.Account;

public interface Login {
	/**
	 * 用于登陆的时候查找指定账号
	 * 不会出现重复的账号
	 * @return
	 */
	public Account LoginAccount(int id,String password);
}
