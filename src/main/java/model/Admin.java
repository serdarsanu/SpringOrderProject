package model;
// Generated 05.Eki.2019 21:16:32 by Hibernate Tools 5.2.12.Final


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Admin generated by hbm2java
 */
@Entity
@Table(name="admin")
public class Admin  implements java.io.Serializable {


     private Integer adminid;
     private String adminname;
     private String adminmail;
     private String adminpassword;
     private String adminpasscode;

    public Admin() {
    }

    public Admin(String adminname, String adminmail, String adminpassword, String adminpasscode) {
       this.adminname = adminname;
       this.adminmail = adminmail;
       this.adminpassword = adminpassword;
       this.adminpasscode = adminpasscode;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="adminid", unique=true, nullable=false)
    public Integer getAdminid() {
        return this.adminid;
    }
    
    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }

    
    @Column(name="adminname", nullable=false)
    public String getAdminname() {
        return this.adminname;
    }
    
    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    
    @Column(name="adminmail", nullable=false)
    public String getAdminmail() {
        return this.adminmail;
    }
    
    public void setAdminmail(String adminmail) {
        this.adminmail = adminmail;
    }

    
    @Column(name="adminpassword", nullable=false)
    public String getAdminpassword() {
        return this.adminpassword;
    }
    
    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }

    
    @Column(name="adminpasscode", nullable=false)
    public String getAdminpasscode() {
        return this.adminpasscode;
    }
    
    public void setAdminpasscode(String adminpasscode) {
        this.adminpasscode = adminpasscode;
    }




}


