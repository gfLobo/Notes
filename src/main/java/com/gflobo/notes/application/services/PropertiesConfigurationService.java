package com.gflobo.notes.application.services;

import com.gflobo.notes.application.repositories.IPropertiesConfiguration;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PropertiesConfigurationService implements IPropertiesConfiguration {
    private static final Logger LOGGER = Logger.getLogger(PropertiesConfigurationService.class.getName());

    @Override
    public String getProperty(String key) {
        Properties properties = new Properties();
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("appsettings")) {
            properties.load(input);
        } catch (IOException ex) {
            LOGGER.log(Level.SEVERE, "An error occurred while getting the property", ex);
        }
        return properties.getProperty(key);
    }
}
