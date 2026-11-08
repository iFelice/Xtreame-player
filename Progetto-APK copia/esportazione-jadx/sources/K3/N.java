package K3;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.common.internal.C0633i;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class N extends p044f4.c implements com.google.android.gms.common.api.k, com.google.android.gms.common.api.l {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final H3.r f4501N = p036e4.b.f24865a;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f4502G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Handler f4503H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final H3.r f4504I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Set f4505J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C0633i f4506K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public p036e4.c f4507L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public B f4508M;

    public N(Context context, Handler handler, C0633i c0633i) {
        attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
        this.f4502G = context;
        this.f4503H = handler;
        this.f4506K = c0633i;
        this.f4505J = c0633i.f11845b;
        this.f4504I = f4501N;
    }

    @Override // K3.InterfaceC0232e
    public final void onConnected() {
        this.f4507L.a(this);
    }

    @Override // K3.InterfaceC0239l
    public final void onConnectionFailed(J3.b bVar) {
        this.f4508M.b(bVar);
    }

    @Override // K3.InterfaceC0232e
    public final void onConnectionSuspended(int i8) {
        B b8 = this.f4508M;
        z zVar = (z) b8.f4478f.f4547P.get(b8.f4474b);
        if (zVar != null) {
            if (zVar.f4588O) {
                zVar.o(new J3.b(17));
            } else {
                zVar.onConnectionSuspended(i8);
            }
        }
    }
}
