package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1193dA implements HA {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public transient Sz f18301G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient C1141cA f18302H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public transient Rz f18303I;

    public final Collection a() {
        C1141cA c1141cA = this.f18302H;
        if (c1141cA != null) {
            return c1141cA;
        }
        C1141cA c1141cA2 = new C1141cA((Mz) this, 0);
        this.f18302H = c1141cA2;
        return c1141cA2;
    }

    public final Map b() {
        Rz wz;
        Rz rz = this.f18303I;
        if (rz != null) {
            return rz;
        }
        LA la = (LA) this;
        Map map = la.f14834J;
        if (map instanceof NavigableMap) {
            wz = new Tz(la, (NavigableMap) map);
        } else {
            wz = map instanceof SortedMap ? new Wz(la, (SortedMap) map) : new Rz(la, map);
        }
        this.f18303I = wz;
        return wz;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof HA) {
            return b().equals(((AbstractC1193dA) ((HA) obj)).b());
        }
        return false;
    }

    public final int hashCode() {
        return b().hashCode();
    }

    public final String toString() {
        return b().toString();
    }
}
