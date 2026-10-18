package K;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class h implements M.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4286b;

    public /* synthetic */ h(Object obj, int i8) {
        this.f4285a = i8;
        this.f4286b = obj;
    }

    public final void a(i iVar) {
        switch (this.f4285a) {
            case 0:
                if (iVar == null) {
                    iVar = new i(-3);
                }
                ((p096m2.c) this.f4286b).w(iVar);
                return;
            default:
                synchronized (j.f4291c) {
                    try {
                        p132r.m mVar = j.f4292d;
                        ArrayList arrayList = (ArrayList) mVar.get((String) this.f4286b);
                        if (arrayList == null) {
                            return;
                        }
                        mVar.remove((String) this.f4286b);
                        for (int i8 = 0; i8 < arrayList.size(); i8++) {
                            ((M.a) arrayList.get(i8)).accept(iVar);
                        }
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }

    @Override // M.a
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        switch (this.f4285a) {
            case 0:
                a((i) obj);
                break;
            default:
                a((i) obj);
                break;
        }
    }
}
