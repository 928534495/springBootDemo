package com.example.demo.bean;

public class Level {
    private int levelId;
    private String levelName;
    private int levelScore;
    private float levelProportion;

    public Level(int levelId, String levelName, int levelScore, float levelProportion) {
        this.levelId = levelId;
        this.levelName = levelName;
        this.levelScore = levelScore;
        this.levelProportion = levelProportion;
    }

    public Level() {
        super();
    }

    @Override
    public String toString() {
        return "Level{" +
                "levelId=" + levelId +
                ", levelName='" + levelName + '\'' +
                ", levelScore=" + levelScore +
                ", levelProportion=" + levelProportion +
                '}';
    }

    public float getLevelProportion() {
        return levelProportion;
    }

    public void setLevelProportion(float levelProportion) {
        this.levelProportion = levelProportion;
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
