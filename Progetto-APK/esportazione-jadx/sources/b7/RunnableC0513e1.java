package b7;

import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC0513e1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10290G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ PlayStreamEPGActivity f10291H;

    public /* synthetic */ RunnableC0513e1(PlayStreamEPGActivity playStreamEPGActivity, int i8) {
        this.f10290G = i8;
        this.f10291H = playStreamEPGActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f10290G;
        PlayStreamEPGActivity playStreamEPGActivity = this.f10291H;
        switch (i8) {
            case 0:
                playStreamEPGActivity.f28911f2.setSpuTrack(-1);
                playStreamEPGActivity.f28911f2.play();
                break;
            case 1:
                playStreamEPGActivity.f28850G2.setVisibility(8);
                break;
            case 2:
                playStreamEPGActivity.f28853H2.setVisibility(8);
                break;
            case 3:
                z4.F fListIterator = playStreamEPGActivity.f28859J2.y().f26959a.listIterator(0);
                while (fListIterator.hasNext()) {
                    p094m0.l0 l0Var = (p094m0.l0) fListIterator.next();
                    p094m0.g0 g0Var = l0Var.f26949b;
                    if (g0Var.f26859c == 3) {
                        if (l0Var.f26948a > 0) {
                            p094m0.h0 h0Var = new p094m0.h0(g0Var, z4.H.x(0));
                            R0.k kVar = (R0.k) playStreamEPGActivity.f28859J2.E();
                            kVar.getClass();
                            R0.j jVar = new R0.j(kVar);
                            jVar.c(3);
                            jVar.a(h0Var);
                            jVar.j(3, false);
                            B0.O o4 = playStreamEPGActivity.f28859J2;
                            o4.getClass();
                            o4.S(false);
                            playStreamEPGActivity.f28859J2.U(new R0.k(jVar));
                            playStreamEPGActivity.f28859J2.h();
                        }
                        break;
                    }
                }
                break;
            default:
                if (playStreamEPGActivity.f28911f2.isPlaying()) {
                    playStreamEPGActivity.f28911f2.pause();
                }
                break;
        }
    }
}
