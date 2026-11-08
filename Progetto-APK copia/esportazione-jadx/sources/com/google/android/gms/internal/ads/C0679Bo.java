package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0679Bo extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f12497G;

    public C0679Bo(int i8) {
        this.f12497G = i8;
    }

    public C0679Bo(int i8, String str) {
        super(str);
        this.f12497G = i8;
    }

    public C0679Bo(String str, Throwable th) {
        super(str, th);
        this.f12497G = 1;
    }
}
