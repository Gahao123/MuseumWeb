package dao;

import java.util.List;

import entity.Account;

public interface AccountDAO {
	/**
	 * 查找所有账号
	 * @return
	 */
	public List<Account> getAllacc();
	/**
	 * 按条件查找账号
	 * @author wjh
	 */
	public List<Account> selectaccount(String sql, Object[] param);
	/**
	 * 更新账号信息
	 * @author wjh
	 * @param sql
	 * @param param
	 * @return
	 */
	public int updateacc(String sql, Object[] param);
}
