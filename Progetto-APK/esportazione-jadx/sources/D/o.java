package D;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;
import java.util.ArrayList;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f1710a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f1714e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f1715f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PendingIntent f1716g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public IconCompat f1717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1718i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public p f1720k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bundle f1722m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f1724o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f1725p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Notification f1726q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final ArrayList f1727r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f1711b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f1712c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f1713d = new ArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1719j = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f1721l = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1723n = 0;

    public o(Context context, String str) {
        Notification notification = new Notification();
        this.f1726q = notification;
        this.f1710a = context;
        this.f1724o = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f1718i = 0;
        this.f1727r = new ArrayList();
        this.f1725p = true;
    }

    public static CharSequence b(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    public final Notification a() {
        Notification notificationBuild;
        Bundle bundle;
        t tVar = new t(this);
        o oVar = tVar.f1731c;
        p pVar = oVar.f1720k;
        if (pVar != null) {
            pVar.b(tVar);
        }
        int i8 = Build.VERSION.SDK_INT;
        Notification.Builder builder = tVar.f1730b;
        if (i8 < 26 && i8 < 24) {
            builder.setExtras(tVar.f1732d);
            notificationBuild = builder.build();
        } else {
            notificationBuild = builder.build();
        }
        if (pVar != null) {
            oVar.f1720k.getClass();
        }
        if (pVar != null && (bundle = notificationBuild.extras) != null) {
            pVar.a(bundle);
        }
        return notificationBuild;
    }

    public final void c(int i8) {
        Notification notification = this.f1726q;
        notification.flags = i8 | notification.flags;
    }

    public final void d(Bitmap bitmap) {
        IconCompat iconCompat;
        if (bitmap == null) {
            iconCompat = null;
        } else {
            if (Build.VERSION.SDK_INT < 27) {
                Resources resources = this.f1710a.getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
                if (bitmap.getWidth() > dimensionPixelSize || bitmap.getHeight() > dimensionPixelSize2) {
                    double dMin = Math.min(((double) dimensionPixelSize) / ((double) Math.max(1, bitmap.getWidth())), ((double) dimensionPixelSize2) / ((double) Math.max(1, bitmap.getHeight())));
                    bitmap = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dMin), (int) Math.ceil(((double) bitmap.getHeight()) * dMin), true);
                }
            }
            PorterDuff.Mode mode = IconCompat.f9002k;
            bitmap.getClass();
            IconCompat iconCompat2 = new IconCompat(1);
            iconCompat2.f9004b = bitmap;
            iconCompat = iconCompat2;
        }
        this.f1717h = iconCompat;
    }

    public final void e(p pVar) {
        if (this.f1720k != pVar) {
            this.f1720k = pVar;
            if (pVar.f1728a != this) {
                pVar.f1728a = this;
                e(pVar);
            }
        }
    }
}
