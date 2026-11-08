package E1;

import java.util.logging.Level;
import p021c4.C0574d1;
import p021c4.F1;
import p021c4.J1;

/* JADX INFO: loaded from: classes.dex */
public final class N implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2659G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f2660H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f2661I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f2662J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Object f2663K;

    public /* synthetic */ N(C0574d1 c0574d1, J1 j8, boolean z7, M3.a aVar, int i8) {
        this.f2659G = i8;
        this.f2661I = j8;
        this.f2660H = z7;
        this.f2662J = aVar;
        this.f2663K = c0574d1;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0032 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 316
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: E1.N.run():void");
    }

    public N(C0574d1 c0574d1, J1 j8, boolean z7, F1 f8) {
        this.f2659G = 1;
        this.f2661I = j8;
        this.f2660H = z7;
        this.f2662J = f8;
        this.f2663K = c0574d1;
    }

    public N(p007a6.f fVar, p023c6.h hVar) {
        this.f2659G = 4;
        this.f2663K = fVar;
        this.f2661I = new p096m2.c(Level.FINE);
        this.f2660H = true;
        this.f2662J = hVar;
    }
}
