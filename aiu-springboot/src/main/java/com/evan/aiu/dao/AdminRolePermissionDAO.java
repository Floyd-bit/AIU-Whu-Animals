package com.evan.aiu.dao;


import com.evan.aiu.entity.AdminRolePermission;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AdminRolePermissionDAO extends JpaRepository<AdminRolePermission, Integer> {
    List<AdminRolePermission> findAllByRid(int rid);
    List<AdminRolePermission> findAllByRid(List<Integer> rids);
    void deleteAllByRid(int rid);
}
