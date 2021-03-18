package com.evan.aiu.dao;


import com.evan.aiu.entity.AdminPermission;
import org.springframework.data.jpa.repository.JpaRepository;


public interface AdminPermissionDAO extends JpaRepository<AdminPermission, Integer> {
    AdminPermission findById(int id);
}
