
package Stu.Rent;

public class complain {
    
  private int complainId;
  private int student_id;
  private int product_id;
 private String complain;
 private String date;
 private String status;


    public complain() {
    }
    
        public complain(int complainId, int student_id, int product_id, String complain, String date, String status) {
        this.complainId = complainId;
        this.student_id = student_id;
        this.product_id = product_id;
        this.complain = complain;
        this.date = date;
        this.status = status;
    }

        /**
         * @return the Student_id
         */
        public int getStudent_id() {
            return student_id;
        }

        /**
         * @param student_id the Student_id to set
         */
        public void setStudent_id(int student_id) {
            this.student_id = student_id;
        }


        /**
         * @return the Product_id
         */
        public int getProduct_id() {
            return product_id;
        }

        /**
         * @param product_id the Product_id to set
         */
        public void setProduct_id(int product_id) {
            this.product_id = product_id;
        }

    /**
     * @return the complainId
     */
    public int getComplainId() {
        return complainId;
    }

    /**
     * @param complainId the complainId to set
     */
    public void setComplainId(int complainId) {
        this.complainId = complainId;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the complain
     */
    public String getComplain() {
        return complain;
    }

    /**
     * @param complain the complain to set
     */
    public void setComplain(String complain) {
        this.complain = complain;
    }
    
}
    

   

