package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1512jK extends AbstractC0985Xa {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f19452I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f19453J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f19454K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1804p0 f19455L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f19456M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C2190wN f19457N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f19458O;

    static {
        Integer.toString(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 36);
        Integer.toString(1002, 36);
        Integer.toString(1003, 36);
        Integer.toString(1004, 36);
        Integer.toString(WebSocketProtocol.CLOSE_NO_STATUS_CODE, 36);
        Integer.toString(1006, 36);
    }

    public C1512jK(int i8, Throwable th, int i9) {
        this(i8, th, i9, null, -1, null, 4, false);
    }

    public final C1512jK a(C2190wN c2190wN) {
        String message = getMessage();
        int i8 = Et.f13234a;
        return new C1512jK(message, getCause(), this.f17418G, this.f19452I, this.f19453J, this.f19454K, this.f19455L, this.f19456M, c2190wN, this.f17419H, this.f19458O);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public C1512jK(int i8, Throwable th, int i9, String str, int i10, C1804p0 c1804p0, int i11, boolean z7) {
        String strJ;
        String str2;
        if (i8 == 0) {
            strJ = "Source error";
        } else if (i8 != 1) {
            strJ = "Unexpected runtime error";
        } else {
            String strValueOf = String.valueOf(c1804p0);
            int i12 = Et.f13234a;
            if (i11 == 0) {
                str2 = "NO";
            } else if (i11 == 1) {
                str2 = "NO_UNSUPPORTED_TYPE";
            } else if (i11 == 2) {
                str2 = "NO_UNSUPPORTED_DRM";
            } else if (i11 == 3) {
                str2 = "NO_EXCEEDS_CAPABILITIES";
            } else {
                if (i11 != 4) {
                    throw new IllegalStateException();
                }
                str2 = "YES";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" error, index=");
            sb.append(i10);
            sb.append(", format=");
            sb.append(strValueOf);
            strJ = p000a.r.j(sb, ", format_supported=", str2);
        }
        this(TextUtils.isEmpty(null) ? strJ : strJ.concat(": null"), th, i9, i8, str, i10, c1804p0, i11, null, SystemClock.elapsedRealtime(), z7);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:13:0x0022  */
    public C1512jK(String str, Throwable th, int i8, int i9, String str2, int i10, C1804p0 c1804p0, int i11, C2190wN c2190wN, long j8, boolean z7) {
        int i12;
        boolean z8;
        super(str, th, i8, j8);
        Bundle bundle = Bundle.EMPTY;
        if (z7) {
            i12 = i9;
            if (i12 == 1) {
                i12 = 1;
            } else {
                z8 = false;
            }
            p113o3.r.J(z8);
            p113o3.r.J(th != null);
            this.f19452I = i12;
            this.f19453J = str2;
            this.f19454K = i10;
            this.f19455L = c1804p0;
            this.f19456M = i11;
            this.f19457N = c2190wN;
            this.f19458O = z7;
        }
        i12 = i9;
        z8 = true;
        p113o3.r.J(z8);
        p113o3.r.J(th != null);
        this.f19452I = i12;
        this.f19453J = str2;
        this.f19454K = i10;
        this.f19455L = c1804p0;
        this.f19456M = i11;
        this.f19457N = c2190wN;
        this.f19458O = z7;
    }
}
