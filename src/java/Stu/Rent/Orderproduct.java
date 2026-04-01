
package Stu.Rent;

public class Orderproduct {
  private int order_id;
  private int Student_id;
 private String productname;
 private int quantity;
 private int price;
 private String address;
  private String city;
   private int contact;

    public Orderproduct() {
    }

    public Orderproduct(int order_id, int Student_id, String productname, int quantity, int price, String address, String city, int contact) {
        this.order_id = order_id;
        this.Student_id = Student_id;
        this.productname = productname;
        this.quantity = quantity;
        this.price = price;
        this.address = address;
        this.city = city;
        this.contact = contact;
    }

   

    /**
     * @return the order_id
     */
    public int getOrder_id() {
        return order_id;
    }

    /**
     * @param order_id the order_id to set
     */
    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    /**
     * @return the Student_id
     */
    public int getStudent_id() {
        return Student_id;
    }

    /**
     * @param Student_id the Student_id to set
     */
    public void setStudent_id(int Student_id) {
        this.Student_id = Student_id;
    }

    /**
     * @return the productname
     */
    public String getProductname() {
        return productname;
    }

    /**
     * @param productname the productname to set
     */
    public void setProductname(String productname) {
        this.productname = productname;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the price
     */
    public int getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(int price) {
        this.price = price;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the contact
     */
    public int getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(int contact) {
        this.contact = contact;
    }
}

