package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1177cv implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18274G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BinderC1228dv f18275H;

    public /* synthetic */ RunnableC1177cv(BinderC1228dv binderC1228dv, int i8) {
        this.f18274G = i8;
        this.f18275H = binderC1228dv;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f18274G;
        BinderC1228dv binderC1228dv = this.f18275H;
        switch (i8) {
            case 0:
                binderC1228dv.z3(5);
                break;
            default:
                binderC1228dv.f18378G.a().execute(new RunnableC1177cv(binderC1228dv, 0));
                break;
        }
    }
}
