package org.eclipse.paho.client.mqttv3;

/* JADX INFO: loaded from: classes2.dex */
public interface IMqttAsyncClient extends AutoCloseable {
    @Override // java.lang.AutoCloseable
    void close();

    IMqttToken connect();

    IMqttToken connect(Object obj, IMqttActionListener iMqttActionListener);

    IMqttToken connect(MqttConnectOptions mqttConnectOptions);

    IMqttToken connect(MqttConnectOptions mqttConnectOptions, Object obj, IMqttActionListener iMqttActionListener);

    void deleteBufferedMessage(int i8);

    IMqttToken disconnect();

    IMqttToken disconnect(long j8);

    IMqttToken disconnect(long j8, Object obj, IMqttActionListener iMqttActionListener);

    IMqttToken disconnect(Object obj, IMqttActionListener iMqttActionListener);

    void disconnectForcibly();

    void disconnectForcibly(long j8);

    void disconnectForcibly(long j8, long j9);

    MqttMessage getBufferedMessage(int i8);

    int getBufferedMessageCount();

    String getClientId();

    int getInFlightMessageCount();

    IMqttDeliveryToken[] getPendingDeliveryTokens();

    String getServerURI();

    boolean isConnected();

    void messageArrivedComplete(int i8, int i9);

    IMqttDeliveryToken publish(String str, MqttMessage mqttMessage);

    IMqttDeliveryToken publish(String str, MqttMessage mqttMessage, Object obj, IMqttActionListener iMqttActionListener);

    IMqttDeliveryToken publish(String str, byte[] bArr, int i8, boolean z7);

    IMqttDeliveryToken publish(String str, byte[] bArr, int i8, boolean z7, Object obj, IMqttActionListener iMqttActionListener);

    void reconnect();

    boolean removeMessage(IMqttDeliveryToken iMqttDeliveryToken);

    void setBufferOpts(DisconnectedBufferOptions disconnectedBufferOptions);

    void setCallback(MqttCallback mqttCallback);

    void setManualAcks(boolean z7);

    IMqttToken subscribe(String str, int i8);

    IMqttToken subscribe(String str, int i8, Object obj, IMqttActionListener iMqttActionListener);

    IMqttToken subscribe(String str, int i8, Object obj, IMqttActionListener iMqttActionListener, IMqttMessageListener iMqttMessageListener);

    IMqttToken subscribe(String str, int i8, IMqttMessageListener iMqttMessageListener);

    IMqttToken subscribe(String[] strArr, int[] iArr);

    IMqttToken subscribe(String[] strArr, int[] iArr, Object obj, IMqttActionListener iMqttActionListener);

    IMqttToken subscribe(String[] strArr, int[] iArr, Object obj, IMqttActionListener iMqttActionListener, IMqttMessageListener[] iMqttMessageListenerArr);

    IMqttToken subscribe(String[] strArr, int[] iArr, IMqttMessageListener[] iMqttMessageListenerArr);

    IMqttToken unsubscribe(String str);

    IMqttToken unsubscribe(String str, Object obj, IMqttActionListener iMqttActionListener);

    IMqttToken unsubscribe(String[] strArr);

    IMqttToken unsubscribe(String[] strArr, Object obj, IMqttActionListener iMqttActionListener);
}
