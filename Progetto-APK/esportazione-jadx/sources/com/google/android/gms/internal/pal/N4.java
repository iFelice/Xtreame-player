package com.google.android.gms.internal.pal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class N4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2847w3 f23609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f23610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractC2864y4 f23611c;

    public /* synthetic */ N4(C2847w3 c2847w3, int i8, AbstractC2864y4 abstractC2864y4) {
        this.f23609a = c2847w3;
        this.f23610b = i8;
        this.f23611c = abstractC2864y4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof N4)) {
            return false;
        }
        N4 n7 = (N4) obj;
        return this.f23609a == n7.f23609a && this.f23610b == n7.f23610b && this.f23611c.equals(n7.f23611c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f23609a, Integer.valueOf(this.f23610b), Integer.valueOf(this.f23611c.hashCode())});
    }

    public final String toString() {
        return String.format("(status=%s, keyId=%s, parameters='%s')", this.f23609a, Integer.valueOf(this.f23610b), this.f23611c);
    }
}
