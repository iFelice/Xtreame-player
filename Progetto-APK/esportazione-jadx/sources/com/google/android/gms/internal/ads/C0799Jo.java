package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.UUID;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0799Jo implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14213a;

    public /* synthetic */ C0799Jo(int i8) {
        this.f14213a = i8;
    }

    public static C1936re a() {
        C1936re c1936re;
        J7 j8 = Q7.f15889m5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            c1936re = AbstractC1988se.f20908c;
        } else {
            c1936re = ((Boolean) c3099q.f26627c.a(Q7.f15880l5)).booleanValue() ? AbstractC1988se.f20906a : AbstractC1988se.f20910e;
        }
        Cw.N0(c1936re);
        return c1936re;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        switch (this.f14213a) {
            case 0:
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                String string = UUID.randomUUID().toString();
                Cw.N0(string);
                return string;
            case 1:
                return new Up();
            case 2:
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new Yr(c1936re);
            case 3:
                return new C1535js();
            case 4:
                return new Ns();
            case 5:
                C1936re c1936re2 = AbstractC1988se.f20906a;
                Cw.N0(c1936re2);
                return new C2003st(c1936re2);
            case 6:
                J7 j8 = Q7.f15777a;
                return C3099q.f26624d.f26625a.b();
            case 7:
                C1936re c1936re3 = AbstractC1988se.f20906a;
                Cw.N0(c1936re3);
                return new Dt(c1936re3);
            case 8:
                C1936re c1936re4 = AbstractC1988se.f20906a;
                Cw.N0(c1936re4);
                return new Rt(c1936re4);
            case 9:
                C1936re c1936re5 = AbstractC1988se.f20906a;
                Cw.N0(c1936re5);
                return new Mu(c1936re5, 0);
            case 10:
                return new Vv();
            case 11:
                return new Uv();
            case 12:
                return new Xv();
            case 13:
                C1178cw c1178cw = new C1178cw();
                try {
                    MC.a();
                    break;
                } catch (GeneralSecurityException e8) {
                    p113o3.I.k("Failed to Configure Aead. ".concat(e8.toString()));
                    p083k3.l.f25980A.f25987g.i("CryptoUtils.registerAead", e8);
                }
                return c1178cw;
            case 14:
                return new C1229dw();
            case 15:
                return P3.b.f5909a;
            case 16:
                C1591kw c1591kw = new C1591kw();
                c1591kw.f19672a = null;
                return c1591kw;
            case 17:
                return new C2162vw();
            case 18:
                C1936re c1936re6 = AbstractC1988se.f20910e;
                Cw.N0(c1936re6);
                return c1936re6;
            case 19:
                return a();
            case 20:
                C1936re c1936re7 = AbstractC1988se.f20906a;
                Cw.N0(c1936re7);
                return c1936re7;
            case 21:
                C1936re c1936re8 = AbstractC1988se.f20910e;
                Cw.N0(c1936re8);
                return c1936re8;
            case 22:
                C1936re c1936re9 = AbstractC1988se.f20907b;
                Cw.N0(c1936re9);
                return c1936re9;
            default:
                return new ThreadFactoryC0876Pd();
        }
    }

    public /* synthetic */ C0799Jo(int i8, int i9) {
        this.f14213a = i8;
    }
}
