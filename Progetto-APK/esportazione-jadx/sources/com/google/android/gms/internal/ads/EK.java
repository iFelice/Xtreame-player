package com.google.android.gms.internal.ads;

import B0.C0042c0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class EK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f12961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f12962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f12963c;

    public /* synthetic */ EK(C0042c0 c0042c0) {
        this.f12961a = c0042c0.f917a;
        this.f12962b = c0042c0.f918b;
        this.f12963c = c0042c0.f919c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EK)) {
            return false;
        }
        EK ek = (EK) obj;
        return this.f12961a == ek.f12961a && this.f12962b == ek.f12962b && this.f12963c == ek.f12963c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f12961a), Float.valueOf(this.f12962b), Long.valueOf(this.f12963c)});
    }
}
