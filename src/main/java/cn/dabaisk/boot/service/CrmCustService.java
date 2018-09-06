package cn.dabaisk.boot.service;

import cn.dabaisk.boot.model.CrmCust;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Bean
 * @since 2018-09-05
 */
public interface CrmCustService extends IService<CrmCust> {
    Map total(CrmCust crmCust);
}
