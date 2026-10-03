package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2035tO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0961Ve f21075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f21076b;

    public C2035tO(C0961Ve c0961Ve, int[] iArr) {
        if (iArr.length == 0) {
            Zo.d("ETSDefinition", "Empty tracks are not allowed", new IllegalArgumentException());
        }
        this.f21075a = c0961Ve;
        this.f21076b = iArr;
    }
}
