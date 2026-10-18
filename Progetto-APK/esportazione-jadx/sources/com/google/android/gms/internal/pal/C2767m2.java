package com.google.android.gms.internal.pal;

import K3.InterfaceC0243p;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2090uc;
import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p079k.AbstractC3012d;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.m2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2767m2 implements InterfaceC0243p {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23960G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f23961H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f23962I;

    public /* synthetic */ C2767m2(int i8, Object obj, Cloneable cloneable) {
        this.f23960G = i8;
        this.f23961H = obj;
        this.f23962I = cloneable;
    }

    public static final C2767m2 b(C2800q3 c2800q3) throws GeneralSecurityException {
        try {
            C2771m6 c2771m6A = c2800q3.a();
            for (C2763l6 c2763l6 : c2771m6A.q()) {
                if (c2763l6.n().n() == 1 || c2763l6.n().n() == 2 || c2763l6.n().n() == 3) {
                    throw new GeneralSecurityException("keyset contains key material of type " + AbstractC2090uc.C(c2763l6.n().n()) + " for type url " + c2763l6.n().q());
                }
            }
            if (c2771m6A.m() > 0) {
                return new C2767m2(c2771m6A);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (L unused) {
            throw new GeneralSecurityException("invalid keyset");
        }
    }

    public final C2707e6 a(r rVar) throws GeneralSecurityException {
        Object obj = this.f23961H;
        try {
            AbstractC2777n4 abstractC2777n4N = ((AbstractC3012d) obj).n();
            AbstractC2740j abstractC2740jB = abstractC2777n4N.b(rVar);
            abstractC2777n4N.d(abstractC2740jB);
            AbstractC2740j abstractC2740jA = abstractC2777n4N.a(abstractC2740jB);
            C2699d6 c2699d6M = C2707e6.m();
            String strQ = ((AbstractC3012d) obj).q();
            if (c2699d6M.f23476I) {
                c2699d6M.f();
                c2699d6M.f23476I = false;
            }
            C2707e6.r((C2707e6) c2699d6M.f23475H, strQ);
            C2796q c2796qA = abstractC2740jA.a();
            if (c2699d6M.f23476I) {
                c2699d6M.f();
                c2699d6M.f23476I = false;
            }
            ((C2707e6) c2699d6M.f23475H).zzf = c2796qA;
            int iO = ((AbstractC3012d) obj).o();
            if (c2699d6M.f23476I) {
                c2699d6M.f();
                c2699d6M.f23476I = false;
            }
            C2707e6.t((C2707e6) c2699d6M.f23475H, iO);
            return (C2707e6) c2699d6M.d();
        } catch (L e8) {
            throw new GeneralSecurityException("Unexpected proto", e8);
        }
    }

    @Override // K3.InterfaceC0243p
    public final void accept(Object obj, Object obj2) {
        Bundle bundle = (Bundle) this.f23962I;
        BinderC2814s2 binderC2814s2 = new BinderC2814s2((p052g4.i) obj2);
        C2783o2 c2783o2 = (C2783o2) ((InterfaceC2799q2) ((C2830u2) obj).getService());
        Parcel parcelJ0 = c2783o2.j0();
        int i8 = AbstractC2671a2.f23725a;
        if (bundle == null) {
            parcelJ0.writeInt(0);
        } else {
            parcelJ0.writeInt(1);
            bundle.writeToParcel(parcelJ0, 0);
        }
        AbstractC2671a2.b(parcelJ0, binderC2814s2);
        try {
            c2783o2.f21992H.transact(1, parcelJ0, null, 1);
        } finally {
            parcelJ0.recycle();
        }
    }

    public final Object c() {
        C2743j2 c2743j2 = (C2743j2) AbstractC2775n2.f23966a.get();
        Object obj = this.f23962I;
        if (c2743j2 == null) {
            A0.O.I(AbstractC2775n2.f23967b.get());
            return obj;
        }
        String str = (String) this.f23961H;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        SharedPreferencesOnSharedPreferenceChangeListenerC2751k2 sharedPreferencesOnSharedPreferenceChangeListenerC2751k2 = c2743j2.f23876a;
        try {
            return Boolean.valueOf(sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23912e.getBoolean(str, zBooleanValue));
        } catch (ClassCastException unused) {
            return Boolean.valueOf(sharedPreferencesOnSharedPreferenceChangeListenerC2751k2.f23912e.getString(str, String.valueOf(zBooleanValue)));
        }
    }

    public final Object d() throws GeneralSecurityException {
        D3 d6 = (D3) F3.f23527f.get(InterfaceC2792p3.class);
        Class clsZza = d6 == null ? null : d6.zza();
        if (clsZza == null) {
            throw new GeneralSecurityException("No wrapper found for ".concat(InterfaceC2792p3.class.getName()));
        }
        C2771m6 c2771m6 = (C2771m6) this.f23961H;
        int i8 = G3.f23534a;
        int iN = c2771m6.n();
        int i9 = 0;
        boolean z7 = false;
        boolean z8 = true;
        for (C2763l6 c2763l6 : c2771m6.q()) {
            if (c2763l6.s() == 3) {
                if (!c2763l6.r()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(c2763l6.m())));
                }
                if (c2763l6.t() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(c2763l6.m())));
                }
                if (c2763l6.s() == 2) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(c2763l6.m())));
                }
                if (c2763l6.m() == iN) {
                    if (z7) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z7 = true;
                }
                z8 &= c2763l6.n().n() == 4;
                i9++;
            }
        }
        if (i9 == 0) {
            throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
        }
        if (!z7 && !z8) {
            throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
        }
        p096m2.o oVar = new p096m2.o();
        oVar.f27237H = new ConcurrentHashMap();
        oVar.f27236G = clsZza;
        M4 m7 = M4.f23604b;
        oVar.f27239J = (M4) this.f23962I;
        for (C2763l6 c2763l7 : c2771m6.q()) {
            if (c2763l7.s() == 3) {
                C2707e6 c2707e6N = c2763l7.n();
                String strQ = c2707e6N.q();
                r rVarP = c2707e6N.p();
                C2767m2 c2767m2A = ((C2839v3) F3.f23523b.get()).a(clsZza, strQ);
                Object obj = c2767m2A.f23961H;
                try {
                    Object objE = c2767m2A.e(((AbstractC3012d) obj).p(rVarP));
                    if (c2763l7.m() == c2771m6.n()) {
                        oVar.x(objE, c2763l7, true);
                    } else {
                        oVar.x(objE, c2763l7, false);
                    }
                } catch (L e8) {
                    throw new GeneralSecurityException("Failures parsing proto of type ".concat(((Class) ((AbstractC3012d) obj).f25765a).getName()), e8);
                }
            }
        }
        ConcurrentMap concurrentMap = (ConcurrentMap) oVar.f27237H;
        if (concurrentMap == null) {
            throw new IllegalStateException("build cannot be called twice");
        }
        p096m2.i iVar = new p096m2.i(concurrentMap, (A3) oVar.f27238I, (M4) oVar.f27239J, (Class) oVar.f27236G);
        oVar.f27237H = null;
        D3 d8 = (D3) F3.f23527f.get(InterfaceC2792p3.class);
        if (d8 == null) {
            throw new GeneralSecurityException("No wrapper found for ".concat(((Class) iVar.f27226J).getName()));
        }
        if (d8.zza().equals((Class) iVar.f27226J)) {
            return d8.a(iVar);
        }
        throw new GeneralSecurityException(com.google.protobuf.U2.m("Wrong input primitive class, expected ", d8.zza().toString(), ", got ", ((Class) iVar.f27226J).toString()));
    }

    public final Object e(AbstractC2740j abstractC2740j) throws GeneralSecurityException {
        Object obj = this.f23962I;
        if (Void.class.equals((Class) obj)) {
            throw new GeneralSecurityException("Cannot create a primitive for Void");
        }
        Object obj2 = this.f23961H;
        ((AbstractC3012d) obj2).r(abstractC2740j);
        return ((AbstractC3012d) obj2).s(abstractC2740j, (Class) obj);
    }

    public final String toString() {
        switch (this.f23960G) {
            case 4:
                C2771m6 c2771m6 = (C2771m6) this.f23961H;
                int i8 = G3.f23534a;
                C2779n6 c2779n6M = C2803q6.m();
                int iN = c2771m6.n();
                if (c2779n6M.f23476I) {
                    c2779n6M.f();
                    c2779n6M.f23476I = false;
                }
                ((C2803q6) c2779n6M.f23475H).zze = iN;
                for (C2763l6 c2763l6 : c2771m6.q()) {
                    C2787o6 c2787o6M = C2795p6.m();
                    String strQ = c2763l6.n().q();
                    if (c2787o6M.f23476I) {
                        c2787o6M.f();
                        c2787o6M.f23476I = false;
                    }
                    C2795p6.n((C2795p6) c2787o6M.f23475H, strQ);
                    int iS = c2763l6.s();
                    if (c2787o6M.f23476I) {
                        c2787o6M.f();
                        c2787o6M.f23476I = false;
                    }
                    C2795p6.q((C2795p6) c2787o6M.f23475H, iS);
                    int iT = c2763l6.t();
                    if (c2787o6M.f23476I) {
                        c2787o6M.f();
                        c2787o6M.f23476I = false;
                    }
                    ((C2795p6) c2787o6M.f23475H).zzh = AbstractC2864y4.A(iT);
                    int iM = c2763l6.m();
                    if (c2787o6M.f23476I) {
                        c2787o6M.f();
                        c2787o6M.f23476I = false;
                    }
                    ((C2795p6) c2787o6M.f23475H).zzg = iM;
                    C2795p6 c2795p6 = (C2795p6) c2787o6M.d();
                    if (c2779n6M.f23476I) {
                        c2779n6M.f();
                        c2779n6M.f23476I = false;
                    }
                    C2803q6.o((C2803q6) c2779n6M.f23475H, c2795p6);
                }
                return ((C2803q6) c2779n6M.d()).toString();
            default:
                return super.toString();
        }
    }

    public C2767m2(InterfaceC2768m3 interfaceC2768m3) {
        this.f23960G = 6;
        this.f23961H = interfaceC2768m3;
        this.f23962I = null;
    }

    public C2767m2(InterfaceC2776n3 interfaceC2776n3) {
        this.f23960G = 6;
        this.f23961H = null;
        this.f23962I = interfaceC2776n3;
    }

    public C2767m2(String str, Boolean bool) {
        this.f23960G = 0;
        this.f23961H = str;
        this.f23962I = bool;
    }

    public C2767m2(C2771m6 c2771m6) {
        this.f23960G = 4;
        this.f23961H = c2771m6;
        this.f23962I = M4.f23604b;
    }

    public C2767m2(AbstractC3012d abstractC3012d, Class cls) {
        this.f23960G = 1;
        if (!((Map) abstractC3012d.f25766b).keySet().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(com.google.protobuf.U2.m("Given internalKeyMananger ", abstractC3012d.toString(), " does not support primitive class ", cls.getName()));
        }
        this.f23961H = abstractC3012d;
        this.f23962I = cls;
    }
}
