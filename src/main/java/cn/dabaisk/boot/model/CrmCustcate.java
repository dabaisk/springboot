package cn.dabaisk.boot.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
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
public class CrmCustcate extends Model<CrmCustcate> {

    private static final long serialVersionUID = 1L;

    /**
     * 客户类别
     */
    @TableId(value = "Id", type = IdType.AUTO)
    private Integer Id;

    @TableField("Name")
    private String Name;

    @TableField("EName")
    private String EName;

    @TableField("ParentId")
    private Integer ParentId;

    @TableField("OrderId")
    private Integer OrderId;

    /**
     * 父目录路径如：,1,10, 包括自己Id
     */
    @TableField("Path")
    private String Path;

    /**
     * Id路径如：,1,10, 包括父Id,自己Id
     */
    @TableField("IdPath")
    private String IdPath;


    public Integer getId() {
        return Id;
    }

    public void setId(Integer Id) {
        this.Id = Id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEName() {
        return EName;
    }

    public void setEName(String EName) {
        this.EName = EName;
    }

    public Integer getParentId() {
        return ParentId;
    }

    public void setParentId(Integer ParentId) {
        this.ParentId = ParentId;
    }

    public Integer getOrderId() {
        return OrderId;
    }

    public void setOrderId(Integer OrderId) {
        this.OrderId = OrderId;
    }

    public String getPath() {
        return Path;
    }

    public void setPath(String Path) {
        this.Path = Path;
    }

    public String getIdPath() {
        return IdPath;
    }

    public void setIdPath(String IdPath) {
        this.IdPath = IdPath;
    }

    @Override
    protected Serializable pkVal() {
        return this.Id;
    }

    @Override
    public String toString() {
        return "CrmCustcate{" +
        "Id=" + Id +
        ", Name=" + Name +
        ", EName=" + EName +
        ", ParentId=" + ParentId +
        ", OrderId=" + OrderId +
        ", Path=" + Path +
        ", IdPath=" + IdPath +
        "}";
    }
}
