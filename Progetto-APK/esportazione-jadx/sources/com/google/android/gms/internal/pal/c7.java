package com.google.android.gms.internal.pal;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c7 implements Map.Entry {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public c7 f23759G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public c7 f23760H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public c7 f23761I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public c7 f23762J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public c7 f23763K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Object f23764L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Object f23765M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f23766N;

    public c7() {
        this.f23764L = null;
        this.f23763K = this;
        this.f23762J = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f23764L;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f23765M;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f23764L;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f23765M;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f23764L;
        int iHashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f23765M;
        return (obj2 != null ? obj2.hashCode() : 0) ^ iHashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.f23765M;
        this.f23765M = obj;
        return obj2;
    }

    public final String toString() {
        return this.f23764L + "=" + this.f23765M;
    }

    public c7(c7 c7Var, Object obj, c7 c7Var2, c7 c7Var3) {
        this.f23759G = c7Var;
        this.f23764L = obj;
        this.f23766N = 1;
        this.f23762J = c7Var2;
        this.f23763K = c7Var3;
        c7Var3.f23762J = this;
        c7Var2.f23763K = this;
    }
}
