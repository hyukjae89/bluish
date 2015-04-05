package com.hyukjae.portfolio.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import com.hyukjae.portfolio.bean.BoardBean;

@Repository
public class BoardDao{
	
	private JdbcTemplate jdbcTemplate;
	
    @Autowired
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
          this.jdbcTemplate = jdbcTemplate;
    }
   
    public List<BoardBean> getTotalBoard(int start, int end, String tblName){

		String sql = "select * from " + tblName + " order by ref desc, pos limit ?, ?";

		RowMapper<BoardBean> rm = new BeanPropertyRowMapper<BoardBean>(BoardBean.class);

		return jdbcTemplate.query(sql, rm, start, end);
	}
    
    public int getTotalCount(String tblName){

		String sql = "select count(num) from " + tblName;

    	return jdbcTemplate.queryForInt(sql);

	}
    
    public BoardBean getOneBoard(String num, String tblName){
    	
		setCount(num, tblName);	

		String sql = "select * from " + tblName + " where num=?";

		RowMapper<BoardBean> rm = new BeanPropertyRowMapper<BoardBean>(BoardBean.class);

		return jdbcTemplate.queryForObject(sql, rm, num);
	}
    
    public void setCount(String num, String tblName)
	{
		String sql = "update " + tblName + " set count=count+1 where num=?";

		jdbcTemplate.update(sql, num);
	}
    
    public void writeBoard(BoardBean bean, String tblName){
    	
    	try {
			String name = bean.getName();
			String subject = bean.getSubject();
			String content = bean.getContent();
			
			String sql = "select max(num) from " + tblName;
			
			int ref;
			if(jdbcTemplate.queryForInt(sql)>0)
				ref = jdbcTemplate.queryForInt(sql)+1;
			else
				ref = 1;
			
			sql = "insert into " + tblName + " (name,subject,content,pos,ref,regdate,count)";
			sql += " values(?, ?, ?, 0, ?, now(), 0)";
	        
			jdbcTemplate.update(sql, name, subject, content, ref);
			
    	}catch(Exception e){
    	}
    }
    
    public int getMaxNum(String tblName){
    	
    	String sql = "select max(num) from " + tblName;

		return jdbcTemplate.queryForInt(sql);
    }
    
    public void deleteBoard(String num, String tblName){
    	
    	String sql = "delete from " + tblName + " where num=?";

    	jdbcTemplate.update(sql, num);
    }
    
    public void updateBoard(String num, String subject, String content, String tblName){
    	
    	String sql = "update " + tblName + " set subject=?, content=? where num=?";

    	jdbcTemplate.update(sql, subject, content, num);
    }
}