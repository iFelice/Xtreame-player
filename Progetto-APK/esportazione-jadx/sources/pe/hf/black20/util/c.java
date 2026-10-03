package pe.hf.black20.util;

import android.util.Log;
import p086l.C3061x;
import p135r2.i;
import p135r2.m;
import p135r2.n;
import p135r2.o;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c implements n, m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C3061x f29425a;

    public /* synthetic */ c(C3061x c3061x) {
        this.f29425a = c3061x;
    }

    @Override // p135r2.n
    public final void a(Object obj) {
        C3061x c3061x = this.f29425a;
        ((d) c3061x.f26412I).f((String) obj, (String) c3061x.f26410G);
    }

    @Override // p135r2.m
    public final void b(o oVar) {
        C3061x c3061x = this.f29425a;
        c3061x.getClass();
        try {
            i iVar = oVar.f29837G;
            if (iVar != null) {
                int i8 = iVar.f29804a;
                String str = new String(iVar.f29805b);
                Log.e("XCIPTV_TAG", "VolleyGETStringRequest - response".concat(str));
                c3061x.f26414K = str;
                ((d) c3061x.f26412I).b(i8, "failed", (String) c3061x.f26410G);
            } else {
                Log.d("XCIPTV_TAG", "VolleyGETStringRequest -- success");
                ((d) c3061x.f26412I).b(0, oVar.getMessage(), (String) c3061x.f26410G);
            }
        } catch (Exception e8) {
            Log.d("XCIPTV_TAG", "VolleyGETStringRequest -- Error" + e8.getMessage());
        }
    }
}
