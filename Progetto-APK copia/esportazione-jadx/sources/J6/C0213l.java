package J6;

import J6.AbstractC0214m;
import J6.E;
import z4.q0;

/* JADX INFO: renamed from: J6.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0213l extends p185x6.b {
    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v1, types: [I6.f] */
    /* JADX WARN: Type inference failed for: r1v1, types: [I6.f] */
    public C0213l(int i8) {
        final int i9 = 1;
        if (i8 != 1) {
            super(p185x6.f.f31226G, new C6.l() { // from class: I6.f
                @Override // C6.l
                public final Object invoke(Object obj) {
                    switch (i9) {
                        case 0:
                            String str = (String) obj;
                            q0.h(str, "line");
                            return str;
                        case 1:
                            p185x6.h hVar = (p185x6.h) obj;
                            if (hVar instanceof AbstractC0214m) {
                                return (AbstractC0214m) hVar;
                            }
                            return null;
                        default:
                            p185x6.h hVar2 = (p185x6.h) obj;
                            if (hVar2 instanceof E) {
                                return (E) hVar2;
                            }
                            return null;
                    }
                }
            });
        } else {
            final int i10 = 2;
            super(AbstractC0214m.f4243H, new C6.l() { // from class: I6.f
                @Override // C6.l
                public final Object invoke(Object obj) {
                    switch (i10) {
                        case 0:
                            String str = (String) obj;
                            q0.h(str, "line");
                            return str;
                        case 1:
                            p185x6.h hVar = (p185x6.h) obj;
                            if (hVar instanceof AbstractC0214m) {
                                return (AbstractC0214m) hVar;
                            }
                            return null;
                        default:
                            p185x6.h hVar2 = (p185x6.h) obj;
                            if (hVar2 instanceof E) {
                                return (E) hVar2;
                            }
                            return null;
                    }
                }
            });
        }
    }
}
