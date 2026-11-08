package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class WC extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17177a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f17179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17180d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final VC f17181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UC f17182f;

    public WC(int i8, int i9, int i10, int i11, VC vc, UC uc) {
        this.f17177a = i8;
        this.f17178b = i9;
        this.f17179c = i10;
        this.f17180d = i11;
        this.f17181e = vc;
        this.f17182f = uc;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f17181e != VC.f16973d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof WC)) {
            return false;
        }
        WC wc = (WC) obj;
        return wc.f17177a == this.f17177a && wc.f17178b == this.f17178b && wc.f17179c == this.f17179c && wc.f17180d == this.f17180d && wc.f17181e == this.f17181e && wc.f17182f == this.f17182f;
    }

    public final int hashCode() {
        return Objects.hash(WC.class, Integer.valueOf(this.f17177a), Integer.valueOf(this.f17178b), Integer.valueOf(this.f17179c), Integer.valueOf(this.f17180d), this.f17181e, this.f17182f);
    }

    public final String toString() {
        StringBuilder sbQ = com.google.protobuf.U2.q("AesCtrHmacAead Parameters (variant: ", String.valueOf(this.f17181e), ", hashType: ", String.valueOf(this.f17182f), ", ");
        sbQ.append(this.f17179c);
        sbQ.append("-byte IV, and ");
        sbQ.append(this.f17180d);
        sbQ.append("-byte tags, and ");
        sbQ.append(this.f17177a);
        sbQ.append("-byte AES key, and ");
        return p000a.r.h(sbQ, this.f17178b, "-byte HMAC key)");
    }
}
