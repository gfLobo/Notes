package com.gflobo.notes.application.repositories;

import com.gflobo.notes.application.enums.HttpMethod;

import java.io.IOException;
import java.net.HttpURLConnection;

public interface IApiConnection {
    HttpURLConnection createConnection(String url, HttpMethod method, String jsonInputString) throws IOException;
}
