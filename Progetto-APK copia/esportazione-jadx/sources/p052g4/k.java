package p052g4;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public final class k implements f, b, e, c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25348G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f25349H;

    public k() {
        this.f25348G = 3;
        this.f25349H = new r();
    }

    @Override // p052g4.c
    public final void b() {
        int i8 = this.f25348G;
        Object obj = this.f25349H;
        switch (i8) {
            case 2:
                ((CountDownLatch) obj).countDown();
                break;
            default:
                ((i) obj).f25345a.l();
                break;
        }
    }

    @Override // p052g4.e
    public final void onFailure(Exception exc) {
        ((CountDownLatch) this.f25349H).countDown();
    }

    @Override // p052g4.f
    public final void onSuccess(Object obj) {
        int i8 = this.f25348G;
        Object obj2 = this.f25349H;
        switch (i8) {
            case 0:
                ((k) obj2).b();
                break;
            default:
                ((CountDownLatch) obj2).countDown();
                break;
        }
    }

    @Override // p052g4.b
    public final /* bridge */ /* synthetic */ Object then(h hVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll((Collection) this.f25349H);
        return Cw.k(arrayList);
    }

    public k(k kVar) {
        this.f25348G = 0;
        this.f25349H = kVar;
    }

    public /* synthetic */ k(Object obj, int i8) {
        this.f25348G = i8;
        this.f25349H = obj;
    }

    public /* synthetic */ k(int i8) {
        this.f25348G = 2;
        this.f25349H = new CountDownLatch(1);
    }
}
