
package com.dashboard;

public class dataselection {
    
    private int balance;
    private int sending;
    
    public  dataselection(int balance, int sending)
    {
        this.balance = balance;
        this.sending = sending;
        
    }
    
    public int  getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}
        
        
     public int  getSending() {
		return sending;
	}

	public void setSending(int sending) {
		this.sending = sending;
	}
        
    
}
