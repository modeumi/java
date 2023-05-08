package ch18.com.model;

import java.util.List;

public interface UserInfoDao {
	List<UserInfo> selectList() throws Exception;
	int insert(UserInfo userinfo)throws Exception;
	int delete(String Id) throws Exception;
	UserInfo selectOne(String id) throws Exception;
	int update(UserInfo userinfo)throws Exception;
	UserInfo exist (String id,String pass) throws Exception;
}
