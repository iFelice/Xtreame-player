package Z3;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.Window;
import b7.C0538n;
import java.util.Objects;
import okhttp3.HttpUrl;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: renamed from: Z3.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0432n implements p168v4.d, W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f8369G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f8370H;

    public /* synthetic */ C0432n(Object obj, Object obj2) {
        this.f8369G = obj;
        this.f8370H = obj2;
    }

    @Override // p168v4.d
    public final void i(C0430l c0430l) {
        Activity activity = (Activity) this.f8369G;
        C0538n c0538n = (C0538n) this.f8370H;
        G.a();
        int i8 = 0;
        if (!c0430l.f8361h.compareAndSet(false, true)) {
            c0538n.a(new a0(3, true != c0430l.f8365l ? "ConsentForm#show can only be invoked once." : "Privacy options form is being loading. Please try again later.").a());
            return;
        }
        C0436s c0436s = c0430l.f8360g;
        C0440w c0440w = c0436s.f8383H;
        Objects.requireNonNull(c0440w);
        c0436s.f8382G.post(new r(c0440w, i8));
        C0428j c0428j = new C0428j(c0430l, activity);
        c0430l.f8354a.registerActivityLifecycleCallbacks(c0428j);
        c0430l.f8364k.set(c0428j);
        c0430l.f8355b.f8387a = activity;
        Dialog dialog = new Dialog(activity, R.style.Theme.Translucent.NoTitleBar);
        dialog.setContentView(c0430l.f8360g);
        dialog.setCancelable(false);
        Window window = dialog.getWindow();
        if (window == null) {
            c0538n.a(new a0(3, "Activity with null windows is passed in.").a());
            return;
        }
        window.setLayout(-1, -1);
        window.setBackgroundDrawable(new ColorDrawable(0));
        window.setFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 35) {
            window.setDecorFitsSystemWindows(false);
        } else if (i9 >= 30) {
            H.a.e(window);
        } else {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
        }
        c0430l.f8363j.set(c0538n);
        dialog.show();
        c0430l.f8359f = dialog;
        c0430l.f8360g.a("UMP_messagePresented", HttpUrl.FRAGMENT_ENCODE_SET);
    }

    @Override // Z3.Y
    public final /* bridge */ /* synthetic */ Object zza() {
        return new c0((Application) ((X) this.f8369G).zza(), (C0423e) ((X) this.f8370H).zza());
    }
}
