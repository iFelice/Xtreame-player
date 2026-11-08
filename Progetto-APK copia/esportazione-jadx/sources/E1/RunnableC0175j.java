package E1;

import java.util.Collection;

/* JADX INFO: renamed from: E1.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0175j implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2754G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0185u f2755H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0173h f2756I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Collection f2757J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractC0177l f2758K;

    public /* synthetic */ RunnableC0175j(AbstractC0177l abstractC0177l, C0185u c0185u, C0173h c0173h, Collection collection, int i8) {
        this.f2754G = i8;
        this.f2758K = abstractC0177l;
        this.f2755H = c0185u;
        this.f2756I = c0173h;
        this.f2757J = collection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f2754G;
        AbstractC0177l abstractC0177l = this.f2758K;
        C0185u c0185u = this.f2755H;
        Collection collection = this.f2757J;
        C0173h c0173h = this.f2756I;
        switch (i8) {
            case 0:
                c0185u.a(abstractC0177l, c0173h, collection);
                break;
            default:
                c0185u.a(abstractC0177l, c0173h, collection);
                break;
        }
    }
}
