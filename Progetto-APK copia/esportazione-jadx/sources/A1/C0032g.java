package A1;

import B0.C0073x;
import W0.L;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p086l.C3051s;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.AbstractC3169g;

/* JADX INFO: renamed from: A1.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0032g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f385b;

    public C0032g(int i8, List list) {
        this.f384a = i8;
        this.f385b = list;
    }

    public final p096m2.o a(H h8) {
        List listC = c(h8);
        p096m2.o oVar = new p096m2.o();
        oVar.f27236G = listC;
        oVar.f27237H = "video/mp2t";
        oVar.f27238I = new L[listC.size()];
        oVar.f27239J = new C3051s(new C0073x(oVar, 25));
        return oVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x0059  */
    public final J b(int i8, H h8) {
        if (i8 != 2) {
            if (i8 == 3 || i8 == 4) {
                return new y(new v((String) h8.f305e, h8.b(), "video/mp2t"));
            }
            if (i8 == 21) {
                return new y(new C0034i());
            }
            if (i8 == 27) {
                if (d(4)) {
                    return null;
                }
                return new y(new r(a(h8), d(1), d(8)));
            }
            if (i8 == 36) {
                return new y(new t(a(h8)));
            }
            if (i8 == 45) {
                return new y(new w());
            }
            if (i8 == 89) {
                return new y(new C0034i(h8.f302b));
            }
            if (i8 == 172) {
                return new y(new C0029d((String) h8.f305e, h8.b(), "video/mp2t"));
            }
            if (i8 == 257) {
                return new C(new p096m2.u("application/vnd.dvb.ait"));
            }
            if (i8 != 138) {
                if (i8 == 139) {
                    return new y(new C0033h(h8.b(), 5408, (String) h8.f305e));
                }
                switch (i8) {
                    case 15:
                        if (d(2)) {
                            return null;
                        }
                        return new y(new C0031f((String) h8.f305e, h8.b(), "video/mp2t", false));
                    case 16:
                        return new y(new o(new K(c(h8))));
                    case 17:
                        if (d(2)) {
                            return null;
                        }
                        return new y(new u((String) h8.f305e, h8.b()));
                    default:
                        switch (i8) {
                            case 128:
                                break;
                            case 129:
                                return new y(new C0027b((String) h8.f305e, h8.b(), "video/mp2t"));
                            case 130:
                                if (!d(64)) {
                                    return null;
                                }
                                break;
                            default:
                                switch (i8) {
                                    case 134:
                                        if (d(16)) {
                                            return null;
                                        }
                                        return new C(new p096m2.u("application/x-scte35"));
                                    case 135:
                                        return new y(new C0027b((String) h8.f305e, h8.b(), "video/mp2t"));
                                    case 136:
                                        break;
                                    default:
                                        return null;
                                }
                                break;
                        }
                        break;
                }
            }
            return new y(new C0033h(h8.b(), 4096, (String) h8.f305e));
        }
        return new y(new l(new K(c(h8)), "video/mp2t"));
    }

    public final List c(H h8) {
        String str;
        int i8;
        List listSingletonList;
        boolean zD = d(32);
        List list = this.f385b;
        if (zD) {
            return list;
        }
        p117p0.E e8 = new p117p0.E((byte[]) h8.f304d);
        while (e8.a() > 0) {
            int iZ = e8.z();
            int iZ2 = e8.f28036b + e8.z();
            if (iZ == 134) {
                ArrayList arrayList = new ArrayList();
                int iZ3 = e8.z() & 31;
                for (int i9 = 0; i9 < iZ3; i9++) {
                    String strX = e8.x(3, StandardCharsets.UTF_8);
                    int iZ4 = e8.z();
                    boolean z7 = (iZ4 & 128) != 0;
                    if (z7) {
                        i8 = iZ4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i8 = 1;
                    }
                    byte bZ = (byte) e8.z();
                    e8.M(1);
                    if (z7) {
                        boolean z8 = (bZ & 64) != 0;
                        byte[] bArr = AbstractC3169g.f28081a;
                        listSingletonList = Collections.singletonList(z8 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    C3135s c3135s = new C3135s();
                    c3135s.f26996n = O.p(str);
                    c3135s.f26986d = strX;
                    c3135s.f26978K = i8;
                    c3135s.f26999q = listSingletonList;
                    arrayList.add(new C3136t(c3135s));
                }
                list = arrayList;
            }
            e8.L(iZ2);
        }
        return list;
    }

    public final boolean d(int i8) {
        return (i8 & this.f384a) != 0;
    }
}
