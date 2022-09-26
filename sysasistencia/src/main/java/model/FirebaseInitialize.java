/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import java.io.FileInputStream;
import javax.annotation.PostConstruct;
import javax.xml.ws.ServiceMode;

/**
 *
 * @author PC-EDICION
 */
@ServiceMode
public class FirebaseInitialize {

    @PostConstruct
    public void initialize() {

        try {
            FileInputStream serviceAccount
                    = new FileInputStream("serviceAccount.json");

            FirebaseOptions options = new FirebaseOptions.Builder()
                    .setCredentials(GoogleCredentials.fromStream(serviceAccount))
                    .setDatabaseUrl("https://asistenciacada-53c63-default-rtdb.firebaseio.com")
                    .build();

            FirebaseApp.initializeApp(options);
        } catch (Exception e) {
            System.out.println("Error En conexion Base de datos Firebase: " + e);
        }
    }

}
