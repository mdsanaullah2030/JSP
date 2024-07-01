
package dao;

import dbutil.Dbutil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;


public class StudentDao {
  
    static PreparedStatement ps;
    static ResultSet rs;
    static String sql="";
    
    
    public static int saveStudent(Student s){
    int status=0;
    
    sql="insert into student(name,email)"
            + "values(?,?)";
    
        try {
            ps=Dbutil.getCon().prepareCall(sql);
            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            status=ps.executeUpdate();
            System.out.println(status);
            ps.close();
            Dbutil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    
    }
}
 