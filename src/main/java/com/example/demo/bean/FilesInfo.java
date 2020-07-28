package com.example.demo.bean;

public class FilesInfo extends Files {

    private int typeId;
    private String typeName;
    private String typeSuffix;
    private String userAccount;
    private String parametersState;

    public String getParametersState() {
        return parametersState;
    }

    public void setParametersState(String parametersState) {
        this.parametersState = parametersState;
    }

    public FilesInfo() {
        super();
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
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
