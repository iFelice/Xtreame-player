package y2;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f31345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f31346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final I2.a f31347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final M.c f31348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f31349e;

    public m(Class cls, Class cls2, Class cls3, List list, I2.a aVar, p096m2.u uVar) {
        this.f31345a = cls;
        this.f31346b = list;
        this.f31347c = aVar;
        this.f31348d = uVar;
        this.f31349e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final D a(int i8, int i9, p096m2.c cVar, p173w2.l lVar, com.bumptech.glide.load.data.g gVar) {
        D dA;
        p173w2.p pVar;
        int iP;
        boolean z7;
        boolean z8;
        boolean z9;
        Object c3234f;
        M.c cVar2 = this.f31348d;
        Object objH = cVar2.h();
        p102n0.c.c(objH, "Argument must not be null");
        List list = (List) objH;
        try {
            D dB = b(gVar, i8, i9, lVar, list);
            cVar2.a(list);
            l lVar2 = (l) cVar.f27211I;
            p173w2.a aVar = (p173w2.a) cVar.f27210H;
            lVar2.getClass();
            Class<?> cls = dB.get().getClass();
            p173w2.a aVar2 = p173w2.a.f30984J;
            i iVar = lVar2.f31313G;
            p173w2.o oVarF = null;
            if (aVar != aVar2) {
                p173w2.p pVarF = iVar.f(cls);
                dA = pVarF.a(lVar2.f31320N, dB, lVar2.f31324R, lVar2.f31325S);
                pVar = pVarF;
            } else {
                dA = dB;
                pVar = null;
            }
            if (!dB.equals(dA)) {
                dB.b();
            }
            if (iVar.f31294c.b().f11543d.f(dA.e()) != null) {
                com.bumptech.glide.j jVarB = iVar.f31294c.b();
                jVarB.getClass();
                oVarF = jVarB.f11543d.f(dA.e());
                if (oVarF == null) {
                    throw new com.bumptech.glide.i(2, dA.e());
                }
                iP = oVarF.p(lVar2.f31327U);
            } else {
                iP = 3;
            }
            p173w2.i iVar2 = lVar2.f31334b0;
            ArrayList arrayListB = iVar.b();
            int size = arrayListB.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    z7 = false;
                    break;
                }
                if (((C2.B) arrayListB.get(i10)).f1347a.equals(iVar2)) {
                    z7 = true;
                    break;
                }
                i10++;
            }
            boolean z10 = !z7;
            switch (((n) lVar2.f31326T).f31350d) {
                case 1:
                case 2:
                    break;
                default:
                    if (((z10 && aVar == p173w2.a.f30983I) || aVar == p173w2.a.f30981G) && iP == 2) {
                        if (oVarF == null) {
                            throw new com.bumptech.glide.i(2, dA.get().getClass());
                        }
                        int iB = p156u.h.b(iP);
                        if (iB == 0) {
                            z8 = false;
                            z9 = true;
                            c3234f = new C3234f(lVar2.f31334b0, lVar2.f31321O);
                        } else {
                            if (iB != 1) {
                                throw new IllegalArgumentException("Unknown strategy: ".concat(p148t.a.l(iP)));
                            }
                            z9 = true;
                            c3234f = new F(iVar.f31294c.f11525a, lVar2.f31334b0, lVar2.f31321O, lVar2.f31324R, lVar2.f31325S, pVar, cls, lVar2.f31327U);
                            z8 = false;
                        }
                        C c8 = (C) C.f31241K.h();
                        c8.f31245J = z8;
                        c8.f31244I = z9;
                        c8.f31243H = dA;
                        k kVar = lVar2.f31318L;
                        kVar.f31310a = c3234f;
                        kVar.f31311b = oVarF;
                        kVar.f31312c = c8;
                        dA = c8;
                    }
                    break;
            }
            return this.f31347c.k(dA, lVar);
        } catch (Throwable th) {
            cVar2.a(list);
            throw th;
        }
    }

    public final D b(com.bumptech.glide.load.data.g gVar, int i8, int i9, p173w2.l lVar, List list) throws z {
        List list2 = this.f31346b;
        int size = list2.size();
        D dB = null;
        for (int i10 = 0; i10 < size; i10++) {
            p173w2.n nVar = (p173w2.n) list2.get(i10);
            try {
                if (nVar.a(gVar.a(), lVar)) {
                    dB = nVar.b(gVar.a(), i8, i9, lVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e8) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + nVar, e8);
                }
                list.add(e8);
            }
            if (dB != null) {
                break;
            }
        }
        if (dB != null) {
            return dB;
        }
        throw new z(this.f31349e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f31345a + ", decoders=" + this.f31346b + ", transcoder=" + this.f31347c + '}';
    }
}
