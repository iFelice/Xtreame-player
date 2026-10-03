package C2;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public final class z implements C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1427b;

    public z(Context context, int i8) {
        this.f1426a = i8;
        if (i8 == 1) {
            this.f1427b = context.getApplicationContext();
        } else if (i8 != 2) {
            this.f1427b = context;
        } else {
            this.f1427b = context.getApplicationContext();
        }
    }

    @Override // C2.C
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        switch (this.f1426a) {
            case 0:
                break;
            case 1:
                break;
        }
        return d((Uri) obj);
    }

    @Override // C2.C
    public final /* bridge */ /* synthetic */ B b(Object obj, int i8, int i9, p173w2.l lVar) {
        switch (this.f1426a) {
            case 0:
                break;
            case 1:
                break;
        }
        return c((Uri) obj, i8, i9, lVar);
    }

    public final B c(Uri uri, int i8, int i9, p173w2.l lVar) {
        Long l4;
        int i10 = this.f1426a;
        Context context = this.f1427b;
        switch (i10) {
            case 0:
                return new B(new O2.d(uri), new y(context, uri));
            case 1:
                if (i8 == Integer.MIN_VALUE || i9 == Integer.MIN_VALUE || i8 > 512 || i9 > 384) {
                    return null;
                }
                return new B(new O2.d(uri), p181x2.c.b(context, uri, new p181x2.a(context.getContentResolver())));
            default:
                if (i8 == Integer.MIN_VALUE || i9 == Integer.MIN_VALUE || i8 > 512 || i9 > 384 || (l4 = (Long) lVar.c(F2.H.f3117d)) == null || l4.longValue() != -1) {
                    return null;
                }
                return new B(new O2.d(uri), p181x2.c.b(context, uri, new p181x2.b(context.getContentResolver())));
        }
    }

    public final boolean d(Uri uri) {
        switch (this.f1426a) {
            case 0:
                return Z3.C.d(uri);
            case 1:
                return Z3.C.d(uri) && !uri.getPathSegments().contains("video");
            default:
                return Z3.C.d(uri) && uri.getPathSegments().contains("video");
        }
    }
}
