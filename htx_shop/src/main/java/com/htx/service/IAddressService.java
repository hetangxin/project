package com.htx.service;

import com.htx.model.Address;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: IAddressService
 * @Author: htx
 * @Date: Created in 0:49 2020/6/20
 * @Version 1.0
 */
public interface IAddressService {

    public List<Address> findAddressAll();

    public Address findAddressById(int addressId);

    public List<Address> findAddressByUserName(String userName);

    public boolean saveAddress(Address address);

    public boolean deleteAddress(int addressId);

    public boolean updateAddress(Address address);

}
