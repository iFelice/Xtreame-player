package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2231xC extends IOException {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f21855G;

    public C2231xC(int i8) {
        this.f21855G = i8;
    }

    public C2231xC(String str, int i8) {
        super(str);
        this.f21855G = i8;
    }

    public C2231xC(String str, int i8, Throwable th) {
        super(str, th);
        this.f21855G = i8;
    }

    public C2231xC(int i8, Throwable th) {
        super(th);
        this.f21855G = i8;
    }
}
