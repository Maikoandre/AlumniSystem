package com.AlumniSystem.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.AlumniSystem.bean.Student;

public class StudentDao {
	public static Connection getConnection() {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/AlumniSystem","root", "1972");
		}catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}
	
	public static List<Student> getAll(){
		List<Student> list = new ArrayList<Student>();
		
		try {
			Connection conn = getConnection();
			PreparedStatement pstm = conn.prepareStatement("Select * FROM Student");
			ResultSet rset = pstm.executeQuery();
			
			while(rset.next()) {
				Student s = new Student();
				s.setId(rset.getInt("id"));
				s.setName(rset.getString("name"));
				s.setEmail(rset.getString("email"));
				s.setCourse(rset.getString("course"));
				list.add(s);
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return list;
	}
	
	public static Student getStudentById(int id) {
		Student s = null;
		try {
			Connection conn = getConnection();
			PreparedStatement pstm = (PreparedStatement) conn.prepareStatement("Select * FROM Student WHERE id=?");
			pstm.setInt(1, id);
			ResultSet rset = pstm.executeQuery();
			
			while(rset.next()) {
				s = new Student();
				s.setId(rset.getInt("id"));
				s.setName(rset.getString("name"));
				s.setEmail(rset.getString("email"));
				s.setCourse(rset.getString("course"));
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return s;
	}
	
	public static int updateStudent(Student s) {
		int status = 0;
		try {
			Connection conn = getConnection();
			PreparedStatement pstm = (PreparedStatement) conn.prepareStatement("UPDATE Student SET name =?, email=?, course=? WHERE id=?");
			pstm.setString(1, s.getName());		
			pstm.setString(2, s.getEmail());		
			pstm.setString(3, s.getCourse());
			pstm.setInt(4, s.getId());
			status = pstm.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	public static int addStudent(Student s) {
		int status = 0;
		try {
			Connection conn = getConnection();
			PreparedStatement pstm = (PreparedStatement) conn.prepareStatement("INSERT INTO Student (name, email, course) VALUES (?,?,?)");
			pstm.setString(1, s.getName());
			pstm.setString(2, s.getEmail());		
			pstm.setString(3, s.getCourse());
			status = pstm.executeUpdate();
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
		
	}
	
	public static int deleteStudent(Student s) {
		int status = 0;
		
		try {
			Connection conn = getConnection();
			PreparedStatement pstm = (PreparedStatement) conn.prepareStatement("DELETE FROM Student WHERE id=?");
			pstm.setInt(1, s.getId());
			status = pstm.executeUpdate();
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return status;
	}
	
	
}
