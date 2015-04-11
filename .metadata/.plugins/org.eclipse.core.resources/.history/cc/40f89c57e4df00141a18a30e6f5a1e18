package com.hyukjae.portfolio.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.hyukjae.portfolio.bean.MemberBean;

@Repository
public class MemberDao {
	
	private JdbcTemplate jdbcTemplate;
	
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
	}
}
