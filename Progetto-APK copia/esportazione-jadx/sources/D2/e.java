package D2;

import C2.B;
import C2.C;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import p173w2.l;

/* JADX INFO: loaded from: classes.dex */
public final class e implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C f2321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C f2322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Class f2323d;

    public e(Context context, C c8, C c9, Class cls) {
        this.f2320a = context.getApplicationContext();
        this.f2321b = c8;
        this.f2322c = c9;
        this.f2323d = cls;
    }

    @Override // C2.C
    public final boolean a(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && Z3.C.d((Uri) obj);
    }

    @Override // C2.C
    public final B b(Object obj, int i8, int i9, l lVar) {
        Uri uri = (Uri) obj;
        return new B(new O2.d(uri), new d(this.f2320a, this.f2321b, this.f2322c, uri, i8, i9, lVar, this.f2323d));
    }
}
