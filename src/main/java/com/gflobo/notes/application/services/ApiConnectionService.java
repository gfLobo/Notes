package com.gflobo.notes.application.services;

import com.gflobo.notes.application.enums.HttpMethod;
import com.gflobo.notes.application.repositories.IApiConnection;

import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class ApiConnectionService implements IApiConnection {
    @Override
    public HttpURLConnection createConnection(String url, HttpMethod method, String jsonInputString) throws IOException {
        URL apiUrl = new URL(url);
        HttpURLConnection connection = (HttpURLConnection) apiUrl.openConnection();

        // Set the request method to POST
        connection.setRequestMethod(method.getMethod());
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setDoOutput(true);

        // Write JSON data to the connection
        try (OutputStream os = connection.getOutputStream()) {
            byte[] input = jsonInputString.getBytes(StandardCharsets.UTF_8);
            os.write(input, 0, input.length);
        }

        return connection;
    }
}
