package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2680b3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2680b3 f23732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2680b3 f23733c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Throwable f23734a;

    static {
        if (AbstractFutureC2744j3.f23877T) {
            f23733c = null;
            f23732b = null;
        } else {
            f23733c = new C2680b3(false, null);
            f23732b = new C2680b3(true, null);
        }
    }

    public C2680b3(boolean z7, Throwable th) {
        this.f23734a = th;
    }
}
