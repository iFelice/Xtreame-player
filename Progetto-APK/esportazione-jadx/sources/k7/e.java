package k7;

import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import p104n2.t;
import pe.hf.black20.speedtest.SpeedTestActivity;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26037G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ List f26038H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ V6.b f26039I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ LinearLayout f26040J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ t f26041K;

    public /* synthetic */ e(t tVar, ArrayList arrayList, V6.b bVar, LinearLayout linearLayout, int i8) {
        this.f26037G = i8;
        this.f26041K = tVar;
        this.f26038H = arrayList;
        this.f26039I = bVar;
        this.f26040J = linearLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26037G;
        LinearLayout linearLayout = this.f26040J;
        V6.b bVar = this.f26039I;
        t tVar = this.f26041K;
        List list = this.f26038H;
        switch (i8) {
            case 0:
                U6.d dVar = new U6.d();
                dVar.f6982G = HttpUrl.FRAGMENT_ENCODE_SET;
                Iterator it = new ArrayList(list).iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    dVar.a(i9, ((Double) it.next()).doubleValue());
                    i9++;
                }
                U6.c cVar = new U6.c();
                cVar.a(dVar);
                linearLayout.addView(q0.s(((SpeedTestActivity) ((W4.a) tVar.f27474L).f7482J).getBaseContext(), cVar, bVar), 0);
                break;
            case 1:
                U6.d dVar2 = new U6.d();
                dVar2.f6982G = HttpUrl.FRAGMENT_ENCODE_SET;
                int i10 = 0;
                for (Double dValueOf : new ArrayList(list)) {
                    if (i10 == 0) {
                        dValueOf = Double.valueOf(0.0d);
                    }
                    dVar2.a(i10, dValueOf.doubleValue());
                    i10++;
                }
                U6.c cVar2 = new U6.c();
                cVar2.a(dVar2);
                linearLayout.addView(q0.s(((SpeedTestActivity) ((W4.a) tVar.f27474L).f7482J).getBaseContext(), cVar2, bVar), 0);
                break;
            default:
                U6.d dVar3 = new U6.d();
                dVar3.f6982G = HttpUrl.FRAGMENT_ENCODE_SET;
                Iterator it2 = new ArrayList(list).iterator();
                int i11 = 0;
                while (it2.hasNext()) {
                    dVar3.a(i11, ((Double) it2.next()).doubleValue());
                    i11++;
                }
                U6.c cVar3 = new U6.c();
                cVar3.a(dVar3);
                linearLayout.addView(q0.s(((SpeedTestActivity) ((W4.a) tVar.f27474L).f7482J).getBaseContext(), cVar3, bVar), 0);
                break;
        }
    }
}
