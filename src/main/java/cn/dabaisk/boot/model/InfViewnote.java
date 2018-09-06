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
public class InfViewnote extends Model<InfViewnote> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("InfoId")
    private Integer InfoId;

    @TableField("EmpId")
    private Integer EmpId;

    @TableField("ViewDate")
    private LocalDateTime ViewDate;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public Integer getInfoId() {
        return InfoId;
    }

    public void setInfoId(Integer InfoId) {
        this.InfoId = InfoId;
    }

    public Integer getEmpId() {
        return EmpId;
    }

    public void setEmpId(Integer EmpId) {
        this.EmpId = EmpId;
    }

    public LocalDateTime getViewDate() {
        return ViewDate;
    }

    public void setViewDate(LocalDateTime ViewDate) {
        this.ViewDate = ViewDate;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "InfViewnote{" +
        "Id=" + Id +
        ", InfoId=" + InfoId +
        ", EmpId=" + EmpId +
        ", ViewDate=" + ViewDate +
        "}";
    }
}
