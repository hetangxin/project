package com.htx.service.impl;

import com.htx.dao.AddressDao;
import com.htx.model.Address;
import com.htx.service.IAddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: AddressService
 * @Author: htx
 * @Date: Created in 0:55 2020/6/20
 * @Version 1.0
 */
@Service
public class AddressService implements IAddressService {

    @Autowired
    private AddressDao addressDao;

    @Override
    public List<Address> findAddressAll() {
        return addressDao.findAll();
    }

    @Override
    public Address findAddressById(int addressId) {
        return addressDao.findById(addressId);
    }

    @Override
    public List<Address> findAddressByUserName(String userName) {
        return addressDao.findByUserName(userName);
    }

    @Override
    public boolean saveAddress(Address address) {
        Address temp = addressDao.findById(address.getAddressId());
        if(temp == null) {
            addressDao.save(address);
            return true;
        }
        return false;
    }

    @Override
    public boolean deleteAddress(int addressId) {
        Address temp = addressDao.findById(addressId);
        if(temp == null) {
            return false;
        }
        addressDao.delete(addressId);
        return true;
    }

    @Override
    public boolean updateAddress(Address address) {
        Address temp = addressDao.findById(address.getAddressId());
        if(temp == null) {
            addressDao.update(address);
            return true;
        }
        return false;
    }
}
