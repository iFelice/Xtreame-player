package Y;

import android.os.Bundle;
import android.view.View;
import java.util.HashMap;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2977e;
import p032e0.InterfaceC2983k;

/* JADX INFO: renamed from: Y.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0404p implements InterfaceC2983k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7913G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f7914H;

    public C0404p(InterfaceC2977e[] interfaceC2977eArr) {
        this.f7914H = interfaceC2977eArr;
    }

    @Override // p032e0.InterfaceC2983k
    public final void b(p032e0.m mVar, EnumC2981i enumC2981i) {
        View view;
        int i8 = this.f7913G;
        Object obj = this.f7914H;
        switch (i8) {
            case 0:
                if (enumC2981i != EnumC2981i.ON_STOP || (view = ((AbstractComponentCallbacksC0406s) obj).f7963m0) == null) {
                    return;
                }
                view.cancelPendingInputEvents();
                return;
            case 1:
                new HashMap();
                InterfaceC2977e[] interfaceC2977eArr = (InterfaceC2977e[]) obj;
                if (interfaceC2977eArr.length > 0) {
                    InterfaceC2977e interfaceC2977e = interfaceC2977eArr[0];
                    throw null;
                }
                if (interfaceC2977eArr.length <= 0) {
                    return;
                }
                InterfaceC2977e interfaceC2977e2 = interfaceC2977eArr[0];
                throw null;
            case 2:
                if (enumC2981i != EnumC2981i.ON_CREATE) {
                    throw new IllegalStateException(("Next event must be ON_CREATE, it was " + enumC2981i).toString());
                }
                mVar.h().c(this);
                p032e0.D d6 = (p032e0.D) obj;
                if (d6.f24719b) {
                    return;
                }
                Bundle bundleA = d6.f24718a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
                Bundle bundle = new Bundle();
                Bundle bundle2 = d6.f24720c;
                if (bundle2 != null) {
                    bundle.putAll(bundle2);
                }
                if (bundleA != null) {
                    bundle.putAll(bundleA);
                }
                d6.f24720c = bundle;
                d6.f24719b = true;
                d6.b();
                return;
            default:
                A0.O.I(obj);
                throw null;
        }
    }

    public C0404p(p032e0.D d6) {
        this.f7914H = d6;
    }

    public C0404p(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        this.f7914H = abstractComponentCallbacksC0406s;
    }
}
