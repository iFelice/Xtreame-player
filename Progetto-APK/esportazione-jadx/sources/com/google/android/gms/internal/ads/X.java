package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Z f17356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Z f17357b;

    public X(Z z7, Z z8) {
        this.f17356a = z7;
        this.f17357b = z8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && X.class == obj.getClass()) {
            X x7 = (X) obj;
            if (this.f17356a.equals(x7.f17356a) && this.f17357b.equals(x7.f17357b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f17357b.hashCode() + (this.f17356a.hashCode() * 31);
    }

    public final String toString() {
        Z z7 = this.f17356a;
        String string = z7.toString();
        Z z8 = this.f17357b;
        return com.google.protobuf.U2.m("[", string, z7.equals(z8) ? HttpUrl.FRAGMENT_ENCODE_SET : ", ".concat(z8.toString()), "]");
    }
}
