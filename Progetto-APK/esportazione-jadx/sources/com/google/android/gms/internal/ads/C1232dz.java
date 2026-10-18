package com.google.android.gms.internal.ads;

import android.os.IBinder;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1232dz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IBinder f18403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f18406d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18407e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f18408f;

    public C1232dz(IBinder iBinder, String str, int i8, float f8, int i9, String str2) {
        this.f18403a = iBinder;
        this.f18404b = str;
        this.f18405c = i8;
        this.f18406d = f8;
        this.f18407e = i9;
        this.f18408f = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1232dz) {
            C1232dz c1232dz = (C1232dz) obj;
            if (this.f18403a.equals(c1232dz.f18403a)) {
                String str = c1232dz.f18404b;
                String str2 = this.f18404b;
                if (str2 != null ? str2.equals(str) : str == null) {
                    if (this.f18405c == c1232dz.f18405c && Float.floatToIntBits(this.f18406d) == Float.floatToIntBits(c1232dz.f18406d) && this.f18407e == c1232dz.f18407e) {
                        String str3 = c1232dz.f18408f;
                        String str4 = this.f18408f;
                        if (str4 != null ? str4.equals(str3) : str3 == null) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f18403a.hashCode() ^ 1000003;
        String str = this.f18404b;
        int iHashCode2 = (((((iHashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f18405c) * 1000003) ^ Float.floatToIntBits(this.f18406d);
        String str2 = this.f18408f;
        return ((((iHashCode2 * 1525764945) ^ this.f18407e) * (-721379959)) ^ (str2 != null ? str2.hashCode() : 0)) * 1000003;
    }

    public final String toString() {
        StringBuilder sbP = com.google.protobuf.U2.p("OverlayDisplayShowRequest{windowToken=", this.f18403a.toString(), ", appId=");
        sbP.append(this.f18404b);
        sbP.append(", layoutGravity=");
        sbP.append(this.f18405c);
        sbP.append(", layoutVerticalMargin=");
        sbP.append(this.f18406d);
        sbP.append(", displayMode=0, triggerMode=0, sessionToken=null, windowWidthPx=");
        sbP.append(this.f18407e);
        sbP.append(", deeplinkUrl=null, adFieldEnifd=");
        return p000a.r.j(sbP, this.f18408f, ", thirdPartyAuthCallerId=null}");
    }
}
