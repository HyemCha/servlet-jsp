import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DB1Test {

	public static void main(String[] args) {

		Connection conn = null;
		PreparedStatement ps;
		// sql 실행 결과를 받아주는 객체
		ResultSet rs;
		String url = "jdbc:mysql://localhost/contacts?serverTimezone=Asia/Seoul";
		// 클래스
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// db와 연결되면 db의 위치를 가리키는 객체(conn)
			// url, 승인받을 사용자, 비번 / 아이디 패스워드에 해당하는 url에 DriverManager가 연결해줌
			conn = DriverManager.getConnection(url, "root", "1234");
			if (conn != null)
				System.out.println("데이터베이스 연결 성공");
			String sql = "SELECT * FROM person order by age";
			String sqlInsert = "insert into person values(?, ?, ?, ?)";
			ps = conn.prepareStatement(sqlInsert);
			ps.setString(1, "짱아");
			ps.setString(2, "010-0123-0122");
			ps.setString(3, "jjanga@naver.com");
			ps.setInt(4, 5);
			//executeQuery : 테이블에 변화가 없을 때, executeUpdate : 테이블에 변화가 있을 때 사용
			//변화가 잘 되었으면 변화가 된 레코드의 개수가 반환됨.
			int x = ps.executeUpdate();
			System.out.println("insert된 행의 개수 : " + x);
			
			// sql문을 실행시키도록 ps 객체 생성
			ps = conn.prepareStatement(sql);
			// ps 객체 실행. ps 객체가 가진 문장을 실행해서 rs에 담아옴
			rs = ps.executeQuery();

			System.out.println("이름\t\t 전화번호\t\t 메일\t\t 나이");
			System.out.println("====================================");
			while (rs.next()) {
				System.out.print(rs.getString("name") + "\t");
				System.out.print(rs.getString("phone") + "\t");
				System.out.print(rs.getString("email") + "\t\t");
				System.out.print(rs.getInt("age") + "\n");
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("데이터베이스 연결 실패");
		}

	}

}
