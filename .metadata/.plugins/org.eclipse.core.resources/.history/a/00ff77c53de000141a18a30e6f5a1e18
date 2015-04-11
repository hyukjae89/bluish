package com.hyukjae.portfolio.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hyukjae.portfolio.bean.MemberBean;

@Repository
public class MemberDao {
	
	private SqlSession sqlSession;    
    
    public void setSqlSession(SqlSession sqlSession)
    {
    	this.sqlSession = sqlSession;
    }

    public MemberBean getMemberCheck(String id, String pass){
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pass", pass);
		
		MemberBean bean = null;
		
		try{
			bean = sqlSession.selectOne("query.selectMember", map);
		}catch(Exception e){
		}
		
		return bean;
	}
	
	/*private JdbcTemplate jdbcTemplate;
	
    @Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
          this.jdbcTemplate = jdbcTemplate;
    }
    
    public MemberBean getMemberCheck(String id, String pass){
		
		String sql = "select * from tblmember where id=? and pass=?";
				
		RowMapper<MemberBean> rm = new BeanPropertyRowMapper<MemberBean>(MemberBean.class);
		
		MemberBean bean = null;
		
		try{
			bean = jdbcTemplate.queryForObject(sql, rm, id, pass);
		}catch(EmptyResultDataAccessException e){
		}
		
		return bean;
	}*/
}
