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
public class SysRoleright extends Model<SysRoleright> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "RoleId", type = IdType.AUTO)
    private Integer RoleId;

    @TableField("NodeId")
    private Integer NodeId;

    @TableField("RightId")
    private Integer RightId;


    public Integer getRoleId() {
        return RoleId;
    }

    public void setRoleId(Integer RoleId) {
        this.RoleId = RoleId;
    }

    public Integer getNodeId() {
        return NodeId;
    }

    public void setNodeId(Integer NodeId) {
        this.NodeId = NodeId;
    }

    public Integer getRightId() {
        return RightId;
    }

    public void setRightId(Integer RightId) {
        this.RightId = RightId;
    }

    @Override
    protected Serializable pkVal() {
        return this.RoleId;
    }

    @Override
    public String toString() {
        return "SysRoleright{" +
        "RoleId=" + RoleId +
        ", NodeId=" + NodeId +
        ", RightId=" + RightId +
        "}";
    }
}
