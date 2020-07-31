package com.htx.dao;

import com.htx.model.Address;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: AddressDao
 * @Author: htx
 * @Date: Created in 23:05 2020/6/19
 * @Version 1.0
 */
public interface AddressDao {

    public List<Address> findAll();
    public Address findById(int addressId);
    public void delete(int addressId);
    public void update(Address address);
    public void save(Address address);

    public List<Address> findByUserName(String userName);

}
