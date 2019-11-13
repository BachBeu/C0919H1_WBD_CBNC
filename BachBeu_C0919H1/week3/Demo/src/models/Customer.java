package models;


public class Customer {
    private String CusName;
    private String Dob;
    private String CusAddress;
    private String Images;

    public Customer() {
    }

    public Customer(String cusName, String dob, String cusAddress, String images) {
        CusName = cusName;
        Dob = dob;
        CusAddress = cusAddress;
        Images = images;
    }

    public String getCusName() {
        return CusName;
    }

    public void setCusName(String cusName) {
        CusName = cusName;
    }

    public String getDob() {
        return Dob;
    }

    public void setDob(String dob) {
        Dob = dob;
    }

    public String getCusAddress() {
        return CusAddress;
    }

    public void setCusAddress(String cusAddress) {
        CusAddress = cusAddress;
    }

    public String getImages() {
        return Images;
    }

    public void setImages(String images) {
        Images = images;
    }
}
