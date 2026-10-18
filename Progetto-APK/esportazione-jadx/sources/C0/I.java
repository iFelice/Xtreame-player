package C0;

import android.media.metrics.LogSessionId;
import android.os.Build;
import java.util.Objects;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final H f1281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f1282c;

    static {
        new I(HttpUrl.FRAGMENT_ENCODE_SET);
    }

    public I(String str) {
        H h8;
        this.f1280a = str;
        if (Build.VERSION.SDK_INT >= 31) {
            h8 = new H();
            h8.f1279a = LogSessionId.LOG_SESSION_ID_NONE;
        } else {
            h8 = null;
        }
        this.f1281b = h8;
        this.f1282c = new Object();
    }

    public final synchronized LogSessionId a() {
        H h8;
        h8 = this.f1281b;
        h8.getClass();
        return h8.f1279a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof I)) {
            return false;
        }
        I i8 = (I) obj;
        return Objects.equals(this.f1280a, i8.f1280a) && Objects.equals(this.f1281b, i8.f1281b) && Objects.equals(this.f1282c, i8.f1282c);
    }

    public final int hashCode() {
        return Objects.hash(this.f1280a, this.f1281b, this.f1282c);
    }
}
