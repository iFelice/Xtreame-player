package com.google.android.gms.internal.pal;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class T2 extends M2 implements Set {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public transient P2 f23660H;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this || obj == this) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            try {
                if (size() == set.size() && containsAll(set)) {
                    return true;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        Iterator it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public abstract N2 n();

    public final P2 o() {
        P2 p7 = this.f23660H;
        if (p7 != null) {
            return p7;
        }
        V2 v5 = new V2((W2) this);
        this.f23660H = v5;
        return v5;
    }
}
