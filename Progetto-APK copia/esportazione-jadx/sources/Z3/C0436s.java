package Z3;

import android.os.Handler;
import android.webkit.WebView;

/* JADX INFO: renamed from: Z3.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0436s extends WebView {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ int f8381J = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Handler f8382G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0440w f8383H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f8384I;

    public C0436s(C0438u c0438u, Handler handler, C0440w c0440w) {
        super(c0438u);
        this.f8384I = false;
        this.f8382G = handler;
        this.f8383H = c0440w;
    }

    public final void a(String str, String str2) {
        this.f8382G.post(new RunnableC0431m(1, this, A0.O.B(str, "(", str2, ");")));
    }
}
