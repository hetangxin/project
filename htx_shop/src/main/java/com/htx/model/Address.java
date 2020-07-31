package com.htx.model;

import java.util.Objects;

/**
 * @Description TODO
 * @ClassName: Address
 * @Author: htx
 * @Date: Created in 22:59 2020/6/19
 * @Version 1.0
 */
public class Address {

    private int addressId;
    private String userName;
    private String address;

    public Address() {
    }

    public Address(int addressId, String userName, String address) {
        this.addressId = addressId;
        this.userName = userName;
        this.address = address;
    }

    public int getAddressId() {
        return addressId;
    }

    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Address address1 = (Address) o;
        return addressId == address1.addressId &&
                Objects.equals(userName, address1.userName) &&
                Objects.equals(address, address1.address);
    }

    @Override
    public int hashCode() {
        return Objects.hash(addressId, userName, address);
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId=" + addressId +
                ", userName='" + userName + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
