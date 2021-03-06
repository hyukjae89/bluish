package com.hyukjae.portfolio.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.hyukjae.portfolio.bean.BoardBean;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	/*mybatis를 이용한 DB연동*/
	private SqlSession sqlSession;    
	
    public void setSqlSession(SqlSession sqlSession)
    {
    	this.sqlSession = sqlSession;
    }

    @Override
    public List<BoardBean> getTotalBoard(int start, int end, String tblName) 
    {
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("tblName", tblName);
    	map.put("start", start);
    	map.put("end", end);
    	return sqlSession.selectList("query.selectTotalBoard", map);
    }

    @Override
    public int getTotalCount(String tblName){

    	return sqlSession.selectOne("query.selectTotalCount", tblName);
	}
    
    @Override
    public BoardBean getOneBoard(String num, String tblName){
    	
    	Map<String, String> map = new HashMap<String, String>();
    	map.put("tblName", tblName);
    	map.put("num", num);
    	
		setCount(map);	

		return sqlSession.selectOne("query.selectOneBoard", map);
	}
    
    @Override
    public void setCount(Map<String, String> map){
    	
    	sqlSession.update("query.updateCount", map);
	}
    
    @Override
    public void writeBoard(BoardBean bean, String tblName){
    	
		int ref = sqlSession.selectOne("selectMaxNum", tblName);
		if(ref > 0)
			ref = ref + 1;
		else
			ref = 1;
		
		Map<String, Object> map = new HashMap<String, Object>();
    	map.put("tblName", tblName);
    	map.put("bean", bean);
    	map.put("ref", ref);
    	
    	sqlSession.insert("query.insertBoard", map);
    }

    @Override
    public int getMaxNum(String tblName){
    	
    	return sqlSession.selectOne("query.selectMaxNum", tblName);

    }

    @Override
    public void deleteBoard(String num, String tblName){
    	
    	Map<String, String> map = new HashMap<String, String>();
    	map.put("tblName", tblName);
    	map.put("num", num);
    	
    	sqlSession.delete("query.deleteBoard", map);
    }
    
    @Override
    public void updateBoard(String num, String subject, String content, String tblName){
    	
    	Map<String, String> map = new HashMap<String, String>();
    	map.put("tblName", tblName);
    	map.put("subject", subject);
    	map.put("content", content);
    	map.put("num", num);

    	sqlSession.update("query.updateBoard", map);
    }
    
    /*JdbcTemplate을 이용한 DB연동*/
/*	private JdbcTemplate jdbcTemplate;
	
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
    }*/
}
