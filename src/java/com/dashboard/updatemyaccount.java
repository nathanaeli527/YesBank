
package com.dashboard;

public class updatemyaccount{
    private int customerSenderbalance;
    private String customerSenderMessage;
    private String customerSendercardnumber;
    
    private int customerReceiverbalance;
    private String customerReceiverMessage;
     private String customerReceiverCardnumber;
    
    
    
    public  updatemyaccount(int customerSenderbalance, String customerSenderMessage, String customerSendercardnumber,int  customerReceiverbalance, String customerReceiverMessage, String customerReceiverCardnumber)
    {
        this.customerSenderbalance    = customerSenderbalance;
        this.customerSenderMessage    = customerSenderMessage;
        this.customerSendercardnumber =  customerSendercardnumber;
        
        this.customerReceiverbalance  = customerReceiverbalance;
        this.customerReceiverMessage  = customerReceiverMessage;
        this.customerReceiverCardnumber = customerReceiverCardnumber;
        
    }

    public int getCustomerSenderbalance() {
        return customerSenderbalance;
    }

    public void setCustomerSenderbalance(int customerSenderbalance) {
        this.customerSenderbalance = customerSenderbalance;
    }

    public String getCustomerSenderMessage() {
        return customerSenderMessage;
    }

    public void setCustomerSenderMessage(String customerSenderMessage) {
        this.customerSenderMessage = customerSenderMessage;
    }

    public String getCustomerSendercardnumber() {
        return customerSendercardnumber;
    }

    public void setCustomerSendercardnumber(String customerSendercardnumber) {
        this.customerSendercardnumber = customerSendercardnumber;
    }

    public int getCustomerReceiverbalance() {
        return customerReceiverbalance;
    }

    public void setCustomerReceiverbalance(int customerReceiverbalance) {
        this.customerReceiverbalance = customerReceiverbalance;
    }

    public String getCustomerReceiverMessage() {
        return customerReceiverMessage;
    }

    public void setCustomerReceiverMessage(String customerReceiverMessage) {
        this.customerReceiverMessage = customerReceiverMessage;
    }

    public String getCustomerReceiverCardnumber() {
        return customerReceiverCardnumber;
    }

    public void setCustomerReceiverCardnumber(String customerReceiverCardnumber) {
        this.customerReceiverCardnumber = customerReceiverCardnumber;
    }
    
  
    
}
