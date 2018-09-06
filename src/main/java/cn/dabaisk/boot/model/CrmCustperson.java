package cn.dabaisk.boot.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author Bean
 * @since 2018-09-06
 */
public class CrmCustperson extends Model<CrmCustperson> {

    private static final long serialVersionUID = 1L;

    /**
     * 供应商联系人表Id
     */
    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("BirthDate")
    private LocalDateTime BirthDate;

    /**
     * 籍贯
     */
    @TableField("Homeland")
    private String Homeland;

    @TableField("Address")
    private String Address;

    /**
     * 民族
     */
    @TableField("Nation")
    private String Nation;

    /**
     * 爱好
     */
    @TableField("Hobby")
    private String Hobby;

    /**
     * 性格特点
     */
    @TableField("Nature")
    private String Nature;

    @TableField("Descn")
    private String Descn;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public LocalDateTime getBirthDate() {
        return BirthDate;
    }

    public void setBirthDate(LocalDateTime BirthDate) {
        this.BirthDate = BirthDate;
    }

    public String getHomeland() {
        return Homeland;
    }

    public void setHomeland(String Homeland) {
        this.Homeland = Homeland;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getNation() {
        return Nation;
    }

    public void setNation(String Nation) {
        this.Nation = Nation;
    }

    public String getHobby() {
        return Hobby;
    }

    public void setHobby(String Hobby) {
        this.Hobby = Hobby;
    }

    public String getNature() {
        return Nature;
    }

    public void setNature(String Nature) {
        this.Nature = Nature;
    }

    public String getDescn() {
        return Descn;
    }

    public void setDescn(String Descn) {
        this.Descn = Descn;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "CrmCustperson{" +
        "Id=" + Id +
        ", BirthDate=" + BirthDate +
        ", Homeland=" + Homeland +
        ", Address=" + Address +
        ", Nation=" + Nation +
        ", Hobby=" + Hobby +
        ", Nature=" + Nature +
        ", Descn=" + Descn +
        "}";
    }
}
