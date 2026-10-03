package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1181cz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public IBinder f18281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f18282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18283c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f18284d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f18286f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f18287g;

    public final C1232dz a() {
        IBinder iBinder;
        if (this.f18287g == 31 && (iBinder = this.f18281a) != null) {
            return new C1232dz(iBinder, this.f18282b, this.f18283c, this.f18284d, this.f18285e, this.f18286f);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f18281a == null) {
            sb.append(" windowToken");
        }
        if ((this.f18287g & 1) == 0) {
            sb.append(" layoutGravity");
        }
        if ((this.f18287g & 2) == 0) {
            sb.append(" layoutVerticalMargin");
        }
        if ((this.f18287g & 4) == 0) {
            sb.append(" displayMode");
        }
        if ((this.f18287g & 8) == 0) {
            sb.append(" triggerMode");
        }
        if ((this.f18287g & 16) == 0) {
            sb.append(" windowWidthPx");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
