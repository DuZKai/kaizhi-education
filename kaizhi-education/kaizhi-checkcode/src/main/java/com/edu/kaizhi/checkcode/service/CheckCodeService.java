package com.edu.kaizhi.checkcode.service;

import com.edu.kaizhi.checkcode.model.CheckCodeParamsDto;
import com.edu.kaizhi.checkcode.model.CheckCodeResultDto;

/**
 * 验证码接口
 */
public interface CheckCodeService {


    /**
     * 生成验证码
     * @param checkCodeParamsDto 生成验证码参数
     * @return com.edu.kaizhi.checkcode.model.CheckCodeResultDto 验证码结果
    */
     CheckCodeResultDto generate(CheckCodeParamsDto checkCodeParamsDto);

     /**
      * 校验验证码
      * @param key
      * @param code
      * @return boolean
     */
    public boolean verify(String key, String code);


    /**
     * 验证码生成器
    */
    public interface CheckCodeGenerator{
        /**
         * 验证码生成
         * @return 验证码
         */
        String generate(int length);
        

    }

    /**
     * key生成器
     */
    public interface KeyGenerator{

        /**
         * key生成
         * @return 验证码
         */
        String generate(String prefix);
    }


    /**
     * 验证码存储
     */
    public interface CheckCodeStore{

        /**
         * 向缓存设置key
         * @param key key
         * @param value value
         * @param expire 过期时间,单位秒
         * @return void
        */
        void set(String key, String value, Integer expire);

        String get(String key);

        void remove(String key);
    }
}
