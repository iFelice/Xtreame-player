package p117p0;

import B0.q0;
import C0.A;
import G0.o;
import G0.p;
import M1.a;
import M1.c;
import O0.C0300y;
import android.util.Pair;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f28118G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f28119H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f28120I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f28121J;

    public /* synthetic */ t(Object obj, int i8, Object obj2, int i9) {
        this.f28118G = i9;
        this.f28120I = obj;
        this.f28119H = i8;
        this.f28121J = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f28118G;
        Object obj = this.f28121J;
        int i9 = this.f28119H;
        Object obj2 = this.f28120I;
        switch (i8) {
            case 0:
                u uVar = (u) obj;
                for (w wVar : (CopyOnWriteArraySet) obj2) {
                    if (!wVar.f28125d) {
                        if (i9 != -1) {
                            wVar.f28123b.a(i9);
                        }
                        wVar.f28124c = true;
                        uVar.invoke(wVar.f28122a);
                    }
                }
                break;
            case 1:
                Pair pair = (Pair) obj;
                ((A) ((q0) obj2).f1063H.f1085h).E(((Integer) pair.first).intValue(), (C0300y) pair.second, i9);
                break;
            case 2:
                o oVar = (o) obj2;
                ((p) obj).E(oVar.f3374a, oVar.f3375b, i9);
                break;
            case 3:
                ((c) ((a) obj2).f4739e).q(i9, obj);
                break;
            default:
                ((c) obj2).q(i9, obj);
                break;
        }
    }

    public /* synthetic */ t(Object obj, Object obj2, int i8, int i9) {
        this.f28118G = i9;
        this.f28120I = obj;
        this.f28121J = obj2;
        this.f28119H = i8;
    }
}
