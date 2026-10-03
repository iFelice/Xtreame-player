package p080k0;

import D.p;
import D.t;
import android.app.Notification;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: classes.dex */
public final class c extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f25901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MediaSessionCompat.Token f25902c;

    @Override // D.p
    public final void b(t tVar) {
        int i8 = Build.VERSION.SDK_INT;
        Notification.Builder builder = tVar.f1730b;
        if (i8 >= 34) {
            a.d(builder, a.b(b.a(a.a(), null, 0, null, Boolean.FALSE), this.f25901b, this.f25902c));
        } else {
            a.d(builder, a.b(a.a(), this.f25901b, this.f25902c));
        }
    }
}
