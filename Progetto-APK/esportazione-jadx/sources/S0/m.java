package S0;

import N.C0260i;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.concurrent.Executors;
import p117p0.L;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class m implements n {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final g f6363J = c(-9223372036854775807L, false);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final g f6364K = new g(2, -9223372036854775807L, (Object) null);

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final g f6365L = new g(3, -9223372036854775807L, (Object) null);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final T0.a f6366G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public i f6367H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public IOException f6368I;

    /* JADX WARN: Illegal instructions before constructor call */
    public m(String str) {
        String strConcat = "ExoPlayer:Loader:".concat(str);
        String str2 = M.f28050a;
        this(new T0.a(Executors.newSingleThreadExecutor(new L(strConcat, 0)), new C0260i(19)));
    }

    public static g c(long j8, boolean z7) {
        return new g(z7 ? 1 : 0, j8, (Object) null);
    }

    public final void a() {
        i iVar = this.f6367H;
        H1.j(iVar);
        iVar.a(false);
    }

    @Override // S0.n
    public final void b() throws IOException {
        IOException iOException;
        IOException iOException2 = this.f6368I;
        if (iOException2 != null) {
            throw iOException2;
        }
        i iVar = this.f6367H;
        if (iVar != null && (iOException = iVar.f6357K) != null && iVar.f6358L > iVar.f6353G) {
            throw iOException;
        }
    }

    public final boolean d() {
        return this.f6368I != null;
    }

    public final boolean e() {
        return this.f6367H != null;
    }

    public final void f(k kVar) {
        i iVar = this.f6367H;
        if (iVar != null) {
            iVar.a(true);
        }
        T0.a aVar = this.f6366G;
        if (kVar != null) {
            aVar.execute(new p000a.f(kVar, 12));
        }
        aVar.f6512H.accept(aVar.f6511G);
    }

    public final void g(j jVar, h hVar, int i8) {
        Looper looperMyLooper = Looper.myLooper();
        H1.j(looperMyLooper);
        this.f6368I = null;
        i iVar = new i(this, looperMyLooper, jVar, hVar, i8, SystemClock.elapsedRealtime());
        H1.i(this.f6367H == null);
        this.f6367H = iVar;
        iVar.b();
    }

    public m(T0.a aVar) {
        this.f6366G = aVar;
    }
}
