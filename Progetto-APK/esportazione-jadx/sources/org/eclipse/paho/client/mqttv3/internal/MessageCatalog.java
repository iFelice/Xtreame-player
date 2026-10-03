package org.eclipse.paho.client.mqttv3.internal;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MessageCatalog {
    private static MessageCatalog INSTANCE;

    public static final String getMessage(int i8) {
        if (INSTANCE == null) {
            if (ExceptionHelper.isClassAvailable("java.util.ResourceBundle")) {
                try {
                    INSTANCE = (MessageCatalog) ResourceBundleCatalog.class.newInstance();
                } catch (Exception unused) {
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
            } else if (ExceptionHelper.isClassAvailable("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog")) {
                try {
                    INSTANCE = (MessageCatalog) Class.forName("org.eclipse.paho.client.mqttv3.internal.MIDPCatalog").newInstance();
                } catch (Exception unused2) {
                    return HttpUrl.FRAGMENT_ENCODE_SET;
                }
            }
        }
        return INSTANCE.getLocalizedMessage(i8);
    }

    public abstract String getLocalizedMessage(int i8);
}
