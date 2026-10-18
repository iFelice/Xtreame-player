package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xD, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2232xD extends OC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2180wD f21856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f21857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2128vD f21858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final OC f21859d;

    public C2232xD(C2180wD c2180wD, String str, C2128vD c2128vD, OC oc) {
        this.f21856a = c2180wD;
        this.f21857b = str;
        this.f21858c = c2128vD;
        this.f21859d = oc;
    }

    @Override // com.google.android.gms.internal.ads.GC
    public final boolean a() {
        return this.f21856a != C2180wD.f21654c;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2232xD)) {
            return false;
        }
        C2232xD c2232xD = (C2232xD) obj;
        return c2232xD.f21858c.equals(this.f21858c) && c2232xD.f21859d.equals(this.f21859d) && c2232xD.f21857b.equals(this.f21857b) && c2232xD.f21856a.equals(this.f21856a);
    }

    public final int hashCode() {
        return Objects.hash(C2232xD.class, this.f21857b, this.f21858c, this.f21859d, this.f21856a);
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f21858c);
        String strValueOf2 = String.valueOf(this.f21859d);
        String strValueOf3 = String.valueOf(this.f21856a);
        StringBuilder sb = new StringBuilder("LegacyKmsEnvelopeAead Parameters (kekUri: ");
        p148t.a.h(sb, this.f21857b, ", dekParsingStrategy: ", strValueOf, ", dekParametersForNewKeys: ");
        sb.append(strValueOf2);
        sb.append(", variant: ");
        sb.append(strValueOf3);
        sb.append(")");
        return sb.toString();
    }
}
