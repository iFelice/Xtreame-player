package D;

import android.app.Notification;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class n extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f1709b;

    @Override // D.p
    public final void a(Bundle bundle) {
        super.a(bundle);
    }

    @Override // D.p
    public final void b(t tVar) {
        new Notification.BigTextStyle(tVar.f1730b).setBigContentTitle(null).bigText(this.f1709b);
    }

    @Override // D.p
    public final String c() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }
}
