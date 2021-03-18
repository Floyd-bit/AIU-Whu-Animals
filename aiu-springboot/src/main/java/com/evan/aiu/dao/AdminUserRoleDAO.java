package com.evan.aiu.dao;

import com.evan.aiu.entity.AdminUserRole;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface AdminUserRoleDAO extends JpaRepository<AdminUserRole,Integer> {
    List<AdminUserRole> findAllByUid(int uid);
    void deleteAllByUid(int uid);
}
