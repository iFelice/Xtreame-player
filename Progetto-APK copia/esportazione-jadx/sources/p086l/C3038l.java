package p086l;

import android.view.View;
import p079k.E;

/* JADX INFO: renamed from: l.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3038l extends C0 {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ int f26277P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final /* synthetic */ Object f26278Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final /* synthetic */ View f26279R;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3038l(View view, View view2, Object obj, int i8) {
        super(view2);
        this.f26277P = i8;
        this.f26279R = view;
        this.f26278Q = obj;
    }

    @Override // p086l.C0
    public final E b() {
        switch (this.f26277P) {
            case 0:
                C3032i c3032i = ((C3040m) this.f26279R).f26280J.f26313Y;
                if (c3032i == null) {
                    return null;
                }
                return c3032i.a();
            default:
                return (T) this.f26278Q;
        }
    }

    @Override // p086l.C0
    public final boolean c() {
        int i8 = this.f26277P;
        View view = this.f26279R;
        switch (i8) {
            case 0:
                ((C3040m) view).f26280J.l();
                break;
            default:
                W w7 = (W) view;
                if (!w7.getInternalPopup().a()) {
                    w7.f26198L.l(w7.getTextDirection(), w7.getTextAlignment());
                }
                break;
        }
        return true;
    }

    @Override // p086l.C0
    public final boolean d() {
        switch (this.f26277P) {
            case 0:
                C3042n c3042n = ((C3040m) this.f26279R).f26280J;
                if (c3042n.f26315a0 != null) {
                    return false;
                }
                c3042n.h();
                return true;
            default:
                super.d();
                return true;
        }
    }
}
