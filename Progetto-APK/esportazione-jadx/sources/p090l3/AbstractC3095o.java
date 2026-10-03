package p090l3;

import C2.C0091g;
import J3.f;
import S3.c;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.AbstractC1708n8;
import com.google.android.gms.internal.ads.B8;
import com.google.android.gms.internal.ads.Q7;
import p120p3.d;
import p120p3.h;

/* JADX INFO: renamed from: l3.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3095o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final X f26617a;

    static {
        X v5 = null;
        try {
            Object objNewInstance = C3093n.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (objNewInstance instanceof IBinder) {
                IBinder iBinder = (IBinder) objNewInstance;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    v5 = iInterfaceQueryLocalInterface instanceof X ? (X) iInterfaceQueryLocalInterface : new V(iBinder, "com.google.android.gms.ads.internal.client.IClientApi", 0);
                }
            } else {
                h.g("ClientApi class is not an instance of IBinder.");
            }
        } catch (Exception unused) {
            h.g("Failed to instantiate ClientApi class.");
        }
        f26617a = v5;
    }

    public abstract Object a();

    public abstract Object b(X x7);

    public abstract Object c();

    public final Object d(Context context, boolean z7) {
        boolean z8;
        Object objC;
        Object objB;
        if (!z7) {
            d dVar = C3097p.f26618f.f26619a;
            if (f.f4145b.c(context, 12451000) != 0) {
                h.b("Google Play Services is not available.");
                z7 = true;
            }
        }
        boolean z9 = false;
        boolean z10 = !(c.a(context, ModuleDescriptor.MODULE_ID) <= c.d(context, ModuleDescriptor.MODULE_ID, false));
        Q7.a(context);
        if (((Boolean) AbstractC1708n8.f20071a.l()).booleanValue()) {
            z8 = false;
        } else if (((Boolean) AbstractC1708n8.f20072b.l()).booleanValue()) {
            z8 = true;
            z9 = true;
        } else {
            z9 = z7 | z10;
            z8 = false;
        }
        X x7 = f26617a;
        Object objB2 = null;
        if (z9) {
            if (x7 != null) {
                try {
                    objB = b(x7);
                } catch (RemoteException e8) {
                    h.h("Cannot invoke local loader using ClientApi class.", e8);
                    objB = null;
                }
                if (objB == null && !z8) {
                    try {
                        objB2 = c();
                    } catch (RemoteException e9) {
                        h.h("Cannot invoke remote loader.", e9);
                    }
                    objB = objB2;
                }
            } else {
                h.g("ClientApi class cannot be loaded.");
            }
            objB = null;
            if (objB == null) {
                objB2 = c();
                objB = objB2;
            }
        } else {
            try {
                objC = c();
            } catch (RemoteException e10) {
                h.h("Cannot invoke remote loader.", e10);
                objC = null;
            }
            if (objC == null) {
                int iIntValue = ((Long) B8.f12287a.l()).intValue();
                C3097p c3097p = C3097p.f26618f;
                if (c3097p.f26623e.nextInt(iIntValue) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", 1);
                    String str = c3097p.f26622d.f28196G;
                    d dVar2 = c3097p.f26619a;
                    dVar2.getClass();
                    d.n(context, str, bundle, new C0091g(dVar2, 7));
                }
            }
            if (objC == null) {
                if (x7 != null) {
                    try {
                        objB2 = b(x7);
                    } catch (RemoteException e11) {
                        h.h("Cannot invoke local loader using ClientApi class.", e11);
                    }
                } else {
                    h.g("ClientApi class cannot be loaded.");
                }
                objB = objB2;
            } else {
                objB = objC;
            }
        }
        return objB == null ? a() : objB;
    }
}
