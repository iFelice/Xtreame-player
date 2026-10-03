package D0;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.google.android.gms.internal.ads.EL;
import com.google.android.gms.internal.ads.GL;

/* JADX INFO: renamed from: D0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0115e extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContentResolver f1922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Uri f1923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1924d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0115e(Object obj, Handler handler, ContentResolver contentResolver, Uri uri, int i8) {
        super(handler);
        this.f1921a = i8;
        this.f1924d = obj;
        this.f1922b = contentResolver;
        this.f1923c = uri;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z7) {
        int i8 = this.f1921a;
        Object obj = this.f1924d;
        switch (i8) {
            case 0:
                C0116f c0116f = (C0116f) obj;
                c0116f.a(C0114d.c(c0116f.f1925a, c0116f.f1933i, c0116f.f1932h));
                break;
            default:
                GL gl = (GL) obj;
                gl.b(EL.b(gl.f13512a, gl.f13519h, gl.f13518g));
                break;
        }
    }
}
