package serviceImpl;

import java.util.ArrayList;
import java.util.List;
import daoImpl.AccountDAOImpl;
import entity.Account;
import service.CheckAllAccount;
import service.Login;
import service.PrinAccount;
import service.Regis;
public class AccountServiceImpl implements PrinAccount,CheckAllAccount,Login,Regis{
	/**
	 * @author wjh
	 * 打印账号表实现
	 * 密码做了遮掩
	 */
	public void prinAccount(List<Account> lis) {
		System.out.println("所有管理员账号如下:");
		System.out.println("账号\t用户名\t密码");
		for(int i=0;i<lis.size();i++) {
			Account acc=lis.get(i);
			if(acc.getIsroot()==1)
			System.out.println(acc.getId()+"\t"+acc.getName()+"\t***"+acc.getPassword().substring(3));
		}
		System.out.println("所有普通用户账号如下:");
		System.out.println("账号\t用户名\t密码");
		for(int i=0;i<lis.size();i++) {
			Account acc=lis.get(i);
			if(acc.getIsroot()==0)
			System.out.println(acc.getId()+"\t"+acc.getName()+"\t***"+acc.getPassword().substring(3));
		}
	}
	/**
	 * 查找所有的账号信息
	 */
	public List<Account> CheckAllAccountService() {
		AccountDAOImpl accountDAO=new AccountDAOImpl();
		List<Account> table0=new ArrayList<Account>();
		table0=accountDAO.getAllacc();
		return table0;
	}
	@Override
	/**
	 * 查找要登录的账号信息
	 * 根据账号和密码来找
	 */
	public Account LoginAccount(int id, String password) {
		String sql="select * from account where id=? and password=?";
		AccountDAOImpl accountDAO=new AccountDAOImpl();
		Object[] param= {id,password};
		List<Account> visacc=accountDAO.selectaccount(sql, param);
		if(visacc!=null&&visacc.size() > 0) {
			return visacc.get(0);
		}
		else {
			return null;
		}
	}
	/**
	 * 添加账号
	 * 默认为普通用户
	 */
	public int RegisAccount(int id,String name,String password) {
		if(password.length()<8)
			return 0;
		AccountDAOImpl accountDAO=new AccountDAOImpl();
		if(name==null||name.length()<1)
		{
			String sql="insert into account values (?,?,?,0)";
			String dename="default123";
			Object[] param= {id,dename,password};
			return accountDAO.executeSQL(sql, param);
		}else {
			String sql="insert into account values (?,?,?,0)";
			Object[] param= {id,name,password};
			return accountDAO.executeSQL(sql, param);
		}
		
	}
}
