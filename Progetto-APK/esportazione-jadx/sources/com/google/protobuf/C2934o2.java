package com.google.protobuf;

import java.util.Map;

/* JADX INFO: renamed from: com.google.protobuf.o2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2934o2 implements Map.Entry, Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Comparable f24482G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f24483H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C2922l2 f24484I;

    public C2934o2(C2922l2 c2922l2, Comparable comparable, Object obj) {
        this.f24484I = c2922l2;
        this.f24482G = comparable;
        this.f24483H = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f24482G.compareTo(((C2934o2) obj).f24482G);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Comparable comparable = this.f24482G;
        if (comparable != null ? comparable.equals(key) : key == null) {
            Object obj2 = this.f24483H;
            Object value = entry.getValue();
            if (obj2 == null) {
                if (value == null) {
                    return true;
                }
            } else if (obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f24482G;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f24483H;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f24482G;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f24483H;
        return (obj != null ? obj.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i8 = C2922l2.f24471M;
        this.f24484I.b();
        Object obj2 = this.f24483H;
        this.f24483H = obj;
        return obj2;
    }

    public final String toString() {
        return this.f24482G + "=" + this.f24483H;
    }
}
