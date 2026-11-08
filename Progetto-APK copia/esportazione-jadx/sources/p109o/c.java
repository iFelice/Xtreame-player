package p109o;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.work.impl.foreground.SystemForegroundService;
import p089l2.d;
import p089l2.e;

/* JADX INFO: loaded from: classes.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27579G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f27580H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f27581I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Parcelable f27582J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f27583K;

    public c(SystemForegroundService systemForegroundService, int i8, Notification notification, int i9) {
        this.f27583K = systemForegroundService;
        this.f27580H = i8;
        this.f27582J = notification;
        this.f27581I = i9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f27579G;
        Object obj = this.f27583K;
        int i9 = this.f27580H;
        int i10 = this.f27581I;
        switch (i8) {
            case 0:
                ((d) obj).f27585H.c(i9, i10);
                break;
            default:
                int i11 = Build.VERSION.SDK_INT;
                Parcelable parcelable = this.f27582J;
                if (i11 >= 31) {
                    e.a((SystemForegroundService) obj, i9, (Notification) parcelable, i10);
                } else if (i11 < 29) {
                    ((SystemForegroundService) obj).startForeground(i9, (Notification) parcelable);
                } else {
                    d.a((SystemForegroundService) obj, i9, (Notification) parcelable, i10);
                }
                break;
        }
    }

    public c(d dVar, int i8, int i9, Bundle bundle) {
        this.f27583K = dVar;
        this.f27580H = i8;
        this.f27581I = i9;
        this.f27582J = bundle;
    }
}
