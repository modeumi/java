package Dao;

import java.util.List;

import model.Member;


public interface MemberDao {
	List<Member> selectList() throws Exception;
	
	int insert(Member member) throws Exception;

	int delete(Member id) throws Exception;

	Member selectOne(String id) throws Exception;

	Member update(Member member) throws Exception;

	Member exist(String id, String password) throws Exception;
}
