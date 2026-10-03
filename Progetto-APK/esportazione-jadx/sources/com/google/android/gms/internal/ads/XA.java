package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class XA extends OA implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final OA f17384G;

    public XA(C1554kA c1554kA) {
        this.f17384G = c1554kA;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f17384G.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof XA) {
            return this.f17384G.equals(((XA) obj).f17384G);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f17384G.hashCode();
    }

    public final String toString() {
        return this.f17384G.toString().concat(".reverse()");
    }
}
