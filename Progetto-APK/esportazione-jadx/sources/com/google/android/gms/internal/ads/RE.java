package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class RE extends AbstractC1146cF {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QE f16231c;

    public RE(int i8, int i9, QE qe) {
        this.f16229a = i8;
        this.f16230b = i9;
        this.f16231c = qe;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f16231c != QE.f16002e;
    }

    public final int b() {
        QE qe = QE.f16002e;
        int i8 = this.f16230b;
        QE qe2 = this.f16231c;
        if (qe2 == qe) {
            return i8;
        }
        if (qe2 == QE.f15999b || qe2 == QE.f16000c || qe2 == QE.f16001d) {
            return i8 + 5;
        }
        throw new IllegalStateException("Unknown variant");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof RE)) {
            return false;
        }
        RE re = (RE) obj;
        return re.f16229a == this.f16229a && re.b() == b() && re.f16231c == this.f16231c;
    }

    public final int hashCode() {
        return Objects.hash(RE.class, Integer.valueOf(this.f16229a), Integer.valueOf(this.f16230b), this.f16231c);
    }

    public final String toString() {
        StringBuilder sbP = com.google.protobuf.U2.p("AES-CMAC Parameters (variant: ", String.valueOf(this.f16231c), ", ");
        sbP.append(this.f16230b);
        sbP.append("-byte tags, and ");
        return p000a.r.h(sbP, this.f16229a, "-byte key)");
    }
}
