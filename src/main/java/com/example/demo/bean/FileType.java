package com.example.demo.bean;

public class FileType {
    private int typeId;
    private String typeName;
    private String typeSuffix;
    private String typeState;
    private int typeProportion;

    public FileType() {
        super();
    }

    public FileType(int typeId, String typeName, String typeSuffix, String typeState, int typeProportion) {
        this.typeId = typeId;
        this.typeName = typeName;
        this.typeSuffix = typeSuffix;
        this.typeState = typeState;
        this.typeProportion = typeProportion;
    }

    @Override
    public String toString() {
        return "FileType{" +
                "typeId=" + typeId +
                ", typeName='" + typeName + '\'' +
                ", typeSuffix='" + typeSuffix + '\'' +
                ", typeState='" + typeState + '\'' +
                '}';
    }

    public int getTypeProportion() {
        return typeProportion;
    }

    public void setTypeProportion(int typeProportion) {
        this.typeProportion = typeProportion;
    }

    public String getTypeState() {
        return typeState;
    }

    public void setTypeState(String typeState) {
        this.typeState = typeState;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeSuffix() {
        return typeSuffix;
    }

    public void setTypeSuffix(String typeSuffix) {
        this.typeSuffix = typeSuffix;
    }
}
