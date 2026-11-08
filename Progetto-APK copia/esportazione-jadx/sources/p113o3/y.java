package p113o3;

import android.content.Context;
import p083k3.l;
import p120p3.k;

/* JADX INFO: loaded from: classes.dex */
public final class y extends AbstractC3156n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f28003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28004c;

    public y(Context context, String str, String str2) {
        this.f28003b = new k(l.f25980A.f25983c.w(context, str));
        this.f28004c = str2;
    }

    @Override // p113o3.AbstractC3156n
    public final void a() {
        this.f28003b.c(this.f28004c);
    }
}
