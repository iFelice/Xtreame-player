package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2373zz implements Serializable, InterfaceC2321yz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f22240G;

    public final boolean equals(Object obj) {
        if (obj instanceof C2373zz) {
            return this.f22240G.equals(((C2373zz) obj).f22240G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f22240G.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z7 = true;
        for (Object obj : this.f22240G) {
            if (!z7) {
                sb.append(',');
            }
            sb.append(obj);
            z7 = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2321yz
    public final boolean zza(Object obj) {
        int i8 = 0;
        while (true) {
            List list = this.f22240G;
            if (i8 >= list.size()) {
                return true;
            }
            if (!((InterfaceC2321yz) list.get(i8)).zza(obj)) {
                return false;
            }
            i8++;
        }
    }
}
