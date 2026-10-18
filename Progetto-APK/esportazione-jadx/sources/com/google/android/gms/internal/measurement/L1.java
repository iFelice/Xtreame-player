package com.google.android.gms.internal.measurement;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class L1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f22954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p190y4.t f22955b;

    public L1(Context context, p190y4.t tVar) {
        this.f22954a = context;
        this.f22955b = tVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof L1) {
            L1 l4 = (L1) obj;
            if (this.f22954a.equals(l4.f22954a)) {
                p190y4.t tVar = l4.f22955b;
                p190y4.t tVar2 = this.f22955b;
                if (tVar2 != null ? tVar2.equals(tVar) : tVar == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f22954a.hashCode() ^ 1000003;
        p190y4.t tVar = this.f22955b;
        return (iHashCode * 1000003) ^ (tVar == null ? 0 : tVar.hashCode());
    }

    public final String toString() {
        return A0.O.C("FlagsContext{context=", this.f22954a.toString(), ", hermeticFileOverrides=", String.valueOf(this.f22955b), "}");
    }
}
