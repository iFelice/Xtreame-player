package p086l;

import android.content.Context;
import android.view.View;
import p039f.S;
import p079k.G;
import p079k.o;
import p079k.w;
import p079k.y;
import pe.hf.black20.R;

/* JADX INFO: renamed from: l.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3032i extends y {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ int f26267m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ C3042n f26268n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3032i(C3042n c3042n, Context context, o oVar, C3040m c3040m) {
        super(R.attr.actionOverflowMenuStyle, 0, context, c3040m, oVar, true);
        this.f26268n = c3042n;
        this.f25895g = 8388613;
        S s7 = c3042n.f26317c0;
        this.f25897i = s7;
        w wVar = this.f25898j;
        if (wVar != null) {
            wVar.f(s7);
        }
    }

    @Override // p079k.y
    public final void c() {
        int i8 = this.f26267m;
        C3042n c3042n = this.f26268n;
        switch (i8) {
            case 0:
                c3042n.f26314Z = null;
                super.c();
                break;
            default:
                o oVar = c3042n.f26297I;
                if (oVar != null) {
                    oVar.c(true);
                }
                c3042n.f26313Y = null;
                super.c();
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3032i(C3042n c3042n, Context context, G g8, View view) {
        super(R.attr.actionOverflowMenuStyle, 0, context, view, g8, false);
        this.f26268n = c3042n;
        if (!g8.f25746A.f()) {
            View view2 = c3042n.f26303O;
            this.f25894f = view2 == null ? (View) c3042n.f26302N : view2;
        }
        S s7 = c3042n.f26317c0;
        this.f25897i = s7;
        w wVar = this.f25898j;
        if (wVar != null) {
            wVar.f(s7);
        }
    }
}
