package K3;

import com.google.android.gms.common.internal.InterfaceC0628d;
import com.google.android.gms.common.internal.InterfaceC0638n;
import java.util.Set;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class B implements InterfaceC0628d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.common.api.e f4473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0228a f4474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InterfaceC0638n f4475c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Set f4476d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4477e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0233f f4478f;

    public B(C0233f c0233f, com.google.android.gms.common.api.e eVar, C0228a c0228a) {
        this.f4478f = c0233f;
        this.f4473a = eVar;
        this.f4474b = c0228a;
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0628d
    public final void a(J3.b bVar) {
        this.f4478f.f4550S.post(new RunnableC3036k(28, this, bVar));
    }

    public final void b(J3.b bVar) {
        z zVar = (z) this.f4478f.f4547P.get(this.f4474b);
        if (zVar != null) {
            zVar.o(bVar);
        }
    }
}
