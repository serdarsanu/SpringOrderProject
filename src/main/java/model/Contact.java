package model;
// Generated 05.Eki.2019 21:16:32 by Hibernate Tools 5.2.12.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Contact generated by hbm2java
 */
@Entity
@Table(name = "contact")
public class Contact implements java.io.Serializable {

	private Integer contactid;
	private String contactname;
	private String contactmail;
	private String contacttext;

	public Contact() {
	}

	public Contact(String contactname, String contactmail, String contacttext) {
		this.contactname = contactname;
		this.contactmail = contactmail;
		this.contacttext = contacttext;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "contactid", unique = true, nullable = false)
	public Integer getContactid() {
		return this.contactid;
	}

	public void setContactid(Integer contactid) {
		this.contactid = contactid;
	}

	@Column(name = "contactname", nullable = false)
	public String getContactname() {
		return this.contactname;
	}

	public void setContactname(String contactname) {
		this.contactname = contactname;
	}

	@Column(name = "contactmail", nullable = false)
	public String getContactmail() {
		return this.contactmail;
	}

	public void setContactmail(String contactmail) {
		this.contactmail = contactmail;
	}

	@Column(name = "contacttext", nullable = false)
	public String getContacttext() {
		return this.contacttext;
	}

	public void setContacttext(String contacttext) {
		this.contacttext = contacttext;
	}

}
