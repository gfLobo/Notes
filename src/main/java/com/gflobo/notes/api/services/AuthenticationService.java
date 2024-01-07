package com.gflobo.notes.api.services;

import com.gflobo.notes.api.contexts.authentication.enums.AuthenticationOperation;
import com.gflobo.notes.api.repositories.IAuthentication;
import com.gflobo.notes.application.enums.HttpMethod;
import com.gflobo.notes.application.repositories.IApiConnection;
import com.gflobo.notes.application.repositories.IPropertiesConfiguration;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

public class AuthenticationService implements IAuthentication {

    private final IApiConnection apiConnection;
    private final IPropertiesConfiguration propertiesConfiguration;
    private static final Logger LOGGER = Logger.getLogger(AuthenticationService.class.getName());

    public AuthenticationService(IApiConnection apiConnection, IPropertiesConfiguration propertiesConfiguration) {
        this.apiConnection = apiConnection;
        this.propertiesConfiguration = propertiesConfiguration;
    }

    @Override
    public String authentication(String email, String password, AuthenticationOperation command) {
        String apiUrl = propertiesConfiguration.getProperty("apiBaseUrl").concat("/api/Authentication/".concat(command.getCommand()));

        String jsonInputString = String.format("{ \"email\": \"%s\", \"password\": \"%s\" }", email, password);

        try {
            var connection = apiConnection.createConnection(apiUrl, HttpMethod.POST, jsonInputString);
            var br = new BufferedReader(new InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
            return br.lines().collect(Collectors.joining());
        } catch (Exception e) {
            LOGGER.log(Level.WARNING, "An error occurred while trying to authenticate", e);
            return null;
        }
    }
}