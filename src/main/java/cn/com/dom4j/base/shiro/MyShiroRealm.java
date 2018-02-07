package cn.com.dom4j.base.shiro;

import cn.com.dom4j.base.util.EncryptUtil;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import java.util.HashSet;
import java.util.Set;

/**
 * @author bobo (bo.wang@laowantong.cc)
 * @date 2018年01月29日
 * @desc
 */
public class MyShiroRealm extends AuthorizingRealm {

    // 模拟后台用户登录
    private static final String USER_NAME = "admin";
    private static final String PASSWORD = "123456";

    // 授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        Set<String> roleNames = new HashSet<>();
        Set<String> permissions = new HashSet<>();

        roleNames.add("administrator");
        permissions.add("new-page.jhtml");

        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roleNames);
        info.setStringPermissions(permissions);

        return info;
    }

    // 登录验证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;

        if (StringUtils.equalsIgnoreCase(token.getUsername(), USER_NAME)) {
            return new SimpleAuthenticationInfo(USER_NAME, EncryptUtil.MD5(PASSWORD), getName());
        } else {
            throw new AuthenticationException();
        }

    }
}

/**

 1. Authentication: 证明；鉴定；证实
 2.




 */
