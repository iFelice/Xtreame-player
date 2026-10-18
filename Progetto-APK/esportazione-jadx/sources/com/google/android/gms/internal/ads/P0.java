package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public abstract class P0 implements K9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f15304G;

    public P0(String str) {
        this.f15304G = str;
    }

    @Override // com.google.android.gms.internal.ads.K9
    public /* synthetic */ void b(A8 a8) {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f15304G;
    }
}
