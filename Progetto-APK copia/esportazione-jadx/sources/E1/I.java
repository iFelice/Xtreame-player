package E1;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class I {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f2652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f2653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f2654c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2655d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2656e;

    public I(p021c4.Z z7, String str, long j8) {
        this.f2656e = z7;
        com.bumptech.glide.c.e(str);
        this.f2655d = str;
        this.f2652a = j8;
    }

    public final long a() {
        if (!this.f2653b) {
            this.f2653b = true;
            p021c4.Z z7 = (p021c4.Z) this.f2656e;
            this.f2654c = z7.s().getLong((String) this.f2655d, this.f2652a);
        }
        return this.f2654c;
    }

    public final void b(long j8) {
        SharedPreferences.Editor editorEdit = ((p021c4.Z) this.f2656e).s().edit();
        editorEdit.putLong((String) this.f2655d, j8);
        editorEdit.apply();
        this.f2654c = j8;
    }

    public I(RunnableC0184t runnableC0184t) {
        this.f2655d = new Handler(Looper.getMainLooper());
        this.f2656e = runnableC0184t;
    }
}
