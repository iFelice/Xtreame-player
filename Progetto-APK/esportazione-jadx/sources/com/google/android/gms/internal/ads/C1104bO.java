package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1104bO {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1104bO f18041d = new C1104bO(new C0961Ve[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PA f18043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18044c;

    static {
        Integer.toString(0, 36);
    }

    public C1104bO(C0961Ve... c0961VeArr) {
        this.f18043b = AbstractC2073uA.u(c0961VeArr);
        this.f18042a = c0961VeArr.length;
        int i8 = 0;
        while (i8 < this.f18043b.size()) {
            int i9 = i8 + 1;
            for (int i10 = i9; i10 < this.f18043b.size(); i10++) {
                if (((C0961Ve) this.f18043b.get(i8)).equals(this.f18043b.get(i10))) {
                    Zo.d("TrackGroupArray", HttpUrl.FRAGMENT_ENCODE_SET, new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i8 = i9;
        }
    }

    public final C0961Ve a(int i8) {
        return (C0961Ve) this.f18043b.get(i8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1104bO.class == obj.getClass()) {
            C1104bO c1104bO = (C1104bO) obj;
            if (this.f18042a == c1104bO.f18042a && this.f18043b.equals(c1104bO.f18043b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f18044c;
        if (i8 != 0) {
            return i8;
        }
        int iHashCode = this.f18043b.hashCode();
        this.f18044c = iHashCode;
        return iHashCode;
    }
}
