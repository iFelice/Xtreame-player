package A1;

import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f308c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f309d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f310e;

    public I(int i8, int i9) {
        this(Integer.MIN_VALUE, i8, i9, 0);
    }

    public final void a() {
        int i8 = this.f309d;
        this.f309d = i8 == Integer.MIN_VALUE ? this.f307b : i8 + this.f308c;
        this.f310e = this.f306a + this.f309d;
    }

    public final void b() {
        if (this.f309d == Integer.MIN_VALUE) {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    public final void c() {
        int i8 = this.f309d;
        int i9 = i8 == Integer.MIN_VALUE ? this.f307b : i8 + this.f308c;
        this.f309d = i9;
        this.f310e = this.f306a + i9;
    }

    public final void d() {
        if (this.f309d == Integer.MIN_VALUE) {
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    public I(int i8, int i9, int i10, int i11) {
        String str;
        String str2;
        if (i11 != 1) {
            if (i8 != Integer.MIN_VALUE) {
                str2 = i8 + MqttTopic.TOPIC_LEVEL_SEPARATOR;
            } else {
                str2 = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            this.f306a = str2;
            this.f307b = i9;
            this.f308c = i10;
            this.f309d = Integer.MIN_VALUE;
            this.f310e = HttpUrl.FRAGMENT_ENCODE_SET;
            return;
        }
        if (i8 != Integer.MIN_VALUE) {
            str = i8 + MqttTopic.TOPIC_LEVEL_SEPARATOR;
        } else {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        this.f306a = str;
        this.f307b = i9;
        this.f308c = i10;
        this.f309d = Integer.MIN_VALUE;
        this.f310e = HttpUrl.FRAGMENT_ENCODE_SET;
    }
}
