package A0;

import android.content.Context;
import p094m0.C3126i;
import p094m0.InterfaceC3128k;

/* JADX INFO: renamed from: A0.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0008h implements G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3128k f147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3126i f148b;

    public C0008h(InterfaceC3128k interfaceC3128k, C3126i c3126i) {
        this.f147a = interfaceC3128k;
        this.f148b = c3126i;
    }

    @Override // A0.G
    public final K e(Context context, boolean z7) {
        return new C0011k(context, this.f147a, this.f148b);
    }
}
