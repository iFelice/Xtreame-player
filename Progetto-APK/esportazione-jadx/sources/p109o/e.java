package p109o;

import android.content.ComponentName;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsService;
import com.google.android.gms.internal.ads.C1088b8;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ICustomTabsService f27586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComponentName f27587b;

    public e(ICustomTabsService iCustomTabsService, ComponentName componentName) {
        this.f27586a = iCustomTabsService;
        this.f27587b = componentName;
    }

    public final j a(C1088b8 c1088b8) {
        d dVar = new d(c1088b8);
        ICustomTabsService iCustomTabsService = this.f27586a;
        try {
            if (!iCustomTabsService.newSession(dVar)) {
                return null;
            }
            j jVar = new j();
            jVar.f27592G = new Object();
            jVar.f27593H = iCustomTabsService;
            jVar.f27594I = dVar;
            jVar.f27595J = this.f27587b;
            jVar.f27596K = null;
            return jVar;
        } catch (RemoteException unused) {
            return null;
        }
    }
}
