package p161u5;

import O5.h;
import android.content.Context;
import android.os.Handler;
import p039f.G;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30518a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Runnable f30522e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f30523f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30520c = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final G f30519b = new G(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Handler f30521d = new Handler();

    public g(Context context, h hVar) {
        this.f30518a = context;
        this.f30522e = hVar;
    }

    public final void a() {
        this.f30521d.removeCallbacksAndMessages(null);
        if (this.f30520c) {
            this.f30518a.unregisterReceiver(this.f30519b);
            this.f30520c = false;
        }
    }
}
