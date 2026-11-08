package F0;

import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p049g1.a[] f3045a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long[] f3046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3048d;

    public g(String str, String str2, long[] jArr, p049g1.a[] aVarArr) {
        this.f3047c = str;
        this.f3048d = str2;
        this.f3046b = jArr;
        this.f3045a = aVarArr;
    }

    public final String a() {
        return this.f3047c + MqttTopic.TOPIC_LEVEL_SEPARATOR + this.f3048d;
    }
}
