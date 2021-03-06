package ${packageBase}.config;

import com.github.zuihou.boot.config.BaseConfig;
import org.springframework.context.annotation.Configuration;
import com.github.zuihou.authority.api.LogApi;
import com.github.zuihou.log.event.SysLogListener;
import org.springframework.context.annotation.Bean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnExpression;

/**
 * ${description}-Web配置
 *
 * @author ${author}
 * @date ${date}
 */
@Configuration
public class ${service}WebConfiguration extends BaseConfig {

    @Bean
    @ConditionalOnExpression("${r'${'}zuihou.log.enabled:true${r'}'} && 'DB'.equals('${r'${'}zuihou.log.type:LOGGER${r'}'}')")
    public SysLogListener sysLogListener(LogApi logApi) {
        return new SysLogListener((log) -> logApi.save(log));
    }
}
