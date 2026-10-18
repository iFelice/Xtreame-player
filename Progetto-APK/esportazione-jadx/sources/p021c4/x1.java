package p021c4;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import p079k.RunnableC3015g;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x1 implements U, H1 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ A1 f11406G;

    public /* synthetic */ x1(A1 a8) {
        this.f11406G = a8;
    }

    @Override // p021c4.U
    public final void a(String str, int i8, Throwable th, byte[] bArr, Map map) {
        this.f11406G.q(str, i8, th, bArr, map);
    }

    @Override // p021c4.H1
    public final void b(String str, String str2, Bundle bundle) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        A1 a8 = this.f11406G;
        if (!zIsEmpty) {
            a8.d().x(new RunnableC3015g(this, str, str2, bundle, 17));
            return;
        }
        C0597l0 c0597l0 = a8.f10663R;
        if (c0597l0 != null) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11039L.b(str2, "AppId not known when logging event");
        }
    }
}
