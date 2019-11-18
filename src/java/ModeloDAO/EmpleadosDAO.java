/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUDEMPLEADO;
import Modelo.Empleados;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Diegoandres
 */
public class EmpleadosDAO implements CRUDEMPLEADO{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Empleados m= new Empleados();
  
    
    @Override
    public List listarEmpleado() {
        ArrayList<Empleados> list = new ArrayList<>();
        
        String sql="Select * from empleado";
        
        try {
            con = cn.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                Empleados per = new Empleados();
                per.setId_empleados(rs.getInt("id_empleador"));
                per.setId_departamento(rs.getInt("id_departamento"));
                per.setId_cargo(rs.getInt("id_cargo"));
                per.setEmail(rs.getString("email"));
                list.add(per);            
            }
            
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;    
    }
        
    

    @Override
    public Empleados list(int id_empleador) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Empleados per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Empleados per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id_empleador) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

 

  

}
