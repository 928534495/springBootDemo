package com.example.demo.bean;

public class Integral {
    private int integralId;
    private String integralUpdateTime;
    private String integralThing;
    private int integralScore;
    private int  integralUserId;
    private int integralFileId;

    public Integral() {
        super();
    }

    public Integral(int integralId, String integralUpdateTime, String integralThing, int integralScore, int integralUserId, int integralFileId) {
        this.integralId = integralId;
        this.integralUpdateTime = integralUpdateTime;
        this.integralThing = integralThing;
        this.integralScore = integralScore;
        this.integralUserId = integralUserId;
        this.integralFileId = integralFileId;
    }

    @Override
    public String toString() {
        return "Integral{" +
                "integralId=" + integralId +
                ", integralUpdateTime='" + integralUpdateTime + '\'' +
                ", integralThing=" + integralThing +
                ", integralScore=" + integralScore +
                ", integralUserId=" + integralUserId +
                ", integralFileId=" + integralFileId +
                '}';
    }

    public int getIntegralId() {
        return integralId;
    }

    public void setIntegralId(int integralId) {
        this.integralId = integralId;
    }

    public String getIntegralUpdateTime() {
        return integralUpdateTime;
    }

    public void setIntegralUpdateTime(String integralUpdateTime) {
        this.integralUpdateTime = integralUpdateTime;
    }

    public String getIntegralThing() {
        return integralThing;
    }

    public void setIntegralThing(String integralThing) {
        this.integralThing = integralThing;
    }

    public int getIntegralScore() {
        return integralScore;
    }

    public void setIntegralScore(int integralScore) {
        this.integralScore = integralScore;
    }

    public int getIntegralUserId() {
        return integralUserId;
    }

    public void setIntegralUserId(int integralUserId) {
        this.integralUserId = integralUserId;
    }

    public int getIntegralFileId() {
        return integralFileId;
    }

    public void setIntegralFileId(int integralFileId) {
        this.integralFileId = integralFileId;
    }
}
