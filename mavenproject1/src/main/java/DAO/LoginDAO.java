/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import BD.conexion;
import Model.usuarioModel;
import java.sql.ResultSet;

public class LoginDAO {
    int rspta=0;
    String sql="";
    ResultSet rs=null;
    conexion cn=new conexion();
    public int validarLogin(usuarioModel tm) throws Exception{
        sql="SELECT * FROM usuarios WHERE USUARIO='"+tm.getCodigo()+"' AND CLAVE='"+tm.getClave()+"'";
        rs=cn.ejecutarConsulta(sql);
        while(rs.next()){
            rspta=rs.getInt("cantidad");
        }
    return  rspta;
    }
    
}
