package com.example.demo.bean;

public class Files {
    private int fileId;
    private String fileName;
    private String fileCreateDate;
    private  int fileLeagth;
    private int fileUserId;

    private String fileTitle;
    private String fileContent;
    private int fileStatus;
    private int fileDownloadCount;
    private int fileIntegral;
    private String filePath;
    private int fileTypeId;


    public Files() {
        super();
    }

    public Files(int fileId, String fileName, String fileCreateDate, int fileLeagth, int fileUserId, String fileTitle, String fileContent, int fileStatus, int fileDownloadCount, int fileIntegral, String filePath, int fileTypeId) {
        this.fileId = fileId;
        this.fileName = fileName;
        this.fileCreateDate = fileCreateDate;
        this.fileLeagth = fileLeagth;
        this.fileUserId = fileUserId;
        this.fileTitle = fileTitle;
        this.fileContent = fileContent;
        this.fileStatus = fileStatus;
        this.fileDownloadCount = fileDownloadCount;
        this.fileIntegral = fileIntegral;
        this.filePath = filePath;
        this.fileTypeId = fileTypeId;
    }

    public int getFileTypeId() {
        return fileTypeId;
    }

    public void setFileTypeId(int fileTypeId) {
        this.fileTypeId = fileTypeId;
    }

    public int getFileIntegral() {
        return fileIntegral;
    }

    public void setFileIntegral(int fileIntegral) {
        this.fileIntegral = fileIntegral;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    @Override
    public String toString() {
        return "Files{" +
                "fileId=" + fileId +
                ", fileName='" + fileName + '\'' +
                ", fileCreateDate='" + fileCreateDate + '\'' +
                ", fileLeagth=" + fileLeagth +
                ", fileUserId=" + fileUserId +
                ", fileTitle='" + fileTitle + '\'' +
                ", fileContent='" + fileContent + '\'' +
                ", fileStatus=" + fileStatus +
                ", fileDownloadCount=" + fileDownloadCount +
                ", fileIntegral=" + fileIntegral +
                ", filePath='" + filePath + '\'' +
                ", fileTypeId=" + fileTypeId +
                '}';
    }

    public int getFileId() {
        return fileId;
    }

    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileCreateDate() {
        return fileCreateDate;
    }

    public void setFileCreateDate(String fileCreateDate) {
        this.fileCreateDate = fileCreateDate;
    }

    public int getFileLeagth() {
        return fileLeagth;
    }

    public void setFileLeagth(int fileLeagth) {
        this.fileLeagth = fileLeagth;
    }

    public int getFileUserId() {
        return fileUserId;
    }

    public void setFileUserId(int fileUserId) {
        this.fileUserId = fileUserId;
    }


    public String getFileTitle() {
        return fileTitle;
    }

    public void setFileTitle(String fileTitle) {
        this.fileTitle = fileTitle;
    }

    public String getFileContent() {
        return fileContent;
    }

    public void setFileContent(String fileContent) {
        this.fileContent = fileContent;
    }

    public int getFileStatus() {
        return fileStatus;
    }

    public void setFileStatus(int fileStatus) {
        this.fileStatus = fileStatus;
    }

    public int getFileDownloadCount() {
        return fileDownloadCount;
    }

    public void setFileDownloadCount(int fileDownloadCount) {
        this.fileDownloadCount = fileDownloadCount;
    }
}
