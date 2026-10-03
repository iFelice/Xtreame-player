package p109o;

import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27576G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f27577H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ d f27578I;

    public b(d dVar, int i8, Uri uri, boolean z7, Bundle bundle) {
        this.f27578I = dVar;
        this.f27576G = i8;
        this.f27577H = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f27578I.f27585H.g(this.f27576G, this.f27577H);
    }
}
