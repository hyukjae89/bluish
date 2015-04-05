// Decompiled by Jad v1.5.8f. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   JavaBoardBean.java

package com.hyukjae.portfolio.bean;


public class BoardBean
{

    public BoardBean()
    {
    }

    public int getNum()
    {
        return num;
    }

    public void setNum(int num)
    {
        this.num = num;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getSubject()
    {
        return subject;
    }

    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content = content;
    }

    public int getPos()
    {
        return pos;
    }

    public void setPos(int pos)
    {
        this.pos = pos;
    }

    public int getRef()
    {
        return ref;
    }

    public void setRef(int ref)
    {
        this.ref = ref;
    }

    public String getRegdate()
    {
        return regdate;
    }

    public void setRegdate(String regdate)
    {
        this.regdate = regdate;
    }

    public int getCount()
    {
        return count;
    }

    public void setCount(int count)
    {
        this.count = count;
    }

    private int num;
    private String name;
    private String subject;
    private String content;
    private int pos;
    private int ref;
    private String regdate;
    private int count;
}
