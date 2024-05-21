/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.UserDTO;

/**
 *
 * @author User
 */
public interface UserDao {

    UserDTO checkLogin(String username, String password);

}
