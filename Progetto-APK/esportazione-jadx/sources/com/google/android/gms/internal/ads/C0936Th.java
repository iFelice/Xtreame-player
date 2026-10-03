package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Th, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0936Th {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0936Th f16698e = new C0936Th(-1, -1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16702d;

    public C0936Th(int i8, int i9, int i10) {
        this.f16699a = i8;
        this.f16700b = i9;
        this.f16701c = i10;
        this.f16702d = Et.c(i10) ? Et.o(i10) * i9 : -1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0936Th)) {
            return false;
        }
        C0936Th c0936Th = (C0936Th) obj;
        return this.f16699a == c0936Th.f16699a && this.f16700b == c0936Th.f16700b && this.f16701c == c0936Th.f16701c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f16699a), Integer.valueOf(this.f16700b), Integer.valueOf(this.f16701c)});
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AudioFormat[sampleRate=");
        sb.append(this.f16699a);
        sb.append(", channelCount=");
        sb.append(this.f16700b);
        sb.append(", encoding=");
        return p000a.r.h(sb, this.f16701c, "]");
    }
}
