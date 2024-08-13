package model;

public class Employee {

    private int id;
    private String name;
    private String Department;
    private String gender;

    public Employee() {
    }

    public Employee(int id, String name, String Department, String gender) {
        this.id = id;
        this.name = name;
        this.Department = Department;
        this.gender = gender;
    }

    public Employee(String name, String Department, String gender) {
        this.name = name;
        this.Department = Department;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return Department;
    }

    public void setDepartment(String Department) {
        this.Department = Department;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
   


  
}
