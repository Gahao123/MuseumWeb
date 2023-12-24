package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.AccountDAO;
import dao.BaseDAO;
import entity.Account;

public class AccountDAOImpl extends BaseDAO implements AccountDAO {
	/**
	 * @author wjh
	 * 查找出所有的账号
	 */
	public List<Account> getAllacc(){
		List<Account> ListAcc=new ArrayList<Account>();//要返回的队列
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		/* 处理SQL,执行SQL */
		try {
			conn = connection(); // 得到数据库连接
			pstmt = conn.prepareStatement("SELECT * FROM museum.account"); // 得到PreparedStatement对象
			rs = pstmt.executeQuery(); // 执行SQL语句
			while(rs.next()) {
				Account acc=new Account();
				acc.setId(rs.getInt("id"));
				acc.setName(rs.getString("name"));
				acc.setPassword(rs.getString("password"));
				acc.setIsroot(rs.getInt("isroot"));
				ListAcc.add(acc);//队列插入
			}
		}catch(NullPointerException e) {
			System.out.println("连接失败！");
			e.printStackTrace();
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace(); 
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return ListAcc;
	}
	/**
	 * @author wjh
	 * 根据条件查找账号信息
	 */
	public List<Account> selectaccount(String sql, Object[] param) {
		List<Account> ListAcc=new ArrayList<Account>();//要返回的队列
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs=null;
		/* 处理SQL,执行SQL */
		try {
			conn = connection(); // 得到数据库连接
			pstmt = conn.prepareStatement(sql); // 得到PreparedStatement对象
			if (param != null) {
				for (int i=0;i<param.length;i++){
					pstmt.setObject(i+1,param[i]); // 为预编译sql设置参数
				}
			}
			rs = pstmt.executeQuery(); // 执行SQL语句
			while(rs.next()) {
				Account acc=new Account();
				acc.setId(rs.getInt("id"));
				acc.setName(rs.getString("name"));
				acc.setPassword(rs.getString("password"));
				acc.setIsroot(rs.getInt("isroot"));
				ListAcc.add(acc);//队列插入
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace(); 
		} finally {
			this.closeAll(conn, pstmt, rs);
		}
		return ListAcc;
	}

	/**
	 * @author wjh
	 * 进入上一级来查找
	*/
	public int updateacc(String sql, Object[] param) {
		int count = super.executeSQL(sql, param);
		return count;//返回是否成功
	}

}
