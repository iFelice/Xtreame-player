package p169v6;

import E6.a;
import java.util.ConcurrentModificationException;
import java.util.Map;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Map.Entry, a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final f f30740G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f30741H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f30742I;

    public e(f fVar, int i8) {
        q0.h(fVar, "map");
        this.f30740G = fVar;
        this.f30741H = i8;
        this.f30742I = fVar.f30751N;
    }

    public final void a() {
        if (this.f30740G.f30751N != this.f30742I) {
            throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
        }
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (q0.c(entry.getKey(), getKey()) && q0.c(entry.getValue(), getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        a();
        return this.f30740G.f30744G[this.f30741H];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        a();
        Object[] objArr = this.f30740G.f30745H;
        q0.e(objArr);
        return objArr[this.f30741H];
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object key = getKey();
        int iHashCode = key != null ? key.hashCode() : 0;
        Object value = getValue();
        return iHashCode ^ (value != null ? value.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        a();
        f fVar = this.f30740G;
        fVar.c();
        Object[] objArr = fVar.f30745H;
        if (objArr == null) {
            int length = fVar.f30744G.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.".toString());
            }
            objArr = new Object[length];
            fVar.f30745H = objArr;
        }
        int i8 = this.f30741H;
        Object obj2 = objArr[i8];
        objArr[i8] = obj;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getKey());
        sb.append('=');
        sb.append(getValue());
        return sb.toString();
    }
}
