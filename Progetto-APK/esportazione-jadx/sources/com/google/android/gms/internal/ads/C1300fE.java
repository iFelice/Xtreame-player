package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1300fE extends GC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GE f18735a;

    public C1300fE(GE ge) {
        this.f18735a = ge;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f18735a.f13494b.D() != EnumC2235xG.RAW;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1300fE)) {
            return false;
        }
        GE ge = ((C1300fE) obj).f18735a;
        GE ge2 = this.f18735a;
        if (ge2.f13494b.D().equals(ge.f13494b.D())) {
            String strF = ge2.f13494b.F();
            C1250eG c1250eG = ge.f13494b;
            if (strF.equals(c1250eG.F()) && ge2.f13494b.E().equals(c1250eG.E())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        GE ge = this.f18735a;
        return Objects.hash(ge.f13494b, ge.f13493a);
    }

    public final String toString() {
        String str;
        GE ge = this.f18735a;
        String strF = ge.f13494b.F();
        int iOrdinal = ge.f13494b.D().ordinal();
        if (iOrdinal == 1) {
            str = "TINK";
        } else if (iOrdinal == 2) {
            str = "LEGACY";
        } else if (iOrdinal != 3) {
            str = iOrdinal != 4 ? "UNKNOWN" : "CRUNCHY";
        } else {
            str = "RAW";
        }
        return A0.O.C("(typeUrl=", strF, ", outputPrefixType=", str, ")");
    }
}
