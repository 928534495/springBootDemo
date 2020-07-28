package com.example.demo.bean;

public class UserInfo extends User {

    private int levelId;
    private String levelName;
    private int levelScore;
    private String parametersState;
    private float levelProportion;

    public float getLevelProportion() {
        return levelProportion;
    }

    public void setLevelProportion(float levelProportion) {
        this.levelProportion = levelProportion;
    }

    public String getParametersState() {
        return parametersState;
    }

    public void setParametersState(String parametersState) {
        this.parametersState = parametersState;
    }

    public int getLevelId() {
        return levelId;
    }

    public void setLevelId(int levelId) {
        this.levelId = levelId;
    }

    public String getLevelName() {
        return levelName;
    }

    public void setLevelName(String levelName) {
        this.levelName = levelName;
    }

    public int getLevelScore() {
        return levelScore;
    }

    public void setLevelScore(int levelScore) {
        this.levelScore = levelScore;
    }

}

