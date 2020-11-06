package kr.or.market.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.or.market.dto.CommunityDTO;
import kr.or.market.util.DatabaseUtil;

public class CommunityDAO {
	Connection conn = DatabaseUtil.getConnection();
	PreparedStatement ps = null;
	ResultSet rs = null;

	public int write(String user, String title, String content) {
		String SQL = "INSERT INTO community_bbs(user, title, content, regDate) VALUES(?,?,?,now())";

		int insertCnt = 0;

		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, user);
			ps.setString(2, title);
			ps.setString(3, content);
			insertCnt = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return insertCnt;
	}

	public List<CommunityDTO> getCommunity() {
		List<CommunityDTO> list = new ArrayList<>();

		String SQL = "SELECT user, title, content, regDate FROM community_bbs ORDER BY regDate DESC";
		try {
			ps = conn.prepareStatement(SQL);
			try (ResultSet rs = ps.executeQuery()) {
				while (rs.next()) {
					String user = rs.getString("user");
					String title = rs.getString("title");
					String content = rs.getString("content");
					String regDate = rs.getString("regDate");
					CommunityDTO comDTO = new CommunityDTO(user, title, content, regDate);
					list.add(comDTO);
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				try {
					if (ps != null)
						ps.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				try {
					if (rs != null)
						rs.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		return list;
	}
}
