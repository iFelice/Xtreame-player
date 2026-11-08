package org.eclipse.paho.client.mqttv3.internal;

import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceBundleCatalog extends MessageCatalog {
    private ResourceBundle bundle = ResourceBundle.getBundle("org.eclipse.paho.client.mqttv3.internal.nls.messages");

    @Override // org.eclipse.paho.client.mqttv3.internal.MessageCatalog
    public String getLocalizedMessage(int i8) {
        try {
            return this.bundle.getString(Integer.toString(i8));
        } catch (MissingResourceException unused) {
            return "MqttException";
        }
    }
}
