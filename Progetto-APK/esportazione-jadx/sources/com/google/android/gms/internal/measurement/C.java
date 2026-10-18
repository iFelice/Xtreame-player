package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte f22869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f22870c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f22871d;

    public final D a() {
        if (this.f22869b == 1 && this.f22868a != null && this.f22870c != 0 && this.f22871d != 0) {
            return new D(this.f22868a, this.f22870c, this.f22871d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f22868a == null) {
            sb.append(" fileOwner");
        }
        if (this.f22869b == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.f22870c == 0) {
            sb.append(" fileChecks");
        }
        if (this.f22871d == 0) {
            sb.append(" filePurpose");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
