package cn.dabaisk.boot.service.impl;

import cn.dabaisk.boot.model.OaEmployee;
import cn.dabaisk.boot.mapper.OaEmployeeMapper;
import cn.dabaisk.boot.service.OaEmployeeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Bean
 * @since 2018-09-05
 */
@Service
public class OaEmployeeServiceImpl extends ServiceImpl<OaEmployeeMapper, OaEmployee> implements OaEmployeeService {

}
