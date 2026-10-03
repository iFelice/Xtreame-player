package org.eclipse.paho.client.mqttv3.internal;

import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttSecurityException;

/* JADX INFO: loaded from: classes2.dex */
public class ExceptionHelper {
    private ExceptionHelper() {
    }

    public static MqttException createMqttException(int i8) {
        return (i8 == 4 || i8 == 5) ? new MqttSecurityException(i8) : new MqttException(i8);
    }

    public static boolean isClassAvailable(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static MqttException createMqttException(Throwable th) {
        if (th.getClass().getName().equals("java.security.GeneralSecurityException")) {
            return new MqttSecurityException(th);
        }
        return new MqttException(th);
    }
}
