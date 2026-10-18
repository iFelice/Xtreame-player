package D;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public final class m extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f1706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IconCompat f1707c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f1708d;

    @Override // D.p
    public final void b(t tVar) {
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(tVar.f1730b).setBigContentTitle(null);
        IconCompat iconCompat = this.f1706b;
        Context context = tVar.f1729a;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                l.a(bigContentTitle, iconCompat.j(context));
            } else if (iconCompat.g() == 1) {
                bigContentTitle = bigContentTitle.bigPicture(this.f1706b.d());
            }
        }
        if (this.f1708d) {
            IconCompat iconCompat2 = this.f1707c;
            if (iconCompat2 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else if (Build.VERSION.SDK_INT >= 23) {
                k.a(bigContentTitle, iconCompat2.j(context));
            } else if (iconCompat2.g() == 1) {
                bigContentTitle.bigLargeIcon(this.f1707c.d());
            } else {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            }
        }
        if (Build.VERSION.SDK_INT >= 31) {
            l.c(bigContentTitle, false);
            l.b(bigContentTitle, null);
        }
    }

    @Override // D.p
    public final String c() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }
}
