package test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("commudao")
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	public List<MemberDTO> memberlist() {
		List<MemberDTO> list = session.selectList("memberlist");
		return list;
	}
	
//	public int insertmember(MemberDTO dto) {
//		int insertrow = session.insert("insertmember", dto);
//		return insertrow;
//	}
}
