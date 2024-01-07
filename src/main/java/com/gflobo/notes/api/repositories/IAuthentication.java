package com.gflobo.notes.api.repositories;

import com.gflobo.notes.api.contexts.authentication.enums.AuthenticationOperation;

public interface IAuthentication {
    String authentication(String email, String password, AuthenticationOperation command);
}
