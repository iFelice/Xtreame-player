package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public final class M3 extends AbstractC3012d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f23603d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M3(int i8) {
        super(W4.class, new K3(0, InterfaceC2768m3.class));
        this.f23603d = i8;
        switch (i8) {
            case 1:
                super(C2682b5.class, new K3(1, M6.class));
                break;
            case 2:
                super(C2730h5.class, new K3(2, InterfaceC2768m3.class));
                break;
            case 3:
                super(C2778n5.class, new K3(3, InterfaceC2768m3.class));
                break;
            case 4:
                super(C2809r5.class, new K3(4, InterfaceC2768m3.class));
                break;
            case 5:
                super(C2873z5.class, new K3(5, InterfaceC2768m3.class));
                break;
            case 6:
                super(C2818s6.class, new K3(6, InterfaceC2768m3.class));
                break;
            case 7:
                super(C2842v6.class, new K3(7, InterfaceC2768m3.class));
                break;
            case 8:
                super(C2874z6.class, new K3(8, InterfaceC2768m3.class));
                break;
            case 9:
                super(C2841v5.class, new K3(9, InterfaceC2776n3.class));
                break;
            case 10:
                super(L5.class, new K3(11, InterfaceC2792p3.class));
                break;
            case 11:
                super(C2691c6.class, new K3(13, InterfaceC2792p3.class));
                break;
            case 12:
                super(Q4.class, new K3(14, InterfaceC2871z3.class));
                break;
            case 13:
                super(P5.class, new K3(15, InterfaceC2871z3.class));
                break;
            default:
                break;
        }
    }

    public static void A(U4 u7) throws GeneralSecurityException {
        if (u7.m() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (u7.m() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    public static void B(T5 t7) throws GeneralSecurityException {
        if (t7.m() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int iQ = t7.q() - 2;
        if (iQ == 1) {
            if (t7.m() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iQ == 2) {
            if (t7.m() > 48) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iQ == 3) {
            if (t7.m() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (iQ == 4) {
            if (t7.m() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (iQ != 5) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (t7.m() > 28) {
                throw new GeneralSecurityException("tag size too big");
            }
        }
    }

    public static C2769m4 u(int i8, int i9) {
        C2738i5 c2738i5N = C2746j5.n();
        if (c2738i5N.f23476I) {
            c2738i5N.f();
            c2738i5N.f23476I = false;
        }
        ((C2746j5) c2738i5N.f23475H).zzf = i8;
        C2754k5 c2754k5N = C2762l5.n();
        if (c2754k5N.f23476I) {
            c2754k5N.f();
            c2754k5N.f23476I = false;
        }
        ((C2762l5) c2754k5N.f23475H).zze = 16;
        C2762l5 c2762l5 = (C2762l5) c2754k5N.d();
        if (c2738i5N.f23476I) {
            c2738i5N.f();
            c2738i5N.f23476I = false;
        }
        ((C2746j5) c2738i5N.f23475H).zze = c2762l5;
        return new C2769m4((C2746j5) c2738i5N.d(), i9);
    }

    public static C2769m4 v(int i8, int i9, int i10) {
        C2690c5 c2690c5N = C2698d5.n();
        C2706e5 c2706e5N = C2714f5.n();
        if (c2706e5N.f23476I) {
            c2706e5N.f();
            c2706e5N.f23476I = false;
        }
        ((C2714f5) c2706e5N.f23475H).zze = 16;
        C2714f5 c2714f5 = (C2714f5) c2706e5N.d();
        if (c2690c5N.f23476I) {
            c2690c5N.f();
            c2690c5N.f23476I = false;
        }
        ((C2698d5) c2690c5N.f23475H).zze = c2714f5;
        if (c2690c5N.f23476I) {
            c2690c5N.f();
            c2690c5N.f23476I = false;
        }
        ((C2698d5) c2690c5N.f23475H).zzf = i8;
        C2698d5 c2698d5 = (C2698d5) c2690c5N.d();
        Q5 q5N = R5.n();
        S5 s5N = T5.n();
        if (s5N.f23476I) {
            s5N.f();
            s5N.f23476I = false;
        }
        T5.r((T5) s5N.f23475H, 5);
        if (s5N.f23476I) {
            s5N.f();
            s5N.f23476I = false;
        }
        ((T5) s5N.f23475H).zzf = i9;
        T5 t7 = (T5) s5N.d();
        if (q5N.f23476I) {
            q5N.f();
            q5N.f23476I = false;
        }
        ((R5) q5N.f23475H).zze = t7;
        if (q5N.f23476I) {
            q5N.f();
            q5N.f23476I = false;
        }
        ((R5) q5N.f23475H).zzf = 32;
        R5 r7 = (R5) q5N.d();
        X4 x4M = Y4.m();
        if (x4M.f23476I) {
            x4M.f();
            x4M.f23476I = false;
        }
        ((Y4) x4M.f23475H).zze = c2698d5;
        if (x4M.f23476I) {
            x4M.f();
            x4M.f23476I = false;
        }
        ((Y4) x4M.f23475H).zzf = r7;
        return new C2769m4((Y4) x4M.d(), i10);
    }

    public static C2769m4 w(int i8, int i9) {
        C2786o5 c2786o5N = C2794p5.n();
        if (c2786o5N.f23476I) {
            c2786o5N.f();
            c2786o5N.f23476I = false;
        }
        ((C2794p5) c2786o5N.f23475H).zze = i8;
        return new C2769m4((C2794p5) c2786o5N.d(), i9);
    }

    public static C2769m4 x(int i8, int i9) {
        C2817s5 c2817s5N = C2825t5.n();
        if (c2817s5N.f23476I) {
            c2817s5N.f();
            c2817s5N.f23476I = false;
        }
        ((C2825t5) c2817s5N.f23475H).zze = i8;
        return new C2769m4((C2825t5) c2817s5N.d(), i9);
    }

    public static final void y(P5 p7) throws GeneralSecurityException {
        P6.b(p7.m());
        if (p7.r().i() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        B(p7.q());
    }

    public static C2769m4 z(int i8, int i9, int i10, int i11) {
        Q5 q5N = R5.n();
        S5 s5N = T5.n();
        if (s5N.f23476I) {
            s5N.f();
            s5N.f23476I = false;
        }
        T5.r((T5) s5N.f23475H, i10);
        if (s5N.f23476I) {
            s5N.f();
            s5N.f23476I = false;
        }
        ((T5) s5N.f23475H).zzf = i9;
        T5 t7 = (T5) s5N.d();
        if (q5N.f23476I) {
            q5N.f();
            q5N.f23476I = false;
        }
        ((R5) q5N.f23475H).zze = t7;
        if (q5N.f23476I) {
            q5N.f();
            q5N.f23476I = false;
        }
        ((R5) q5N.f23475H).zzf = i8;
        return new C2769m4((R5) q5N.d(), i11);
    }

    @Override // p079k.AbstractC3012d
    public final AbstractC2777n4 n() {
        switch (this.f23603d) {
            case 0:
                return new L3(Y4.class, 0);
            case 1:
                return new N3(this);
            case 2:
                return new L3(C2746j5.class, 1);
            case 3:
                return new L3(C2794p5.class, 2);
            case 4:
                return new L3(C2825t5.class, 3);
            case 5:
                return new L3(A5.class, 4);
            case 6:
                return new L3(C2826t6.class, 5);
            case 7:
                return new L3(C2850w6.class, 6);
            case 8:
                return new L3(A6.class, 7);
            case 9:
                return new L3(C2857x5.class, 8);
            case 10:
            case 11:
            default:
                super.n();
                throw null;
            case 12:
                return new D4(S4.class);
            case 13:
                return new L3(R5.class, 11);
        }
    }

    @Override // p079k.AbstractC3012d
    public final int o() {
        switch (this.f23603d) {
            case 6:
            case 7:
                return 5;
            case 8:
            case 9:
            default:
                return 2;
            case 10:
            case 11:
                return 4;
        }
    }

    @Override // p079k.AbstractC3012d
    public final /* synthetic */ AbstractC2740j p(r rVar) {
        switch (this.f23603d) {
            case 0:
                return W4.o(rVar, C2851x.a());
            case 1:
                return C2682b5.p(rVar, C2851x.a());
            case 2:
                return C2730h5.o(rVar, C2851x.a());
            case 3:
                return C2778n5.o(rVar, C2851x.a());
            case 4:
                return C2809r5.o(rVar, C2851x.a());
            case 5:
                return C2873z5.o(rVar, C2851x.a());
            case 6:
                return C2818s6.o(rVar, C2851x.a());
            case 7:
                return C2842v6.o(rVar, C2851x.a());
            case 8:
                return C2874z6.o(rVar, C2851x.a());
            case 9:
                return C2841v5.o(rVar, C2851x.a());
            case 10:
                return L5.q(rVar, C2851x.a());
            case 11:
                return C2691c6.q(rVar, C2851x.a());
            case 12:
                return Q4.o(rVar, C2851x.a());
            default:
                return P5.p(rVar, C2851x.a());
        }
    }

    @Override // p079k.AbstractC3012d
    public final String q() {
        switch (this.f23603d) {
            case 0:
                return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
            case 1:
                return "type.googleapis.com/google.crypto.tink.AesCtrKey";
            case 2:
                return "type.googleapis.com/google.crypto.tink.AesEaxKey";
            case 3:
                return "type.googleapis.com/google.crypto.tink.AesGcmKey";
            case 4:
                return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
            case 5:
                return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
            case 6:
                return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
            case 7:
                return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
            case 8:
                return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
            case 9:
                return "type.googleapis.com/google.crypto.tink.AesSivKey";
            case 10:
                return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
            case 11:
                return "type.googleapis.com/google.crypto.tink.HpkePublicKey";
            case 12:
                return "type.googleapis.com/google.crypto.tink.AesCmacKey";
            default:
                return "type.googleapis.com/google.crypto.tink.HmacKey";
        }
    }

    @Override // p079k.AbstractC3012d
    public final void r(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        switch (this.f23603d) {
            case 0:
                W4 w7 = (W4) abstractC2740j;
                P6.b(w7.m());
                new M3(1);
                C2682b5 c2682b5P = w7.p();
                P6.b(c2682b5P.m());
                P6.a(c2682b5P.r().i());
                C2714f5 c2714f5Q = c2682b5P.q();
                if (c2714f5Q.m() < 12 || c2714f5Q.m() > 16) {
                    throw new GeneralSecurityException("invalid IV size");
                }
                new M3(13);
                y(w7.q());
                return;
            case 1:
                C2682b5 c2682b5 = (C2682b5) abstractC2740j;
                P6.b(c2682b5.m());
                P6.a(c2682b5.r().i());
                C2714f5 c2714f5Q2 = c2682b5.q();
                if (c2714f5Q2.m() < 12 || c2714f5Q2.m() > 16) {
                    throw new GeneralSecurityException("invalid IV size");
                }
                return;
            case 2:
                C2730h5 c2730h5 = (C2730h5) abstractC2740j;
                P6.b(c2730h5.m());
                P6.a(c2730h5.q().i());
                if (c2730h5.p().m() != 12 && c2730h5.p().m() != 16) {
                    throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
                }
                return;
            case 3:
                C2778n5 c2778n5 = (C2778n5) abstractC2740j;
                P6.b(c2778n5.m());
                P6.a(c2778n5.p().i());
                return;
            case 4:
                C2809r5 c2809r5 = (C2809r5) abstractC2740j;
                P6.b(c2809r5.m());
                P6.a(c2809r5.p().i());
                return;
            case 5:
                C2873z5 c2873z5 = (C2873z5) abstractC2740j;
                P6.b(c2873z5.m());
                if (c2873z5.p().i() != 32) {
                    throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
                }
                return;
            case 6:
                P6.b(((C2818s6) abstractC2740j).m());
                return;
            case 7:
                P6.b(((C2842v6) abstractC2740j).m());
                return;
            case 8:
                C2874z6 c2874z6 = (C2874z6) abstractC2740j;
                P6.b(c2874z6.m());
                if (c2874z6.p().i() != 32) {
                    throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
                }
                return;
            case 9:
                C2841v5 c2841v5 = (C2841v5) abstractC2740j;
                P6.b(c2841v5.m());
                if (c2841v5.p().i() != 64) {
                    throw new InvalidKeyException(A0.O.y("invalid key size: ", c2841v5.p().i(), ". Valid keys must have 64 bytes."));
                }
                return;
            case 10:
                L5 l8 = (L5) abstractC2740j;
                P6.b(l8.m());
                AbstractC2864y4.s(l8.n());
                return;
            case 11:
                C2691c6 c2691c6 = (C2691c6) abstractC2740j;
                P6.b(c2691c6.m());
                if (!c2691c6.v()) {
                    throw new GeneralSecurityException("Missing HPKE key params.");
                }
                AbstractC2737i4.a(c2691c6.n());
                return;
            case 12:
                Q4 q7 = (Q4) abstractC2740j;
                P6.b(q7.m());
                if (q7.q().i() != 32) {
                    throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
                }
                A(q7.p());
                return;
            default:
                y((P5) abstractC2740j);
                return;
        }
    }

    public final int t() {
        switch (this.f23603d) {
            case 0:
            case 3:
            case 13:
                return 2;
            default:
                return 1;
        }
    }
}
