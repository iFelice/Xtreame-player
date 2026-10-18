package W;

import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7257a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7258b;

    public e(long j8, long j9) {
        if (j9 == 0) {
            this.f7257a = 0L;
            this.f7258b = 1L;
        } else {
            this.f7257a = j8;
            this.f7258b = j9;
        }
    }

    public final String toString() {
        return this.f7257a + MqttTopic.TOPIC_LEVEL_SEPARATOR + this.f7258b;
    }
}
