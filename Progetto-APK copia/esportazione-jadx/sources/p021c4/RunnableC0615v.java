package p021c4;

/* JADX INFO: renamed from: c4.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0615v implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11382G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ long f11383H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ AbstractC0623z f11384I;

    public /* synthetic */ RunnableC0615v(AbstractC0623z abstractC0623z, long j8, int i8) {
        this.f11382G = i8;
        this.f11383H = j8;
        this.f11384I = abstractC0623z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11382G;
        long j8 = this.f11383H;
        AbstractC0623z abstractC0623z = this.f11384I;
        switch (i8) {
            case 0:
                ((C0619x) abstractC0623z).s(j8);
                break;
            default:
                V0 v5 = (V0) abstractC0623z;
                C0619x c0619x = ((C0597l0) v5.f10616G).f11266W;
                C0597l0.h(c0619x);
                c0619x.p(j8);
                v5.f11064K = null;
                break;
        }
    }
}
