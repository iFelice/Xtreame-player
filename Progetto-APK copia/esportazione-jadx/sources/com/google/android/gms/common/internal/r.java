package com.google.android.gms.common.internal;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static r f11890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C0642s f11891c = new C0642s(0, false, false, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0642s f11892a;

    public static synchronized r a() {
        try {
            if (f11890b == null) {
                f11890b = new r();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f11890b;
    }
}
