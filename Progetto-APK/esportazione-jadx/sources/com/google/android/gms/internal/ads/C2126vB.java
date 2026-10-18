package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2126vB {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2126vB f21450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2126vB f21451d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f21452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f21453b;

    static {
        if (GB.f13485J) {
            f21451d = null;
            f21450c = null;
        } else {
            f21451d = new C2126vB(false, null);
            f21450c = new C2126vB(true, null);
        }
    }

    public C2126vB(boolean z7, Throwable th) {
        this.f21452a = z7;
        this.f21453b = th;
    }
}
