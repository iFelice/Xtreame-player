package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Comparator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1554kA extends OA implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Comparator f19592G;

    public C1554kA(C2065u2 c2065u2) {
        this.f19592G = c2065u2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f19592G.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1554kA) {
            return this.f19592G.equals(((C1554kA) obj).f19592G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f19592G.hashCode();
    }

    public final String toString() {
        return this.f19592G.toString();
    }
}
