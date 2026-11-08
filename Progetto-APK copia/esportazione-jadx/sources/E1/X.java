package E1;

import android.os.Bundle;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Y f2681a;

    public X(Y y7) {
        this.f2681a = y7;
    }

    public static void a(String str, Bundle bundle) {
        Log.d("MediaRouteProviderProxy", "Error: " + str + ", data: " + bundle);
    }

    public final void b(Bundle bundle) {
        bundle.getString("groupableTitle");
        Y y7 = this.f2681a;
        y7.getClass();
        bundle.getString("transferableTitle");
        y7.getClass();
    }
}
