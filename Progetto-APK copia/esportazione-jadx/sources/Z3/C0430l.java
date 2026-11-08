package Z3;

import android.app.Application;
import android.app.Dialog;
import android.os.Handler;
import com.google.android.gms.internal.ads.Cw;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: Z3.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0430l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f8354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0438u f8355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0427i f8356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0435q f8357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Y f8358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Dialog f8359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C0436s f8360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AtomicBoolean f8361h = new AtomicBoolean();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicReference f8362i = new AtomicReference();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicReference f8363j = new AtomicReference();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicReference f8364k = new AtomicReference();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f8365l = false;

    public C0430l(Application application, C0438u c0438u, C0427i c0427i, C0435q c0435q, X x7) {
        this.f8354a = application;
        this.f8355b = c0438u;
        this.f8356c = c0427i;
        this.f8357d = c0435q;
        this.f8358e = x7;
    }

    public final void a(p168v4.d dVar, p168v4.c cVar) {
        C0437t c0437t = (C0437t) this.f8358e;
        C0438u c0438u = (C0438u) c0437t.f8385G.zza();
        Handler handler = G.f8254a;
        Cw.a0(handler);
        C0436s c0436s = new C0436s(c0438u, handler, ((C0441x) c0437t.f8386H).zza());
        this.f8360g = c0436s;
        c0436s.setBackgroundColor(0);
        c0436s.getSettings().setJavaScriptEnabled(true);
        c0436s.getSettings().setAllowFileAccess(false);
        c0436s.getSettings().setAllowContentAccess(false);
        c0436s.setWebViewClient(new p083k3.i(c0436s));
        this.f8362i.set(new C0429k(dVar, cVar));
        C0436s c0436s2 = this.f8360g;
        C0435q c0435q = this.f8357d;
        c0436s2.loadDataWithBaseURL(c0435q.f8377a, c0435q.f8378b, "text/html", "UTF-8", null);
        handler.postDelayed(new com.google.android.gms.internal.cast.X(this, 2), 10000L);
    }
}
