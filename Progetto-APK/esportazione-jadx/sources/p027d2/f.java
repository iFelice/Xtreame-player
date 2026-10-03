package p027d2;

import android.app.Notification;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Notification f24633c;

    public f(int i8, int i9, Notification notification) {
        this.f24631a = i8;
        this.f24633c = notification;
        this.f24632b = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f24631a == fVar.f24631a && this.f24632b == fVar.f24632b) {
            return this.f24633c.equals(fVar.f24633c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f24633c.hashCode() + (((this.f24631a * 31) + this.f24632b) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f24631a + ", mForegroundServiceType=" + this.f24632b + ", mNotification=" + this.f24633c + '}';
    }
}
