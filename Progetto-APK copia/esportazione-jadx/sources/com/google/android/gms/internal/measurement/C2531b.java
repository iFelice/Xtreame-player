package com.google.android.gms.internal.measurement;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2531b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final z4.L f23085d = z4.L.q(3, "_syn", "_err", "_el");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f23086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f23087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f23088c;

    public C2531b(String str, long j8, HashMap map) {
        this.f23086a = str;
        this.f23087b = j8;
        HashMap map2 = new HashMap();
        this.f23088c = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    public static Object b(Object obj, Object obj2, String str) {
        if (f23085d.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith("_")) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else if (!(obj instanceof Double)) {
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2531b clone() {
        return new C2531b(this.f23086a, this.f23087b, new HashMap(this.f23088c));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2531b)) {
            return false;
        }
        C2531b c2531b = (C2531b) obj;
        if (this.f23087b == c2531b.f23087b && this.f23086a.equals(c2531b.f23086a)) {
            return this.f23088c.equals(c2531b.f23088c);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f23086a.hashCode() * 31;
        HashMap map = this.f23088c;
        long j8 = this.f23087b;
        return map.hashCode() + ((iHashCode + ((int) (j8 ^ (j8 >>> 32)))) * 31);
    }

    public final String toString() {
        String str = this.f23086a;
        String string = this.f23088c.toString();
        StringBuilder sbP = com.google.protobuf.U2.p("Event{name='", str, "', timestamp=");
        sbP.append(this.f23087b);
        sbP.append(", params=");
        sbP.append(string);
        sbP.append("}");
        return sbP.toString();
    }
}
