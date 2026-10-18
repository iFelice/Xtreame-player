package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1859q3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f20529b;

    public C1859q3(String str, String str2) {
        this.f20528a = str;
        this.f20529b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1859q3.class == obj.getClass()) {
            C1859q3 c1859q3 = (C1859q3) obj;
            if (TextUtils.equals(this.f20528a, c1859q3.f20528a) && TextUtils.equals(this.f20529b, c1859q3.f20529b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f20529b.hashCode() + (this.f20528a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Header[name=");
        sb.append(this.f20528a);
        sb.append(",value=");
        return p000a.r.j(sb, this.f20529b, "]");
    }
}
