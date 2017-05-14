package com.song.exception;

import java.io.Serializable;

/**
 * Created by Administrator on 2017/5/14.
 */
public class ServiceException extends Exception implements Serializable{
    private static final long serialVersionUID = -1396674147244113950L;
    private int code;
    private String message;

    public ServiceException(int code, String message) {
        super();
        this.code = code;
        this.message = message;
    }

    public ServiceException(String message) {
        super();
        this.message = message;
    }


    public int getCode() {
        return code;
    }
    public void setCode(int code) {
        this.code = code;
    }
    @Override
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

}
