package p000a;

import C6.a;
import android.window.OnBackInvokedCallback;
import p039f.K;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t implements OnBackInvokedCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f8611b;

    public /* synthetic */ t(Object obj, int i8) {
        this.f8610a = i8;
        this.f8611b = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f8610a) {
            case 0:
                a aVar = (a) this.f8611b;
                q0.h(aVar, "$onBackInvoked");
                aVar.invoke();
                break;
            case 1:
                ((K) this.f8611b).D();
                break;
            default:
                ((Runnable) this.f8611b).run();
                break;
        }
    }
}
