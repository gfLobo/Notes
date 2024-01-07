package com.gflobo.notes.api.contexts.authentication.enums;

public enum AuthenticationOperation {

    Login("login"),
    SignUp("register");
    private final String command;

    AuthenticationOperation(String command) {
        this.command = command;
    }

    public String getCommand() {
        return command;
    }
}
