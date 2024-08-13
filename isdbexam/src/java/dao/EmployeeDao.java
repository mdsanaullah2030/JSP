package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DBUtil;

/**
 * @author MD KUTUB UDDIN
 */
public class EmployeeDao {

    Employee e = new Employee();

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql = "";

    public static int saveEmployee(Employee e) {
        int status = 0;

        sql = "insert into teacher (name,Department,gender) values(?,?,?)";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            ps.setString(1, e.getName());
            ps.setString(2, e.getDepartment());
            ps.setString(3, e.getGender());
           

            status = ps.executeUpdate();

            ps.close();
            DBUtil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    public static List<Employee> viewAllEmployee() {
        List<Employee> eList = new ArrayList<>();

        sql = "select * from teacher";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Employee e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("Department"),
                        rs.getString("gender"),
                        
                );
                eList.add(e);
            }
            rs.close();
            ps.close();
            DBUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return eList;
    }

    public static void deleteEmployee(Employee e) {
        sql = "delete from teacher where id=?";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            ps.setInt(1, e.getId());
            ps.executeUpdate();

            ps.close();
            DBUtil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void updateEmployee(Employee e) {
        sql = "update teacher set name=?,Department=?,gender=? where id=?";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            ps.setString(1, e.getName());
            ps.setString(2, e.getDepartment());
            ps.setString(3, e.getGender());
            
            ps.setInt(5, e.getId());

            ps.executeUpdate();

            ps.close();
            DBUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Employee getById(int id) {
        Employee e = null;
        sql = "select * from teacher where id=?";
        try {
            ps = DBUtil.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                e = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("Department"),
                        rs.getString("gender"),
                        
                );

            }
            rs.close();
            ps.close();
            DBUtil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return e;

    }

}
