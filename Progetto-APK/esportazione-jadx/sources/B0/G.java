package B0;

import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class G implements p117p0.u, InterfaceC3172j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f712G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f713H;

    public /* synthetic */ G(int i8, int i9) {
        this.f712G = i9;
        this.f713H = i8;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        ((G0.o) obj).d(this.f713H);
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        int i8 = this.f712G;
        int i9 = this.f713H;
        p094m0.W w7 = (p094m0.W) obj;
        switch (i8) {
            case 0:
                w7.onRepeatModeChanged(i9);
                break;
            default:
                w7.c(i9);
                break;
        }
    }
}
