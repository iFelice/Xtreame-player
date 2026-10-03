package D;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public abstract class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o f1728a;

    public void a(Bundle bundle) {
        String strC = c();
        if (strC != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", strC);
        }
    }

    public abstract void b(t tVar);

    public String c() {
        return null;
    }
}
