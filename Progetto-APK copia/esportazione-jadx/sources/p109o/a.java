package p109o;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27573G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f27574H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ d f27575I;

    public /* synthetic */ a(d dVar, String str, Bundle bundle, int i8) {
        this.f27573G = i8;
        this.f27575I = dVar;
        this.f27574H = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f27573G;
        d dVar = this.f27575I;
        switch (i8) {
            case 0:
                dVar.f27585H.a();
                break;
            default:
                dVar.f27585H.f(this.f27574H);
                break;
        }
    }
}
