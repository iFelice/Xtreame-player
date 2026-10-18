package org.eclipse.paho.client.mqttv3.spi;

import java.net.URI;
import java.util.Set;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.NetworkModule;

/* JADX INFO: loaded from: classes2.dex */
public interface NetworkModuleFactory {
    NetworkModule createNetworkModule(URI uri, MqttConnectOptions mqttConnectOptions, String str);

    Set<String> getSupportedUriSchemes();

    void validateURI(URI uri);
}
