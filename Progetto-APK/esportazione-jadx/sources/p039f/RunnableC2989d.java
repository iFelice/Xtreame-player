package p039f;

import android.view.View;

/* JADX INFO: renamed from: f.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2989d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25037G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ View f25038H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ View f25039I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C2995j f25040J;

    public /* synthetic */ RunnableC2989d(C2995j c2995j, View view, View view2, int i8) {
        this.f25037G = i8;
        this.f25040J = c2995j;
        this.f25038H = view;
        this.f25039I = view2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f25037G;
        View view = this.f25039I;
        View view2 = this.f25038H;
        C2995j c2995j = this.f25040J;
        switch (i8) {
            case 0:
                C2995j.b(c2995j.f25095v, view2, view);
                break;
            default:
                C2995j.b(c2995j.f25079f, view2, view);
                break;
        }
    }
}
