package k7;

import android.widget.TextView;
import java.text.DecimalFormat;
import p104n2.t;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26050G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ c f26051H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ t f26052I;

    public /* synthetic */ i(t tVar, c cVar, int i8) {
        this.f26050G = i8;
        this.f26052I = tVar;
        this.f26051H = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26050G;
        c cVar = this.f26051H;
        t tVar = this.f26052I;
        switch (i8) {
            case 0:
                ((TextView) tVar.f27472J).setText(((DecimalFormat) ((W4.a) tVar.f27474L).f7481I).format(cVar.f26032J) + " ms");
                break;
            default:
                ((TextView) tVar.f27472J).setText(((DecimalFormat) ((W4.a) tVar.f27474L).f7481I).format(cVar.f26031I) + " ms");
                break;
        }
    }
}
