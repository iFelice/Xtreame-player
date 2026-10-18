package p193z;

/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f31462N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f31463O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public p170w.a f31464P;

    public boolean getAllowsGoneWidget() {
        return this.f31464P.f30763s0;
    }

    public int getMargin() {
        return this.f31464P.f30764t0;
    }

    public int getType() {
        return this.f31462N;
    }

    public void setAllowsGoneWidget(boolean z7) {
        this.f31464P.f30763s0 = z7;
    }

    public void setDpMargin(int i8) {
        this.f31464P.f30764t0 = (int) ((i8 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i8) {
        this.f31464P.f30764t0 = i8;
    }

    public void setType(int i8) {
        this.f31462N = i8;
    }
}
