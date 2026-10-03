package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Ky {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f14440a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f14441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public byte f14442c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f14443d;

    public final Ly a() {
        if (this.f14442c == 3 && this.f14440a != null && this.f14443d != 0) {
            return new Ly(this.f14440a, this.f14441b, this.f14443d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f14440a == null) {
            sb.append(" fileOwner");
        }
        if ((this.f14442c & 1) == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if ((this.f14442c & 2) == 0) {
            sb.append(" skipChecks");
        }
        if (this.f14443d == 0) {
            sb.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
