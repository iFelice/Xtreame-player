package K3;

import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends P {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f4511c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4512d;

    public Q(C0236i c0236i, p052g4.i iVar) {
        super(4, iVar);
        this.f4512d = c0236i;
    }

    @Override // K3.E
    public final boolean f(z zVar) {
        int i8 = this.f4511c;
        Object obj = this.f4512d;
        switch (i8) {
            case 0:
                return ((I) obj).f4493a.f4559c;
            default:
                I i9 = (I) zVar.f4585L.get((C0236i) obj);
                return i9 != null && i9.f4493a.f4559c;
        }
    }

    @Override // K3.E
    public final J3.d[] g(z zVar) {
        int i8 = this.f4511c;
        Object obj = this.f4512d;
        switch (i8) {
            case 0:
                return ((I) obj).f4493a.f4558b;
            default:
                I i9 = (I) zVar.f4585L.get((C0236i) obj);
                if (i9 == null) {
                    return null;
                }
                return i9.f4493a.f4558b;
        }
    }

    @Override // K3.P
    public final void h(z zVar) {
        switch (this.f4511c) {
            case 0:
                AbstractC0240m abstractC0240m = ((I) this.f4512d).f4493a;
                ((K) abstractC0240m).f4497e.f4561a.accept(zVar.f4581H, this.f4510b);
                C0236i c0236i = ((I) this.f4512d).f4493a.f4557a.f4556b;
                if (c0236i != null) {
                    zVar.f4585L.put(c0236i, (I) this.f4512d);
                }
                break;
            default:
                I i8 = (I) zVar.f4585L.remove((C0236i) this.f4512d);
                if (i8 == null) {
                    this.f4510b.d(Boolean.FALSE);
                } else {
                    ((L) i8.f4494b).f4498b.f4562b.accept(zVar.f4581H, this.f4510b);
                    i8.f4493a.f4557a.f4556b = null;
                }
                break;
        }
    }

    public Q(I i8, p052g4.i iVar) {
        super(3, iVar);
        this.f4512d = i8;
    }

    @Override // K3.T
    public final /* bridge */ /* synthetic */ void d(x0 x0Var, boolean z7) {
    }
}
