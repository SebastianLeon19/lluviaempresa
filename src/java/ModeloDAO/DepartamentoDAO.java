/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUDDEPARTAMENTO;
import Modelo.Departamento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Eduardo
 */
public class DepartamentoDAO implements CRUDDEPARTAMENTO{
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Departamento d=new Departamento();
    
    @Override
    public List listarDepartamento() {
        ArrayList<Departamento> list = new ArrayList<>();

        String sql = "Select * from departamento";

        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                Departamento per = new Departamento();
                per.setId_departamento(rs.getInt("id_departamento"));
                per.setId_ubicacion(rs.getInt("id_ubicaciones"));
                per.setDescripcion(rs.getString("descripcion"));
                list.add(per);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return list;

    }

    public ResultSet mostrardepartamento(){
        String sql ="select id_departamento,descripcion from departamento";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return rs;
    }
            
        public ResultSet mostrarcargo(){
        String sql ="select id_cargo,descripcion from cargo";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return rs;
    }
    @Override
    public Departamento list(int id_departamento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Departamento per) {
        String sql = "insert into departamento(id_ubicaciones,descripcion) values ('" + per.getId_ubicacion()+ "','" + per.getDescripcion()+ "')";
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Departamento per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id_departamento) {
               String sql="delete from departamento where id_departamento="+id_departamento;
    try  {
           con = cn.getConexion();
           ps = con.prepareStatement(sql);
            ps.executeUpdate();
     }catch (Exception e){
     } 
        return false;
    }
    
}
