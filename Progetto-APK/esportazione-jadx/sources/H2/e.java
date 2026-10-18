package H2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class e extends M2.c {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Handler f3650J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f3651K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f3652L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Bitmap f3653M;

    public e(Handler handler, int i8, long j8) {
        this.f3650J = handler;
        this.f3651K = i8;
        this.f3652L = j8;
    }

    @Override // M2.i
    public final void a(Object obj, N2.e eVar) {
        this.f3653M = (Bitmap) obj;
        Handler handler = this.f3650J;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f3652L);
    }

    @Override // M2.i
    public final void i(Drawable drawable) {
        this.f3653M = null;
    }
}
