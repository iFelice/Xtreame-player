package D;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f1695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public IconCompat f1696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final y[] f1697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f1698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1699e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f1700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f1701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f1702h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f1703i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PendingIntent f1704j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f1705k;

    public j(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, y[] yVarArr, y[] yVarArr2, boolean z7, int i8, boolean z8, boolean z9, boolean z10) {
        this.f1699e = true;
        this.f1696b = iconCompat;
        if (iconCompat != null && iconCompat.g() == 2) {
            this.f1702h = iconCompat.e();
        }
        this.f1703i = o.b(charSequence);
        this.f1704j = pendingIntent;
        this.f1695a = bundle == null ? new Bundle() : bundle;
        this.f1697c = yVarArr;
        this.f1698d = z7;
        this.f1700f = i8;
        this.f1699e = z8;
        this.f1701g = z9;
        this.f1705k = z10;
    }
}
