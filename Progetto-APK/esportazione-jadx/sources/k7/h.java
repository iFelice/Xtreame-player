package k7;

import android.widget.Button;
import java.text.DecimalFormat;
import java.util.List;
import p104n2.t;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ List f26047G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ double f26048H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ t f26049I;

    public h(t tVar, List list, double d6) {
        this.f26049I = tVar;
        this.f26047G = list;
        this.f26048H = d6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t tVar = this.f26049I;
        ((Button) ((W4.a) tVar.f27474L).f7480H).setTextSize(13.0f);
        ((Button) ((W4.a) tVar.f27474L).f7480H).setText(String.format("Host Location: %s [Distance: %s km]", this.f26047G.get(2), new DecimalFormat("#.##").format(this.f26048H / 1000.0d)));
    }
}
