package J6;

import z4.q0;

/* JADX INFO: renamed from: J6.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0214m extends p185x6.a implements p185x6.g {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final C0213l f4243H = new C0213l(0);

    public AbstractC0214m() {
        super(p185x6.f.f31226G);
    }

    @Override // p185x6.a, p185x6.j
    public final p185x6.j O(p185x6.i iVar) {
        q0.h(iVar, "key");
        boolean z7 = iVar instanceof p185x6.b;
        p185x6.k kVar = p185x6.k.f31227G;
        if (z7) {
            p185x6.b bVar = (p185x6.b) iVar;
            p185x6.i iVar2 = this.f31220G;
            q0.h(iVar2, "key");
            if ((iVar2 == bVar || bVar.f31222H == iVar2) && bVar.a(this) != null) {
                return kVar;
            }
        } else if (p185x6.f.f31226G == iVar) {
            return kVar;
        }
        return this;
    }

    public abstract void a0(p185x6.j jVar, Runnable runnable);

    public boolean b0(p185x6.j jVar) {
        return !(this instanceof Z);
    }

    public AbstractC0214m c0(int i8, String str) {
        q0.i(i8);
        return new N6.h(this, i8, str);
    }

    @Override // p185x6.a, p185x6.j
    public final p185x6.h k(p185x6.i iVar) {
        q0.h(iVar, "key");
        if (!(iVar instanceof p185x6.b)) {
            if (p185x6.f.f31226G == iVar) {
                return this;
            }
            return null;
        }
        p185x6.b bVar = (p185x6.b) iVar;
        p185x6.i iVar2 = this.f31220G;
        q0.h(iVar2, "key");
        if (iVar2 != bVar && bVar.f31222H != iVar2) {
            return null;
        }
        p185x6.h hVarA = bVar.a(this);
        if (hVarA instanceof p185x6.h) {
            return hVarA;
        }
        return null;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + r.i(this);
    }
}
