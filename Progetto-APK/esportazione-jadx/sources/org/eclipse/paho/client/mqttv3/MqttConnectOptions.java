package org.eclipse.paho.client.mqttv3;

import A0.O;
import java.util.Properties;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import org.eclipse.paho.client.mqttv3.internal.NetworkModuleService;
import org.eclipse.paho.client.mqttv3.util.Debug;

/* JADX INFO: loaded from: classes2.dex */
public class MqttConnectOptions {
    public static final boolean CLEAN_SESSION_DEFAULT = true;
    public static final int CONNECTION_TIMEOUT_DEFAULT = 30;
    public static final int KEEP_ALIVE_INTERVAL_DEFAULT = 60;
    public static final int MAX_INFLIGHT_DEFAULT = 10;
    public static final int MQTT_VERSION_3_1 = 3;
    public static final int MQTT_VERSION_3_1_1 = 4;
    public static final int MQTT_VERSION_DEFAULT = 0;
    private char[] password;
    private SocketFactory socketFactory;
    private String userName;
    private int keepAliveInterval = 60;
    private int maxInflight = 10;
    private String willDestination = null;
    private MqttMessage willMessage = null;
    private Properties sslClientProps = null;
    private boolean httpsHostnameVerificationEnabled = true;
    private HostnameVerifier sslHostnameVerifier = null;
    private boolean cleanSession = true;
    private int connectionTimeout = 30;
    private String[] serverURIs = null;
    private int mqttVersion = 0;
    private boolean automaticReconnect = false;
    private int maxReconnectDelay = 128000;
    private Properties customWebSocketHeaders = null;
    private int executorServiceTimeout = 1;

    private void validateWill(String str, Object obj) {
        if (str == null || obj == null) {
            throw new IllegalArgumentException();
        }
        MqttTopic.validate(str, false);
    }

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public Properties getCustomWebSocketHeaders() {
        return this.customWebSocketHeaders;
    }

    public Properties getDebug() {
        Properties properties = new Properties();
        properties.put("MqttVersion", Integer.valueOf(getMqttVersion()));
        properties.put("CleanSession", Boolean.valueOf(isCleanSession()));
        properties.put("ConTimeout", Integer.valueOf(getConnectionTimeout()));
        properties.put("KeepAliveInterval", Integer.valueOf(getKeepAliveInterval()));
        properties.put("UserName", getUserName() == null ? "null" : getUserName());
        properties.put("WillDestination", getWillDestination() == null ? "null" : getWillDestination());
        if (getSocketFactory() == null) {
            properties.put("SocketFactory", "null");
        } else {
            properties.put("SocketFactory", getSocketFactory());
        }
        if (getSSLProperties() == null) {
            properties.put("SSLProperties", "null");
        } else {
            properties.put("SSLProperties", getSSLProperties());
        }
        return properties;
    }

    public int getExecutorServiceTimeout() {
        return this.executorServiceTimeout;
    }

    public int getKeepAliveInterval() {
        return this.keepAliveInterval;
    }

    public int getMaxInflight() {
        return this.maxInflight;
    }

    public int getMaxReconnectDelay() {
        return this.maxReconnectDelay;
    }

    public int getMqttVersion() {
        return this.mqttVersion;
    }

    public char[] getPassword() {
        return this.password;
    }

    public HostnameVerifier getSSLHostnameVerifier() {
        return this.sslHostnameVerifier;
    }

    public Properties getSSLProperties() {
        return this.sslClientProps;
    }

    public String[] getServerURIs() {
        return this.serverURIs;
    }

    public SocketFactory getSocketFactory() {
        return this.socketFactory;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getWillDestination() {
        return this.willDestination;
    }

    public MqttMessage getWillMessage() {
        return this.willMessage;
    }

    public boolean isAutomaticReconnect() {
        return this.automaticReconnect;
    }

    public boolean isCleanSession() {
        return this.cleanSession;
    }

    public boolean isHttpsHostnameVerificationEnabled() {
        return this.httpsHostnameVerificationEnabled;
    }

    public void setAutomaticReconnect(boolean z7) {
        this.automaticReconnect = z7;
    }

    public void setCleanSession(boolean z7) {
        this.cleanSession = z7;
    }

    public void setConnectionTimeout(int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        this.connectionTimeout = i8;
    }

    public void setCustomWebSocketHeaders(Properties properties) {
        this.customWebSocketHeaders = properties;
    }

    public void setExecutorServiceTimeout(int i8) {
        this.executorServiceTimeout = i8;
    }

    public void setHttpsHostnameVerificationEnabled(boolean z7) {
        this.httpsHostnameVerificationEnabled = z7;
    }

    public void setKeepAliveInterval(int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        this.keepAliveInterval = i8;
    }

    public void setMaxInflight(int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        this.maxInflight = i8;
    }

    public void setMaxReconnectDelay(int i8) {
        this.maxReconnectDelay = i8;
    }

    public void setMqttVersion(int i8) {
        if (i8 != 0 && i8 != 3 && i8 != 4) {
            throw new IllegalArgumentException(O.y("An incorrect version was used \"", i8, "\". Acceptable version options are 0, 3 and 4."));
        }
        this.mqttVersion = i8;
    }

    public void setPassword(char[] cArr) {
        this.password = (char[]) cArr.clone();
    }

    public void setSSLHostnameVerifier(HostnameVerifier hostnameVerifier) {
        this.sslHostnameVerifier = hostnameVerifier;
    }

    public void setSSLProperties(Properties properties) {
        this.sslClientProps = properties;
    }

    public void setServerURIs(String[] strArr) {
        for (String str : strArr) {
            NetworkModuleService.validateURI(str);
        }
        this.serverURIs = (String[]) strArr.clone();
    }

    public void setSocketFactory(SocketFactory socketFactory) {
        this.socketFactory = socketFactory;
    }

    public void setUserName(String str) {
        this.userName = str;
    }

    public void setWill(MqttTopic mqttTopic, byte[] bArr, int i8, boolean z7) {
        String name = mqttTopic.getName();
        validateWill(name, bArr);
        setWill(name, new MqttMessage(bArr), i8, z7);
    }

    public String toString() {
        return Debug.dumpProperties(getDebug(), "Connection options");
    }

    public void setWill(String str, byte[] bArr, int i8, boolean z7) {
        validateWill(str, bArr);
        setWill(str, new MqttMessage(bArr), i8, z7);
    }

    public void setWill(String str, MqttMessage mqttMessage, int i8, boolean z7) {
        this.willDestination = str;
        this.willMessage = mqttMessage;
        mqttMessage.setQos(i8);
        this.willMessage.setRetained(z7);
        this.willMessage.setMutable(false);
    }
}
