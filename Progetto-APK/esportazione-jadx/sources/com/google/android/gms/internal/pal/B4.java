package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class B4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f23466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f23467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f23468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f23469d;

    public /* synthetic */ B4(p096m2.i iVar) {
        this.f23466a = new HashMap((Map) iVar.f27224H);
        this.f23467b = new HashMap((Map) iVar.f27225I);
        this.f23468c = new HashMap((Map) iVar.f27226J);
        this.f23469d = new HashMap((Map) iVar.f27227K);
    }

    public final C4 a(C2856x4 c2856x4) {
        E4 e8;
        C2872z4 c2872z4 = new C2872z4(c2856x4.f24065b, C2856x4.class);
        HashMap map = this.f23467b;
        if (!map.containsKey(c2872z4)) {
            throw new GeneralSecurityException(p000a.r.g("No Key Parser for requested key type ", c2872z4.toString(), " available"));
        }
        ((G4) ((C2745j4) map.get(c2872z4)).f23886c).getClass();
        C2840v4 c2840v4 = H4.f23544a;
        if (!c2856x4.f24064a.equals("type.googleapis.com/google.crypto.tink.AesCmacKey")) {
            throw new IllegalArgumentException("Wrong type URL in call to AesCmacParameters.parseParameters");
        }
        try {
            Q4 q4O = Q4.o(c2856x4.f24066c, C2851x.a());
            if (q4O.m() != 0) {
                throw new GeneralSecurityException("Only version 0 keys are accepted");
            }
            U4 u4P = q4O.p();
            int i8 = c2856x4.f24069f;
            int iM = u4P.m();
            int i9 = i8 - 2;
            if (i9 == 1) {
                e8 = E4.f23497b;
            } else if (i9 == 2) {
                e8 = E4.f23499d;
            } else if (i9 == 3) {
                e8 = E4.f23500e;
            } else {
                if (i9 != 4) {
                    throw new GeneralSecurityException("Unable to parse OutputPrefixType: " + AbstractC2864y4.A(i8));
                }
                e8 = E4.f23498c;
            }
            return C4.I0(F4.J0(iM, e8), new C2805r1(Q6.a(q4O.q().p()), 13), c2856x4.f24068e);
        } catch (L | IllegalArgumentException unused) {
            throw new GeneralSecurityException("Parsing AesCmacKey failed");
        }
    }
}
