package com.gflobo.notes.api.contexts.authentication.servlets;

import com.gflobo.notes.api.contexts.authentication.enums.AuthenticationOperation;
import com.gflobo.notes.api.repositories.IAuthentication;
import com.gflobo.notes.api.services.AuthenticationService;
import com.gflobo.notes.application.repositories.IApiConnection;
import com.gflobo.notes.application.repositories.IPropertiesConfiguration;
import com.gflobo.notes.application.services.ApiConnectionService;
import com.gflobo.notes.application.services.PropertiesConfigurationService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/api/authentication/signup")
public class SignUpServlet extends HttpServlet {

    IAuthentication authenticationService;
    IApiConnection apiConnection;
    IPropertiesConfiguration propertiesConfiguration;
    @Override
    public void init(ServletConfig configs) throws ServletException {
        super.init(configs);
        propertiesConfiguration = new PropertiesConfigurationService();
        apiConnection = new ApiConnectionService();
        authenticationService = new AuthenticationService(apiConnection, propertiesConfiguration);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String message = authenticationService.authentication(email, password, AuthenticationOperation.SignUp);
        request.setAttribute("message", message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/signUp.jsp");
        dispatcher.forward(request, response);
    }
}
