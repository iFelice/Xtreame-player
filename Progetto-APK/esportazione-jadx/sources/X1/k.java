package X1;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class k implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f7572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f7574c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7575d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7576e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f7577f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ l f7578g;

    public k(l lVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.f7578g = lVar;
        this.f7572a = obj;
        this.f7573b = arrayList;
        this.f7576e = obj2;
        this.f7577f = arrayList2;
    }

    @Override // X1.p
    public final void c() {
        l lVar = this.f7578g;
        Object obj = this.f7572a;
        if (obj != null) {
            lVar.s(obj, this.f7573b, null);
        }
        Object obj2 = this.f7574c;
        if (obj2 != null) {
            lVar.s(obj2, this.f7575d, null);
        }
        Object obj3 = this.f7576e;
        if (obj3 != null) {
            lVar.s(obj3, this.f7577f, null);
        }
    }

    @Override // X1.p
    public final void a() {
    }

    @Override // X1.p
    public final void d() {
    }

    @Override // X1.p
    public final void b(q qVar) {
    }
}
