package com.xnxy.CourseSchedulingSystem.Bean.vo;

import java.util.Map;

public class ResultVO {
    private String code;
    private String message;
    private Object data;
    private Map<String,Long> pageData;
    private static final String SUCCESS_CODE = "1";
    private static final String FAILED_CODE = "-1";

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Map<String, Long> getPageData() {
        return pageData;
    }

    public void setPageData(Map<String, Long> pageData) {
        this.pageData = pageData;
    }

    public static ResultVO ok(String message){
        ResultVO resultVO = new ResultVO();
        resultVO.setMessage(message);
        resultVO.setCode(SUCCESS_CODE);
        return  resultVO;
    }

    public static ResultVO ok(String message,Object data){
        ResultVO resultVO = new ResultVO();
        resultVO.setMessage(message);
        resultVO.setCode(SUCCESS_CODE);
        resultVO.setData(data);
        return resultVO;
    }

    public static ResultVO ok(String message,Object data,Map<String,Long> pageDate){
        ResultVO resultVO = new ResultVO();
        resultVO.setMessage(message);
        resultVO.setCode(SUCCESS_CODE);
        resultVO.setData(data);
        resultVO.setPageData(pageDate);
        return resultVO;
    }

    public static ResultVO faile(String message){
        ResultVO resultVO = new ResultVO();
        resultVO.setCode(FAILED_CODE);
        resultVO.setMessage(message);
        return resultVO;
    }


}
